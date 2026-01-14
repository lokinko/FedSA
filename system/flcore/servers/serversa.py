import time
import numpy as np
import torch
import torch.nn as nn
import torch.nn.functional as F

from flcore.clients.clientsa import clientSA
from flcore.servers.serverbase import Server
from flcore.clients.clientbase import load_item, save_item
from utils.data_utils import read_client_data
from threading import Thread
from collections import defaultdict

from mmcv.cnn import ConvModule
from mmcv.cnn import build_norm_layer


class FedSA(Server):
    def __init__(self, args, times):
        super().__init__(args, times)

        # select slow clients
        self.set_slow_clients()
        self.set_clients(clientSA)

        print(f"\nJoin ratio / total clients: {self.join_ratio} / {self.num_clients}")
        print("Finished creating server and clients.")

        # FedSA hyper-parameters
        print("=" * 50)
        print("FedSA Hyper-parameters")
        print("Anchor-based Regularization: {}".format(args.lamda))
        print("Anchor-based Margin-enhanced Contrastive Learning: {}".format(args.margin_contrastive))
        print("Anchor-based Classifier Calibration: {}".format(args.classifier_calibration))
        print("=" * 50)

        # self.load_model()
        self.Budget = []

        # ----- Proto ----- #
        self.num_classes = args.num_classes
        self.global_protos = [None for _ in range(args.num_classes)]

        # ----- SA ----- #
        # C X D
        self.class_numbers = args.num_classes
        self.feat_channel = args.feature_dim

        norm_cfg = {'type': 'SyncBN', 'requires_grad': True}
        self.projecter_linear = nn.Sequential(nn.Linear(self.feat_channel, self.feat_channel),
                                              build_norm_layer(norm_cfg, self.feat_channel)[1],
                                              nn.ReLU(inplace=True),
                                              nn.Linear(self.feat_channel, self.feat_channel),
                                              build_norm_layer(norm_cfg, self.feat_channel)[1],
                                              nn.ReLU(inplace=True))

        self.random_center = torch.randn(self.class_numbers, self.feat_channel)
        self.semantic_anchors = self.projecter_linear(self.random_center).detach().to(self.device)

    def train(self):
        # Initialize and calculate margin
        self.send_semantic_anchors()
        self.cal_class_margins(self.semantic_anchors)

        for i in range(self.global_rounds + 1):
            s_t = time.time()
            self.selected_clients = self.select_clients()

            if i % self.eval_gap == 0:
                print(f"\n-------------Round number: {i}-------------")
                print("\nEvaluate heterogeneous models")
                self.evaluate()

            for client in self.selected_clients:
                client.train()

            # threads = [Thread(target=client.train)
            #            for client in self.selected_clients]
            # [t.start() for t in threads]
            # [t.join() for t in threads]

            self.receive_protos()
            # self.global_protos = proto_aggregation(self.uploaded_protos)
            self.update_semantic_anchors()
            self.send_semantic_anchors()

            anchors = self.proto2anchors(self.global_protos)
            print("=" * 50)
            print(" Prototypes ")
            self.cal_class_margins(anchors)

            print("=" * 50)
            print(" Semantic anchors ")
            self.cal_class_margins(self.semantic_anchors)

            self.Budget.append(time.time() - s_t)
            print('-' * 50, self.Budget[-1])

            if self.auto_break and self.check_done(acc_lss=[self.rs_test_acc], top_cnt=self.top_cnt):
                break

        print("\nBest accuracy.")
        # self.print_(max(self.rs_test_acc), max(
        #     self.rs_train_acc), min(self.rs_train_loss))
        print(max(self.rs_test_acc))
        print(sum(self.Budget[1:]) / len(self.Budget[1:]))

        self.save_results()

    def send_semantic_anchors(self):
        assert (len(self.clients) > 0)

        for client in self.clients:
            client.set_semantic_anchors(self.semantic_anchors)

    def receive_protos(self):
        assert (len(self.selected_clients) > 0)

        self.uploaded_ids = []
        uploaded_protos = []
        for client in self.selected_clients:
            self.uploaded_ids.append(client.id)
            protos = load_item(client.role, 'protos', client.save_folder_name)
            uploaded_protos.append(protos)

        self.global_protos = proto_aggregation(uploaded_protos)
        save_item(self.global_protos, self.role, 'global_protos', self.save_folder_name)

    def proto2anchors(self, global_protos):
        class_numbers = self.class_numbers
        feat_channel = self.feat_channel

        anchors = torch.zeros(class_numbers, feat_channel)
        for label in global_protos.keys():
            anchors[label] = global_protos[label]

        return anchors

    def update_semantic_anchors(self):
        for label in self.global_protos.keys():
            self.semantic_anchors[label] = nn.Parameter(
                0.9999 * self.semantic_anchors[label] + 0.0001 * self.global_protos[label]).requires_grad_(False)

    def cal_class_margins(self, anchors):
        # 计算距离矩阵
        dist_matrix = torch.cdist(anchors, anchors, p=2)

        # 将距离矩阵对角线设置为无穷大，忽略自身距离
        dist_matrix.fill_diagonal_(float('inf'))

        # 找到每个类别的最小边距
        min_margins = torch.min(dist_matrix, dim=1).values
        min_margin = torch.min(min_margins)
        max_margin = torch.max(min_margins)
        avg_margin = torch.mean(min_margins)  # 计算平均边距

        # 输出距离矩阵
        print("Distance Matrix:")
        print(dist_matrix)

        # # 输出类别间的最小边距
        # print("\nClass-wise Minimum Distances:")
        # for i, margin in enumerate(min_margins):
        #     print(f"Class {i} min margin: {margin.item():.4f}")

        # 打印最小、平均和最大边距
        print('\nMin Margin:', min_margin.item())
        print('Avg Margin:', avg_margin.item())
        print('Max Margin:', max_margin.item())


# https://github.com/yuetan031/fedproto/blob/main/lib/utils.py#L221
def proto_aggregation(local_protos_list):
    agg_protos_label = defaultdict(list)
    for local_protos in local_protos_list:
        for label in local_protos.keys():
            agg_protos_label[label].append(local_protos[label])

    for [label, proto_list] in agg_protos_label.items():
        if len(proto_list) > 1:
            proto = 0 * proto_list[0].data
            for i in proto_list:
                proto += i.data
            agg_protos_label[label] = proto / len(proto_list)
        else:
            agg_protos_label[label] = proto_list[0].data

    return agg_protos_label
