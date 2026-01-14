import copy
import torch
import torch.nn as nn
import torch.nn.functional as F
import numpy as np
import time
from flcore.clients.clientbase import Client, load_item, save_item
from collections import defaultdict


class clientSA(Client):
    def __init__(self, args, id, train_samples, test_samples, **kwargs):
        super().__init__(args, id, train_samples, test_samples, **kwargs)
        torch.manual_seed(0)

        # ----- Proto ----- #
        self.loss_mse = nn.MSELoss()
        self.protos = None

        # ----- SA ----- #
        self.semantic_anchors = None
        self.local_gap = 0.0
        self.global_gap = 0.0

        self.lamda = args.lamda
        self.mcl = args.margin_contrastive
        self.cc = args.classifier_calibration

    def train(self):
        trainloader = self.load_train_data()
        model = load_item(self.role, 'model', self.save_folder_name)
        # global_protos = load_item('Server', 'global_protos', self.save_folder_name)
        optimizer = torch.optim.SGD(model.parameters(), lr=self.learning_rate)
        # model.to(self.device)
        model.train()

        start_time = time.time()

        self.cal_local_gap()
        self.cal_global_gap()

        max_local_epochs = self.local_epochs
        if self.train_slow:
            max_local_epochs = np.random.randint(1, max_local_epochs // 2)

        protos = defaultdict(list)
        for step in range(max_local_epochs):
            for i, (x, y) in enumerate(trainloader):
                if type(x) == type([]):
                    x[0] = x[0].to(self.device)
                else:
                    x = x.to(self.device)
                y = y.to(self.device)
                if self.train_slow:
                    time.sleep(0.1 * np.abs(np.random.rand()))
                rep = model.base(x)
                output = model.head(rep)
                loss = self.loss(output, y)

                # RMCL+CC
                anchors_loss, sa_ce_mat = self.cal_anchors_loss(rep, model, y)
                loss += anchors_loss

                for i, yy in enumerate(y):
                    y_c = yy.item()
                    protos[y_c].append(rep[i, :].detach().data)

                optimizer.zero_grad()
                loss.backward()
                optimizer.step()

        # self.collect_protos()
        self.protos = agg_func(protos)

        save_item(self.protos, self.role, 'protos', self.save_folder_name)
        save_item(model, self.role, 'model', self.save_folder_name)

        self.train_time_cost['num_rounds'] += 1
        self.train_time_cost['total_cost'] += time.time() - start_time

    def set_semantic_anchors(self, semantic_anchors):
        self.semantic_anchors = semantic_anchors.to(self.device)

    def cal_local_gap(self):
        all_anchors = []
        if self.protos != None:
            for key, anchor in self.protos.items():
                all_anchors.append(anchor)
            if len(all_anchors) > 1:  #
                anchors_tensor = torch.stack(all_anchors)
                dist_matrix = torch.cdist(anchors_tensor, anchors_tensor, p=2)
                dist_matrix.fill_diagonal_(float('inf'))
                min_margins = torch.min(dist_matrix, dim=1).values
                avg_margin = torch.mean(min_margins)

                self.local_gap = avg_margin
            else:
                self.local_gap = float('-inf')

    def cal_global_gap(self):
        global_dist_matrix = torch.cdist(self.semantic_anchors, self.semantic_anchors, p=2)
        global_dist_matrix.fill_diagonal_(float('inf'))
        global_min_margins = torch.min(global_dist_matrix, dim=1).values
        global_avg_margin = torch.mean(global_min_margins)
        self.global_gap = global_avg_margin

    def cal_anchors_loss(self, feats, model, y):
        # -----Anchor-based Classifier Calibration----- #
        sa_lbl = torch.arange(self.num_classes).to(self.device)
        sa_logits = model.head(self.semantic_anchors)
        loss_c = self.loss(sa_logits, sa_lbl)
        sa_ce_mat = F.cross_entropy(sa_logits, sa_lbl, reduction='none')
        loss = loss_c * self.cc

        # -----Anchor-based Regularization----- #
        lbl = None
        for i, item in enumerate(y):
            item_tensor = torch.tensor(item).unsqueeze(0)
            if i == 0:
                lbl = item_tensor
            else:
                lbl = torch.cat((lbl, item_tensor), dim=0)
        loss += self.loss_mse(feats, self.semantic_anchors[lbl]) * self.lamda

        # -----Anchor-based Margin-enhanced Contrastive Learning----- #
        loss += self.cal_mcl_loss(feats, y) * self.mcl

        return loss, sa_ce_mat

    def cal_mcl_loss(self, feats, y):
        features_square = torch.sum(torch.pow(feats, 2), 1, keepdim=True)
        centers_square = torch.sum(torch.pow(self.semantic_anchors, 2), 1, keepdim=True)
        features_into_centers = torch.matmul(feats, self.semantic_anchors.T)
        dist = features_square - 2 * features_into_centers + centers_square.T
        dist = torch.sqrt(dist)

        one_hot = F.one_hot(y, self.num_classes).to(self.device)
        gap = max(self.local_gap, self.global_gap)
        dist = dist + one_hot * gap
        loss = self.loss(-dist, y)

        return loss

    def test_metrics(self):
        testloader = self.load_test_data()
        model = load_item(self.role, 'model', self.save_folder_name)
        global_protos = load_item('Server', 'global_protos', self.save_folder_name)
        model.eval()

        test_acc = 0
        test_num = 0

        if global_protos is not None:
            with torch.no_grad():
                for x, y in testloader:
                    if type(x) == type([]):
                        x[0] = x[0].to(self.device)
                    else:
                        x = x.to(self.device)
                    y = y.to(self.device)
                    rep = model.base(x)

                    output = float('inf') * torch.ones(y.shape[0], self.num_classes).to(self.device)
                    for i, r in enumerate(rep):
                        for j, pro in global_protos.items():
                            if type(pro) != type([]):
                                output[i, j] = self.loss_mse(r, pro)

                    test_acc += (torch.sum(torch.argmin(output, dim=1) == y)).item()
                    test_num += y.shape[0]

            return test_acc, test_num, 0
        else:
            return 0, 1e-5, 0

    def train_metrics(self):
        trainloader = self.load_train_data()
        model = load_item(self.role, 'model', self.save_folder_name)
        global_protos = load_item('Server', 'global_protos', self.save_folder_name)
        # model.to(self.device)
        model.eval()

        train_num = 0
        losses = 0
        with torch.no_grad():
            for x, y in trainloader:
                if type(x) == type([]):
                    x[0] = x[0].to(self.device)
                else:
                    x = x.to(self.device)
                y = y.to(self.device)
                rep = model.base(x)
                output = model.head(rep)
                loss = self.loss(output, y)

                if global_protos is not None:
                    proto_new = copy.deepcopy(rep.detach())
                    for i, yy in enumerate(y):
                        y_c = yy.item()
                        if type(global_protos[y_c]) != type([]):
                            proto_new[i, :] = global_protos[y_c].data
                    loss += self.loss_mse(proto_new, rep) * self.lamda
                train_num += y.shape[0]
                losses += loss.item() * y.shape[0]

        return losses, train_num


# https://github.com/yuetan031/fedproto/blob/main/lib/utils.py#L205
def agg_func(protos):
    """
    Returns the average of the weights.
    """

    for [label, proto_list] in protos.items():
        if len(proto_list) > 1:
            proto = 0 * proto_list[0].data
            for i in proto_list:
                proto += i.data
            protos[label] = proto / len(proto_list)
        else:
            protos[label] = proto_list[0]

    return protos
