# FedSA
# -lam 10 -mcl 1.0 -cc 1.0

# =============== HtFE8 =============== #
# ===== Cifar10 ===== #
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 10 -data Cifar10 -m HtFE8 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > total-Cifar10-HtFE8-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 10 -data Cifar10 -m HtFE8 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > total-Cifar10-HtFE8-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 10 -data Cifar10 -m HtFE8 -fd 512 -algo FML -gr 1000 -did 0 -al 0.5 -bt 0.5 > total-Cifar10-HtFE8-fd=512-FML.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 10 -data Cifar10 -m HtFE8 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > total-Cifar10-HtFE8-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 10 -data Cifar10 -m HtFE8 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 0.1 > total-Cifar10-HtFE8-fd=512-FedDistill0.1.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 10 -data Cifar10 -m HtFE8 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 10 > total-Cifar10-HtFE8-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 10 -data Cifar10 -m HtFE8 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > total-Cifar10-HtFE8-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 10 -data Cifar10 -m HtFE8 -fd 512 -algo FedSA -gr 1000 -did 0 -lam 10 -mcl 1.0 -cc 1.0 > total-Cifar10-HtFE8-fd=512-FedSA_lam10.0_mcl1.0_cc1.0.out 2>&1 &

# Test -lam 1 5 10 20
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 10 -data Cifar10 -m HtFE8 -fd 512 -algo FedSA -gr 1000 -did 0 -lam 1.0 -mcl 1.0 -cc 1.0 > total-Cifar10-HtFE8-fd-512-FedSA_lam1.0_mcl1.0_cc1.0.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 10 -data Cifar10 -m HtFE8 -fd 512 -algo FedSA -gr 1000 -did 0 -lam 5.0 -mcl 1.0 -cc 1.0 > total-Cifar10-HtFE8-fd-512-FedSA_lam5.0_mcl1.0_cc1.0.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 10 -data Cifar10 -m HtFE8 -fd 512 -algo FedSA -gr 1000 -did 0 -lam 20.0 -mcl 1.0 -cc 1.0 > total-Cifar10-HtFE8-fd-512-FedSA_lam20.0_mcl1.0_cc1.0.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 10 -data Cifar10 -m HtFE8 -fd 512 -algo FedSA -gr 1000 -did 0 -lam 10 -mcl 0.1 -cc 1.0 > total-Cifar10-HtFE8-fd=512-FedSA_lam10.0_mcl0.1_cc1.0.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 10 -data Cifar10 -m HtFE8 -fd 512 -algo FedSA -gr 1000 -did 0 -lam 10 -mcl 0.5 -cc 1.0 > total-Cifar10-HtFE8-fd=512-FedSA_lam10.0_mcl0.5_cc1.0.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 10 -data Cifar10 -m HtFE8 -fd 512 -algo FedSA -gr 1000 -did 0 -lam 10 -mcl 0.1 -cc 1.0 > total-Cifar10-HtFE8-fd-512-FedSA_lam10.0_mcl0.1_cc1.0.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 10 -data Cifar10 -m HtFE8 -fd 512 -algo FedPCL -gr 1000 -did 0 -tau 0.07 > total-Cifar10-HtFE8-fd=512-FedPCL.out 2>&1 &

# ===== Cifar100 ===== #
# === HtFE8 === #
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > total-Cifar100-HtFE8-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > total-Cifar100-HtFE8-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FML -gr 1000 -did 0 -al 0.5 -bt 0.5 > total-Cifar100-HtFE8-fd=512-FML.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > total-Cifar100-HtFE8-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 0.1 > total-Cifar100-HtFE8-fd=512-FedDistill0.1.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 10 > total-Cifar100-HtFE8-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > total-Cifar100-HtFE8-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedSA -gr 1000 -did 0 -lam 10 -mcl 1.0 -cc 1.0 > total-Cifar100-HtFE8-fd=512-FedSA_lam10.0_mcl1.0_cc1.0.out 2>&1 &

# Test -lam 1 5 10 20
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 1.0 > total-Cifar100-HtFE8-fd=512-FedProto1.0.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 5.0 > total-Cifar100-HtFE8-fd=512-FedProto5.0.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 20.0 > total-Cifar100-HtFE8-fd=512-FedProto20.0.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 1.0 -se 100 -mart 100 > total-Cifar100-HtFE8-fd=512-FedTGP1.0.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 5.0 -se 100 -mart 100 > total-Cifar100-HtFE8-fd=512-FedTGP5.0.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 20.0 -se 100 -mart 100 > total-Cifar100-HtFE8-fd=512-FedTGP20.0.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedSA -gr 1000 -did 0 -lam 1.0 -mcl 1.0 -cc 1.0 > total-Cifar100-HtFE8-fd=512-FedSA_lam1.0_mcl1.0_cc1.0.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedSA -gr 1000 -did 0 -lam 5.0 -mcl 1.0 -cc 1.0 > total-Cifar100-HtFE8-fd=512-FedSA_lam5.0_mcl1.0_cc1.0.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedSA -gr 1000 -did 0 -lam 20.0 -mcl 1.0 -cc 1.0 > total-Cifar100-HtFE8-fd=512-FedSA_lam20.0_mcl1.0_cc1.0.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedPCL -gr 1000 -did 0 -tau 0.07 > total-Cifar100-HtFE8-fd=512-FedPCL.out 2>&1 &

