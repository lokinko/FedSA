# FedSA: A Unified Representation Learning via Semantic Anchors for Prototype-based Federated Learning

This repository followed with the [PFllib](https://github.com/TsingZ0/PFLlib) repository, contains the official implementation of **FedSA**, a federated learning framework that leverages semantic anchors for unified representation learning in prototype-based federated learning scenarios. This work was accepted as an **Oral** paper at **AAAI 2025**.


## Installation

### Environment Setup

We recommend using conda to set up the environment. The required dependencies are specified in `env_cuda_latest.yaml`.

```bash
# Create conda environment
conda env create -f env_cuda_latest.yaml

# Activate the environment
conda activate fl
```

### Dependencies

The main dependencies include:
- Python 3.x
- PyTorch 2.0.1
- torchvision, torchaudio, torchtext
- Additional packages: pandas, scikit-learn, scipy, matplotlib, seaborn, h5py, etc.

For a complete list of dependencies, please refer to `env_cuda_latest.yaml`.

## Usage

### Basic Command Structure

The main entry point is `system/main.py`. The basic command structure is:

```bash
python system/main.py [OPTIONS]
```

### Running FedSA

To run FedSA with default parameters:

```bash
python system/main.py -algo FedSA
```

To run FedSA with custom parameters:

```bash
python system/main.py -algo FedSA -data Cifar100 -m HtM10 -nc 20 -nb 100 -lr 0.01 -lbs 10 -ls 1 -gr 2000 -mcl 1.0 -cc 1.0 -did 0
```

### Example Commands

**Example 1: FedSA on CIFAR-100 with heterogeneous model ensemble**

```bash
python system/main.py -algo FedSA -data Cifar100 -m HtM10 -nc 20 -nb 100 -lr 0.01 -lbs 10 -ls 1 -gr 2000 -mcl 1.0 -cc 1.0 -t 3 -ab 1 -did 0
```

**Example 2: FedSA on MNIST with ResNet18**

```bash
python system/main.py -algo FedSA -data mnist -m Resnet18 -nc 10 -nb 10 -lr 0.005 -lbs 10 -ls 1 -gr 1000 -mcl 1.0 -cc 1.0
```

**Example 3: Running other algorithms for comparison**

```bash
# FedProto
python system/main.py -algo FedProto -data Cifar100 -m HtM10 -lam 10

# FedGen
python system/main.py -algo FedGen -data Cifar100 -m HtM10 -nd 32 -glr 0.1 -hd 512 -se 100

# FedDistill
python system/main.py -algo FedDistill -data Cifar100 -m HtM10 -lam 1
```

## Parameters

### FedSA-Specific Parameters

| Short | Long | Type | Default | Description |
|-------|------|------|---------|-------------|
| `-mcl` | `--margin_contrastive` | float | 1.0 | Margin parameter for contrastive learning in FedSA |
| `-cc` | `--classifier_calibration` | float | 1.0 | Classifier calibration coefficient in FedSA |

### General Training Parameters

| Short | Long | Type | Default | Description |
|-------|------|------|---------|-------------|
| `-go` | `--goal` | str | "test" | The goal/identifier for this experiment |
| `-dev` | `--device` | str | "cuda" | Computing device: "cpu" or "cuda" |
| `-did` | `--device_id` | str | "0" | CUDA device ID to use |
| `-data` | `--dataset` | str | "mnist" | Dataset name (e.g., "mnist", "Cifar10", "Cifar100") |
| `-nb` | `--num_classes` | int | 10 | Number of classes in the dataset |
| `-m` | `--model_family` | str | "cnn" | Model family/architecture (see Model Families section) |
| `-lbs` | `--batch_size` | int | 10 | Local batch size for training |
| `-lr` | `--local_learning_rate` | float | 0.005 | Local learning rate for client training |
| `-ld` | `--learning_rate_decay` | bool | False | Whether to apply learning rate decay |
| `-ldg` | `--learning_rate_decay_gamma` | float | 0.99 | Learning rate decay gamma (if decay enabled) |
| `-gr` | `--global_rounds` | int | 2000 | Total number of global communication rounds |
| `-ls` | `--local_epochs` | int | 1 | Number of local training epochs per round |
| `-algo` | `--algorithm` | str | "FedAvg" | Federated learning algorithm (see Supported Algorithms) |
| `-jr` | `--join_ratio` | float | 1.0 | Ratio of clients participating in each round (0.0-1.0) |
| `-rjr` | `--random_join_ratio` | bool | False | Whether to use random join ratio per round |
| `-nc` | `--num_clients` | int | 2 | Total number of clients in the federation |
| `-pv` | `--prev` | int | 0 | Previous running times (for resuming experiments) |
| `-t` | `--times` | int | 1 | Number of independent runs to average results |
| `-eg` | `--eval_gap` | int | 1 | Rounds gap between evaluations |
| `-sfn` | `--save_folder_name` | str | "temp" | Folder name for saving results |
| `-ab` | `--auto_break` | bool | False | Whether to automatically stop training when converged |
| `-fd` | `--feature_dim` | int | 512 | Feature dimension (for NLP and some models) |
| `-vs` | `--vocab_size` | int | 98635 | Vocabulary size (for NLP models) |
| `-ml` | `--max_len` | int | 200 | Maximum sequence length (for NLP models) |

### Practical Simulation Parameters

| Short | Long | Type | Default | Description |
|-------|------|------|---------|-------------|
| `-cdr` | `--client_drop_rate` | float | 0.0 | Rate of clients that train but drop out before sending updates |
| `-tsr` | `--train_slow_rate` | float | 0.0 | Rate of slow clients during local training |
| `-ssr` | `--send_slow_rate` | float | 0.0 | Rate of slow clients when sending global model |
| `-ts` | `--time_select` | bool | False | Whether to select clients based on time cost |
| `-tth` | `--time_threthold` | float | 10000 | Time threshold for dropping slow clients |


## Citation

If you find this work useful in your research, please cite:

```bibtex
@inproceedings{zhou2025fedsa,
  title={Fedsa: A unified representation learning via semantic anchors for prototype-based federated learning},
  author={Zhou, Yanbing and Qu, Xiangmou and You, Chenlong and Zhou, Jiyang and Tang, Jingyue and Zheng, Xin and Cai, Chunmao and Wu, Yingbo},
  booktitle={Proceedings of the AAAI Conference on Artificial Intelligence},
  volume={39},
  number={21},
  pages={23009--23017},
  year={2025}
}
```

## License

Please refer to the LICENSE file for details.

## Contact

For questions and issues, please open an issue on the repository.

