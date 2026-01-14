import copy
import torch
import torch.nn as nn
import torch.nn.functional as F
import numpy as np
import time
from flcore.clients.clientbase import Client, load_item, save_item
from collections import defaultdict


class clientPCL(Client):
    def __init__(self, args, id, train_samples, test_samples, **kwargs):
        super().__init__(args, id, train_samples, test_samples, **kwargs)
        torch.manual_seed(0)

        self.loss_mse = nn.MSELoss()

        self.protos = None
        self.global_protos = None
        self.client_protos_set = None

        self.tau = args.tau

    def train(self):

        print("{} check global protos : {}".format(self.id, self.check_empty_prototypes()))

        if self.protos is not None and self.check_empty_prototypes() == True:
            print("{} is trainging".format(self.id))
            trainloader = self.load_train_data()
            model = load_item(self.role, 'model', self.save_folder_name)
            # global_protos = load_item('Server', 'global_protos', self.save_folder_name)
            optimizer = torch.optim.SGD(model.parameters(), lr=self.learning_rate)
            # model.to(self.device)
            model.train()

            start_time = time.time()

            max_local_epochs = self.local_epochs
            if self.train_slow:
                max_local_epochs = np.random.randint(1, max_local_epochs // 2)

            for step in range(max_local_epochs):
                global_protos_emb = []
                for k in self.global_protos.keys():
                    assert (type(self.global_protos[k]) != type([]))
                    global_protos_emb.append(self.global_protos[k])
                global_protos_emb = torch.stack(global_protos_emb)

                client_protos_embs = []
                for client_protos in self.client_protos_set:
                    client_protos_emb = []
                    for k in client_protos.keys():
                        client_protos_emb.append(client_protos[k])
                    client_protos_emb = torch.stack(client_protos_emb)
                    client_protos_embs.append(client_protos_emb)

                for i, (x, y) in enumerate(trainloader):
                    if type(x) == type([]):
                        x[0] = x[0].to(self.device)
                    else:
                        x = x.to(self.device)
                    y = y.to(self.device)
                    if self.train_slow:
                        time.sleep(0.1 * np.abs(np.random.rand()))

                    rep = model.base(x)
                    rep = F.normalize(rep, dim=1)

                    # benefit from GPU acceleration using torch.matmul
                    similarity = torch.matmul(rep, global_protos_emb.T) / self.tau
                    L_g = self.loss(similarity, y)

                    L_p = 0
                    for client_protos_emb in client_protos_embs:
                        similarity = torch.matmul(rep, client_protos_emb.T) / self.tau
                        L_p += self.loss(similarity, y) / len(self.client_protos_set)

                    loss = L_g + L_p

                    optimizer.zero_grad()
                    loss.backward()
                    torch.nn.utils.clip_grad_norm_(model.parameters(), 10)
                    optimizer.step()

            self.collect_protos()
            save_item(self.protos, self.role, 'protos', self.save_folder_name)
            save_item(model, self.role, 'model', self.save_folder_name)

            self.train_time_cost['num_rounds'] += 1
            self.train_time_cost['total_cost'] += time.time() - start_time

        else:
            print("{} is collecting".format(self.id))
            self.collect_protos()
            save_item(self.protos, self.role, 'protos', self.save_folder_name)

    def set_protos(self, global_protos, client_protos_set):
        self.global_protos = global_protos
        self.client_protos_set = client_protos_set

    def collect_protos(self):
        trainloader = self.load_train_data()
        model = load_item(self.role, 'model', self.save_folder_name)
        model.eval()

        protos = defaultdict(list)
        with torch.no_grad():
            for i, (x, y) in enumerate(trainloader):
                if type(x) == type([]):
                    x[0] = x[0].to(self.device)
                else:
                    x = x.to(self.device)
                y = y.to(self.device)
                if self.train_slow:
                    time.sleep(0.1 * np.abs(np.random.rand()))
                rep = model.base(x)
                rep = F.normalize(rep, dim=1)

                for i, yy in enumerate(y):
                    y_c = yy.item()
                    protos[y_c].append(rep[i, :].detach().data)

        self.protos = agg_func(protos)

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
        if self.protos is not None:
            with torch.no_grad():
                global_protos_emb = []
                for k in self.global_protos.keys():
                    global_protos_emb.append(self.global_protos[k])
                global_protos_emb = torch.stack(global_protos_emb)

                client_protos_embs = []
                for client_protos in self.client_protos_set:
                    client_protos_emb = []
                    for k in client_protos.keys():
                        client_protos_emb.append(client_protos[k])
                    client_protos_emb = torch.stack(client_protos_emb)
                    client_protos_embs.append(client_protos_emb)

                for x, y in trainloader:
                    if type(x) == type([]):
                        x[0] = x[0].to(self.device)
                    else:
                        x = x.to(self.device)
                    y = y.to(self.device)
                    rep = model(x)
                    rep = F.normalize(rep, dim=1)

                    # benefit from GPU acceleration using torch.matmul
                    similarity = torch.matmul(rep, global_protos_emb.T) / self.tau
                    L_g = self.loss(similarity, y)

                    L_p = 0
                    for client_protos_emb in client_protos_embs:
                        similarity = torch.matmul(rep, client_protos_emb.T) / self.tau
                        L_p += self.loss(similarity, y) / len(self.client_protos_set)

                    loss = L_g + L_p

                    train_num += y.shape[0]
                    losses += loss.item() * y.shape[0]

            # self.model.cpu()
            # self.save_model(self.model, 'model')

            return losses, train_num
        else:
            return 0, 1e-5

    def check_empty_prototypes(self):
        empty = []
        if self.global_protos == None:
            return False
        for key in range(self.num_classes):
            if key not in self.global_protos or self.global_protos[key] == []:
                empty.append(key)

        if len(empty) != 0:
            return empty
        else:
            return True


# https://github.com/yuetan031/FedPCL/blob/main/lib/utils.py#L1139
def agg_func(protos):
    for [label, proto_list] in protos.items():
        if len(proto_list) > 1:
            proto = 0 * proto_list[0].data
            for i in proto_list:
                proto += i.data
            protos[label] = proto / len(proto_list)
        else:
            protos[label] = proto_list[0]

    return protos