# -nc 20 - jr 1.0
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo LG-FedAvg -gr 200 -did 0 > total-Cifar100-HtFE8-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedGen -gr 200 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > total-Cifar100-HtFE8-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FML -gr 200 -did 0 -al 0.5 -bt 0.5 > total-Cifar100-HtFE8-fd=512-FML.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedKD -gr 200 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > total-Cifar100-HtFE8-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedDistill -gr 200 -did 0 -lam 0.1 > total-Cifar100-HtFE8-fd=512-FedDistill0.1.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedProto -gr 200 -did 0 -lam 10 > total-Cifar100-HtFE8-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedTGP -gr 200 -did 0 -lam 10 -se 100 -mart 100 > total-Cifar100-HtFE8-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedSA -gr 200 -did 0 -lam 10 -mcl 1.0 -cc 1.0 > total-Cifar100-HtFE8-fd=512-FedSA_lam10.0_mcl1.0_cc1.0.out 2>&1 &


# === HtFE2 === #
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > total-Cifar100-HtFE2-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > total-Cifar100-HtFE2-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FML -gr 1000 -did 0 -al 0.5 -bt 0.5 > total-Cifar100-HtFE2-fd=512-FML.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > total-Cifar100-HtFE2-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 0.1 > total-Cifar100-HtFE2-fd=512-FedDistill0.1.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 10 > total-Cifar100-HtFE2-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > total-Cifar100-HtFE2-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedSA -gr 1000 -did 0 -lam 10 -mcl 1.0 -cc 1.0 > total-Cifar100-HtFE2-fd=512-FedSA_lam10.0_mcl1.0_cc1.0.out 2>&1 &

# === HtFE3 === #
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > total-Cifar100-HtFE3-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > total-Cifar100-HtFE3-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FML -gr 1000 -did 0 -al 0.5 -bt 0.5 > total-Cifar100-HtFE3-fd=512-FML.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > total-Cifar100-HtFE3-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 0.1 > total-Cifar100-HtFE3-fd=512-FedDistill0.1.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 10 > total-Cifar100-HtFE3-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > total-Cifar100-HtFE3-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedSA -gr 1000 -did 0 -lam 10 -mcl 1.0 -cc 1.0 > total-Cifar100-HtFE3-fd=512-FedSA_lam10.0_mcl1.0_cc1.0.out 2>&1 &

# === HtFE5 === #
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE5 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > total-Cifar100-HtFE5-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE5 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > total-Cifar100-HtFE5-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE5 -fd 512 -algo FML -gr 1000 -did 0 -al 0.5 -bt 0.5 > total-Cifar100-HtFE5-fd=512-FML.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE5 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > total-Cifar100-HtFE5-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE5 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 0.1 > total-Cifar100-HtFE5-fd=512-FedDistill0.1.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE5 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 10 > total-Cifar100-HtFE5-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE5 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > total-Cifar100-HtFE5-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE5 -fd 512 -algo FedSA -gr 1000 -did 0 -lam 10 -mcl 1.0 -cc 1.0 > total-Cifar100-HtFE5-fd=512-FedSA_lam10.0_mcl1.0_cc1.0.out 2>&1 &

# ===== Tiny-imagenet ===== #
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 200 -data Tiny-imagenet -m HtFE8 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > total-Tiny-imagenet-HtFE8-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 200 -data Tiny-imagenet -m HtFE8 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > total-Tiny-imagenet-HtFE8-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 200 -data Tiny-imagenet -m HtFE8 -fd 512 -algo FML -gr 1000 -did 0 -al 0.5 -bt 0.5 > total-Tiny-imagenet-HtFE8-fd=512-FML.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 200 -data Tiny-imagenet -m HtFE8 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > total-Tiny-imagenet-HtFE8-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 200 -data Tiny-imagenet -m HtFE8 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 0.1 > total-Tiny-imagenet-HtFE8-fd=512-FedDistill0.1.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 200 -data Tiny-imagenet -m HtFE8 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 10 > total-Tiny-imagenet-HtFE8-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 200 -data Tiny-imagenet -m HtFE8 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > total-Tiny-imagenet-HtFE8-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 200 -data Tiny-imagenet -m HtFE8 -fd 512 -algo FedSA -gr 1000 -did 0 -lam 10 -mcl 1.0 -cc 1.0 > total-Tiny-imagenet-HtFE8-fd=512-FedSA_lam10.0_mcl1.0_cc1.0.out 2>&1 &

# Test -lam 1 5 10 20
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 200 -data Tiny-imagenet -m HtFE8 -fd 512 -algo FedSA -gr 1000 -did 0 -lam 1.0 -mcl 1.0 -cc 1.0 > total-Tiny-imagenet-HtFE8-fd=512-FedSA_lam1.0_mcl1.0_cc1.0.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 200 -data Tiny-imagenet -m HtFE8 -fd 512 -algo FedSA -gr 1000 -did 0 -lam 5.0 -mcl 1.0 -cc 1.0 > total-Tiny-imagenet-HtFE8-fd=512-FedSA_lam5.0_mcl1.0_cc1.0.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 200 -data Tiny-imagenet -m HtFE8 -fd 512 -algo FedSA -gr 1000 -did 0 -lam 20.0 -mcl 1.0 -cc 1.0 > total-Tiny-imagenet-HtFE8-fd=512-FedSA_lam20.0_mcl1.0_cc1.0.out 2>&1 &
