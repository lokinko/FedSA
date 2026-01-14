import time
import numpy as np
from flcore.clients.clientpcl import clientPCL
from flcore.servers.serverbase import Server
from flcore.clients.clientbase import load_item, save_item
from utils.data_utils import read_client_data
from threading import Thread
from collections import defaultdict


class FedPCL(Server):
    def __init__(self, args, times):
        super().__init__(args, times)

        # select slow clients
        self.set_slow_clients()
        self.set_clients(clientPCL)

        print(f"\nJoin ratio / total clients: {self.join_ratio} / {self.num_clients}")
        print("Finished creating server and clients.")

        # self.load_model()
        self.Budget = []
        # ----- PCL ----- #
        self.num_classes = args.num_classes
        self.global_protos = [None for _ in range(args.num_classes)]
        self.client_protos_set = [None for _ in range(self.num_clients)]

    def train(self):
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
            self.prototype_padding()
            self.send_protos()

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

    def send_protos(self):
        assert (len(self.clients) > 0)

        for client in self.clients:
            client.set_protos(self.global_protos, self.client_protos_set)

    def receive_protos(self):
        assert (len(self.selected_clients) > 0)

        self.uploaded_ids = []
        uploaded_protos = []
        for client in self.selected_clients:
            self.uploaded_ids.append(client.id)
            protos = load_item(client.role, 'protos', client.save_folder_name)
            uploaded_protos.append(protos)
            self.client_protos_set[client.id] = protos

        # load previous global protos
        prev_global_protos = self.global_protos.copy()
        self.global_protos = proto_aggregation(uploaded_protos)

        print("before self.global_protos status: {}".format(self.check_empty_prototypes()))
        print("len = {}".format(len(self.global_protos)))

        if prev_global_protos[0] != None:
            # check_empty_prototypes
            empty = self.check_empty_prototypes()
            if empty != True:
                for label in empty:
                    self.global_protos[label] = prev_global_protos[label]

        save_item(self.global_protos, self.role, 'global_protos', self.save_folder_name)

        print("after self.global_protos status: {}".format(self.check_empty_prototypes()))
        print("len = {}".format(len(self.global_protos)))


    def prototype_padding(self):
        for cid in range(self.num_clients):
            if self.client_protos_set[cid] is None:
                self.client_protos_set[cid] = self.global_protos
            else:
                for k in range(self.num_classes):
                    if type(self.client_protos_set[cid][k]) == type([]):
                        self.client_protos_set[cid][k] = self.global_protos[k]

    def check_empty_prototypes(self):
        empty = []
        for key in range(self.num_classes):
            if key not in self.global_protos:
                empty.append(key)

        if len(empty) != 0:
            return empty
        else:
            return True


# https://github.com/yuetan031/FedPCL/blob/main/lib/utils.py#L1193
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
