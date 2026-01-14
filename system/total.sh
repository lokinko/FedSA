nohup python -u main.py -t 3 -ab 1 -lr 0.01 -jr 1 -lbs 10 -ls 1 -nc 20 -nb 100 -data Cifar100 -m HtM10 -fd 512 -did 0 -algo Local > total-Cifar100-HtM10-fd=512-Local.out 2>&1 &
nohup python -u main.py -t 3 -ab 1 -lr 0.01 -jr 1 -lbs 10 -ls 1 -nc 20 -nb 100 -data Cifar100 -m HtM10 -fd 512 -did 1 -algo FedProto -lam 10 > total-Cifar100-HtM10-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -t 3 -ab 1 -lr 0.01 -jr 1 -lbs 10 -ls 1 -nc 20 -nb 100 -data Cifar100 -m HtM10 -fd 512 -did 1 -algo FedGen -nd 32 -glr 0.1 -hd 512 -se 100 > total-Cifar100-HtM10-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -t 3 -ab 1 -lr 0.01 -jr 1 -lbs 10 -ls 1 -nc 20 -nb 100 -data Cifar100 -m HtM10 -fd 512 -did 2 -algo FedDistill -lam 1 > total-Cifar100-HtM10-fd=512-FedDistill.out 2>&1 &
nohup python -u main.py -t 3 -ab 1 -lr 0.01 -jr 1 -lbs 10 -ls 1 -nc 20 -nb 100 -data Cifar100 -m HtM10 -fd 512 -did 2 -algo FML -al 0.5 -bt 0.5 > total-Cifar100-HtM10-fd=512-FML.out 2>&1 &
nohup python -u main.py -t 3 -ab 1 -lr 0.01 -jr 1 -lbs 10 -ls 1 -nc 20 -nb 100 -data Cifar100 -m HtM10 -fd 512 -did 3 -algo FedKD -mlr 0.01 -Ts 0.95 -Te 0.98 > total-Cifar100-HtM10-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -t 3 -ab 1 -lr 0.01 -jr 1 -lbs 10 -ls 1 -nc 20 -nb 100 -data Cifar100 -m HtM10 -fd 512 -did 3 -algo LG-FedAvg > total-Cifar100-HtM10-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -t 3 -ab 1 -lr 0.01 -jr 1 -lbs 10 -ls 1 -nc 20 -nb 100 -data Cifar100 -m HtM10 -fd 512 -did 3 -algo FedGH -slr 0.01 -se 1 > total-Cifar100-HtM10-fd=512-FedGH.out 2>&1 &
nohup python -u main.py -t 3 -ab 1 -lr 0.01 -jr 1 -lbs 10 -ls 1 -nc 20 -nb 100 -data Cifar100 -m HtM10 -fd 512 -did 4 -algo FedTGP -lam 10 -se 100 -mart 100 > total-Cifar100-HtM10-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -t 3 -ab 1 -lr 0.01 -jr 1 -lbs 10 -ls 1 -nc 20 -nb 100 -data Cifar100 -m HtM10 -fd 512 -did 5 -algo FedKTL-stylegan-xl -slr 0.01 -sbs 100 -se 100 -lam 1 -mu 50 > total-Cifar100-HtM10-fd=512-FedKTL-stylegan-xl.out 2>&1 &
nohup python -u main.py -t 3 -ab 1 -lr 0.01 -jr 1 -lbs 10 -ls 1 -nc 20 -nb 100 -data Cifar100 -m HtM10 -fd 512 -did 2 -algo FedKTL-stylegan-3 -slr 0.01 -sbs 100 -se 100 -lam 0.1 -mu 50 -GPath stylegan/stylegan-3-models/Benches-512.pkl > total-Cifar100-HtM10-fd=512-FedKTL-stylegan-3.out 2>&1 &
nohup python -u main.py -nc 20 -data Cifar100 -m HtM10 -fd 512 -did 1 -algo FedKTL-stable-diffusion -slr 0.1 -sbs 100 -se 100 -lam 0.01 -mu 100 -GPath stable-diffusion/v1.5 > total-Cifar100-HtM10-fd=512-FedKTL-stable-diffusion.out 2>&1 &


nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1 -nb 100 -data Cifar100 -m cnn -algo LG-FedAvg -gr 500 -did 0 -go cnn > result/cifar100/cnn/client20/cifar100_LG-FedAvg.out 2>&1 &



nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE1 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > total-Cifar100-HtFE1-fd=512-LG-FedAvg.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE1 -fd 512 -algo FedTGP -lam 10 -se 100 -mart 100 -gr 1000 -did 0 > total-Cifar100-HtFE1-fd=512-FedTGP.out 2>&1 &


nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > 1-total-Cifar100-HtFE2-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > 1-total-Cifar100-HtFE3-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > 1-total-Cifar100-HtFE4-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > 1-total-Cifar100-HtFE8-fd=512-FedKD.out 2>&1 &




# HtFE1
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 10 -data Cifar10 -m HtFE1 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > 3-total-Cifar10-HtFE1-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 200 -data Tiny-imagenet -m HtFE1 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > 1-total-Tiny-imagenet-HtFE1-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE1 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 0.1 > 3-total-Cifar100-HtFE1-fd=512-FedDistill0.1.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE1 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > 3-total-Cifar100-HtFE1-fd=512-FedGen.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1 -nb 10 -data Cifar10 -m HtFE1 -fd 512 -algo FedGen -gr 200 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > 3-total-Cifar10-HtFE1-fd=512-FedGen20.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1 -nb 100 -data Cifar100 -m HtFE1 -fd 512 -algo FedGen -gr 200 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > 3-total-Cifar100-HtFE1-fd=512-FedGen20.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1 -nb 200 -data Tiny-imagenet -m HtFE1 -fd 512 -algo FedGen -gr 200 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > 3-total-Tiny-imagenet-HtFE1-fd=512-FedGen20.out 2>&1 &



nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1 -nb 10 -data Cifar10 -m HtFE1 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > 1-total-Cifar10-HtFE1-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1 -nb 10 -data Cifar10 -m HtFE1 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > 1-total-Cifar10-HtFE1-fd=512-FedTGP1.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1 -nb 100 -data Cifar100 -m HtFE1 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > 1-total-Cifar100-HtFE1-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1 -nb 100 -data Cifar100 -m HtFE1 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > 1-total-Cifar100-HtFE1-fd=512-FedTGP1.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1 -nb 200 -data Tiny-imagenet -m HtFE1 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > 1-total-Tiny-imagenet-HtFE1-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1 -nb 200 -data Tiny-imagenet -m HtFE1 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > 1-total-Tiny-imagenet-HtFE1-fd=512-FedTGP1.out 2>&1 &


nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 10 -data Cifar10 -m HtFE1 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > 1-total-Cifar10-HtFE1-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE1 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > 1-total-Cifar100-HtFE1-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 200 -data Tiny-imagenet -m HtFE1 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > 1-total-Tiny-imagenet-HtFE1-fd=512-FedTGP.out 2>&1 &


nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE1 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 0.0 > ../../work/zyb/total-Cifar100-HtFE1-fd=512-FedSar_toc1.0_to10.0_cl0.0_1.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE1 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 0.0 > ../../work/zyb/1-total-Cifar100-HtFE1-fd=512-FedSar_toc1.0_to10.0_cl0.0_1.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE1 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > ../../work/zyb/total-Cifar100-HtFE1-fd=512-FedTGP.out 2>&1 &

# HtFE2
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > ../../work/zyb/2024-total-Cifar100-HtFE2-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > ../../work/zyb/2024-total-Cifar100-HtFE2-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FML -gr 1000 -did 0 -al 0.5 -bt 0.5 > ../../work/zyb/2024-total-Cifar100-HtFE2-fd=512-FML.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > ../../work/zyb/2024-total-Cifar100-HtFE2-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 1 > ../../work/zyb/2024-total-Cifar100-HtFE2-fd=512-FedDistill.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 10 > ../../work/zyb/2-total-Cifar100-HtFE2-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > ../../work/zyb/2-total-Cifar100-HtFE2-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 1.0 > ../../work/zyb/2-total-Cifar100-HtFE2-fd=512-FedSar_toc1.0_to10.0_cl1.0.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > total-Cifar100-HtFE2-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > total-Cifar100-HtFE2-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FML -gr 1000 -did 0 -al 0.5 -bt 0.5 > total-Cifar100-HtFE2-fd=512-FML.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > total-Cifar100-HtFE2-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 1 > total-Cifar100-HtFE2-fd=512-FedDistill.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 10 > total-Cifar100-HtFE2-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > total-Cifar100-HtFE2-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 0.0 > total-Cifar100-HtFE2-fd=512-FedSar_toc1.0_to10.0_cl0.0.out 2>&1 &

# HtFE3
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > ../../work/zyb/1-total-Cifar100-HtFE3-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > ../../work/zyb/1-total-Cifar100-HtFE3-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FML -gr 1000 -did 0 -al 0.5 -bt 0.5 > ../../work/zyb/1-total-Cifar100-HtFE3-fd=512-FML.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > ../../work/zyb/1-total-Cifar100-HtFE3-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 1 > ../../work/zyb/1-total-Cifar100-HtFE3-fd=512-FedDistill.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 10 > ../../work/zyb/2-total-Cifar100-HtFE3-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > ../../work/zyb/2-total-Cifar100-HtFE3-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 1.0 > ../../work/zyb/2-total-Cifar100-HtFE3-fd=512-FedSar_toc1.0_to10.0_cl1.0.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > ../../work/zyb/total-Cifar100-HtFE3-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 10 > ../../work/zyb/total-Cifar100-HtFE3-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > ../../work/zyb/total-Cifar100-HtFE3-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 0.0 > ../../work/zyb/total-Cifar100-HtFE3-fd=512-FedSar_toc1.0_to10.0_cl0.0.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > total-Cifar100-HtFE3-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > total-Cifar100-HtFE3-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FML -gr 1000 -did 0 -al 0.5 -bt 0.5 > total-Cifar100-HtFE3-fd=512-FML.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > total-Cifar100-HtFE3-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 1 > total-Cifar100-HtFE3-fd=512-FedDistill.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 10 > total-Cifar100-HtFE3-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > total-Cifar100-HtFE3-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 1.0 > total-Cifar100-HtFE3-fd=512-FedSar_toc1.0_to10.0_cl1.0.out 2>&1 &

# HtFE4
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > total-Cifar100-HtFE4-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > total-Cifar100-HtFE4-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo FML -gr 1000 -did 0 -al 0.5 -bt 0.5 > total-Cifar100-HtFE4-fd=512-FML.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > total-Cifar100-HtFE4-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 1 > total-Cifar100-HtFE4-fd=512-FedDistill.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 10 > total-Cifar100-HtFE4-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > total-Cifar100-HtFE4-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 0.0 > total-Cifar100-HtFE4-fd=512-FedSar_toc1.0_to10.0_cl0.0.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE5 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 1 > total-Cifar100-HtFE5-fd=512-FedDistill.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE5 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 1.0 > total-Cifar100-HtFE5-fd=512-FedSar_toc1.0_to10.0_cl1.0.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > ../../work/zyb/1-total-Cifar100-HtFE4-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > ../../work/zyb/1-total-Cifar100-HtFE4-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo FML -gr 1000 -did 0 -al 0.5 -bt 0.5 > ../../work/zyb/1-total-Cifar100-HtFE4-fd=512-FML.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > ../../work/zyb/1-total-Cifar100-HtFE4-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 1 > ../../work/zyb/1-total-Cifar100-HtFE4-fd=512-FedDistill.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 10 > ../../work/zyb/1-total-Cifar100-HtFE4-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > ../../work/zyb/1-total-Cifar100-HtFE4-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 1.0 > ../../work/zyb/1-total-Cifar100-HtFE4-fd=512-FedSar_toc1.0_to10.0_cl1.0.out 2>&1 &


nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo LG-FedAvg -gr 200 -did 0 > total-client20-Cifar100-HtFE2-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedGen -gr 200 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > total-client20-Cifar100-HtFE2-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FML -gr 200 -did 0 -al 0.5 -bt 0.5 > total-client20-Cifar100-HtFE2-fd=512-FML.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedKD -gr 200 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > total-client20-Cifar100-HtFE2-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedDistill -gr 200 -did 0 -lam 1 > total-client20-Cifar100-HtFE2-fd=512-FedDistill.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedProto -gr 200 -did 0 -lam 10 > total-client20-Cifar100-HtFE2-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedTGP -gr 200 -did 0 -lam 10 -se 100 -mart 100 > total-client20-Cifar100-HtFE2-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedSar -gr 200 -did 0 -toc 1.0 -to 10.0 -cl 1.0 > total-client20-Cifar100-HtFE2-fd=512-FedSar_toc1.0_to10.0_cl1.0.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo LG-FedAvg -gr 200 -did 0 > total-client20-Cifar100-HtFE3-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedGen -gr 200 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > total-client20-Cifar100-HtFE3-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FML -gr 200 -did 0 -al 0.5 -bt 0.5 > total-client20-Cifar100-HtFE3-fd=512-FML.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedKD -gr 200 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > total-client20-Cifar100-HtFE3-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedDistill -gr 200 -did 0 -lam 1 > total-client20-Cifar100-HtFE3-fd=512-FedDistill.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedProto -gr 200 -did 0 -lam 10 > total-client20-Cifar100-HtFE3-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedTGP -gr 200 -did 0 -lam 10 -se 100 -mart 100 > total-client20-Cifar100-HtFE3-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedSar -gr 200 -did 0 -toc 1.0 -to 10.0 -cl 1.0 > total-client20-Cifar100-HtFE3-fd=512-FedSar_toc1.0_to10.0_cl1.0.out 2>&1 &


nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > total-client20-Cifar100-HtFE4-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > total-client20-Cifar100-HtFE4-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo FML -gr 1000 -did 0 -al 0.5 -bt 0.5 > total-client20-Cifar100-HtFE4-fd=512-FML.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > total-client20-Cifar100-HtFE4-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 1 > total-client20-Cifar100-HtFE4-fd=512-FedDistill.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 10 > total-client20-Cifar100-HtFE4-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > total-client20-Cifar100-HtFE4-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE4 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 0.0 > total-client20-Cifar100-HtFE4-fd=512-FedSar_toc1.0_to10.0_cl0.0.out 2>&1 &


nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > total-client20-Cifar100-HtFE8-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > total-client20-Cifar100-HtFE8-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FML -gr 1000 -did 0 -al 0.5 -bt 0.5 > total-client20-Cifar100-HtFE8-fd=512-FML.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > total-client20-Cifar100-HtFE8-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 1 > total-client20-Cifar100-HtFE8-fd=512-FedDistill.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 10 > total-client20-Cifar100-HtFE8-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > total-client20-Cifar100-HtFE8-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 0.0 > total-client20-Cifar100-HtFE8-fd=512-FedSar_toc1.0_to10.0_cl0.0.out 2>&1 &


nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE9 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > total-client20-Cifar100-HtFE9-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE9 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > total-client20-Cifar100-HtFE9-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE9 -fd 512 -algo FML -gr 1000 -did 0 -al 0.5 -bt 0.5 > total-client20-Cifar100-HtFE9-fd=512-FML.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE9 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > total-client20-Cifar100-HtFE9-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE9 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 1 > total-client20-Cifar100-HtFE9-fd=512-FedDistill.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE9 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 10 > total-client20-Cifar100-HtFE9-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE9 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > total-client20-Cifar100-HtFE9-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE9 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 0.0 > total-client20-Cifar100-HtFE9-fd=512-FedSar_toc1.0_to10.0_cl0.0.out 2>&1 &



nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE5 -fd 512 -algo LG-FedAvg -gr 200 -did 0 > total-client20-Cifar100-HtFE5-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE5 -fd 512 -algo FedGen -gr 200 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > total-client20-Cifar100-HtFE5-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE5 -fd 512 -algo FML -gr 200 -did 0 -al 0.5 -bt 0.5 > total-client20-Cifar100-HtFE5-fd=512-FML.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE5 -fd 512 -algo FedKD -gr 200 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > total-client20-Cifar100-HtFE5-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE5 -fd 512 -algo FedDistill -gr 200 -did 0 -lam 0.1 > total-client20-Cifar100-HtFE5-fd=512-FedDistill.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE5 -fd 512 -algo FedProto -gr 200 -did 0 -lam 10 > total-client20-Cifar100-HtFE5-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE5 -fd 512 -algo FedTGP -gr 200 -did 0 -lam 10 -se 100 -mart 100 > total-client20-Cifar100-HtFE5-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE5 -fd 512 -algo FedSar -gr 200 -did 0 -toc 1.0 -to 10.0 -cl 1.0 > total-client20-Cifar100-HtFE5-fd=512-FedSar_toc1.0_to10.0_cl1.0.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedDistill -gr 200 -did 0 -lam 0.1 > total-client20-Cifar100-HtFE8-fd=512-FedDistill0.1.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE5 -fd 512 -algo LG-FedAvg -gr 200 -did 0 > total-client20-Cifar100-HtFE5-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE5 -fd 512 -algo FedProto -gr 200 -did 0 -lam 10 > total-client20-Cifar100-HtFE5-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE5 -fd 512 -algo FedTGP -gr 200 -did 0 -lam 10 -se 100 -mart 100 > total-client20-Cifar100-HtFE5-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE5 -fd 512 -algo FedSar -gr 200 -did 0 -toc 1.0 -to 10.0 -cl 1.0 > total-client20-Cifar100-HtFE5-fd=512-FedSar_toc1.0_to10.0_cl1.0.out 2>&1 &

# HtFE5

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE52 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > 3-total-Cifar100-HtFE52-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE52 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > 3-total-Cifar100-HtFE52-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE52 -fd 512 -algo FML -gr 1000 -did 0 -al 0.5 -bt 0.5 > 3-total-Cifar100-HtFE52-fd=512-FML.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE52 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > 3-total-Cifar100-HtFE52-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE52 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 10 > 3-total-Cifar100-HtFE52-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE52 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > 3-total-Cifar100-HtFE52-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE52 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 0.0 > 3-total-Cifar100-HtFE52-fd=512-FedSar_toc1.0_to10.0_cl0.0.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE52 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 0.1 > 3-total-Cifar100-HtFE52-fd=512-FedDistill0.1.out 2>&1 &


nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE52 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 1.0 > 4-total-Cifar100-HtFE52-fd=512-FedSar_toc1.0_to10.0_cl1.0.out 2>&1 &


# HtFE8

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > ../../work/zyb/1-total-Cifar100-HtFE8-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > ../../work/zyb/1-total-Cifar100-HtFE8-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FML -gr 1000 -did 0 -al 0.5 -bt 0.5 > ../../work/zyb/1-total-Cifar100-HtFE8-fd=512-FML.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > ../../work/zyb/1-total-Cifar100-HtFE8-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 1 > ../../work/zyb/1-total-Cifar100-HtFE8-fd=512-FedDistill.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 10 > ../../work/zyb/2-total-Cifar100-HtFE8-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 1.0 > ../../work/zyb/2-total-Cifar100-HtFE8-fd=512-FedSar_toc1.0_to10.0_cl1.0.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 0.0 > ../../work/zyb/ab-total-Cifar100-HtFE8-fd=512-FedSar_toc1.0_to10.0_cl0.0.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 0.0 -to 10.0 -cl 0.0 > ab-total-Cifar100-HtFE8-fd=512-FedSar_toc0.0_to10.0_cl0.0_withoutpro.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 0.1 -to 10.0 -cl 1.0 > ../../work/zyb/ab-total-Cifar100-HtFE8-fd=512-FedSar_toc0.1_to10.0_cl1.0.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 5.0 -to 10.0 -cl 1.0 > ../../work/zyb/ab-total-Cifar100-HtFE8-fd=512-FedSar_toc5.0_to10.0_cl1.0.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 10.0 -to 10.0 -cl 1.0 > ../../work/zyb/ab-total-Cifar100-HtFE8-fd=512-FedSar_toc10.0_to10.0_cl1.0.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 0.1 > ab-total-Cifar100-HtFE8-fd=512-FedSar_toc1.0_to10.0_cl0.1.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 5.0 > ab-total-Cifar100-HtFE8-fd=512-FedSar_toc1.0_to10.0_cl5.0.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 10.0 > ab-total-Cifar100-HtFE8-fd=512-FedSar_toc1.0_to10.0_cl10.0.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > ../../work/zyb/total-Cifar100-HtFE8-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 10 > ../../work/zyb/total-Cifar100-HtFE8-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > ../../work/zyb/total-Cifar100-HtFE8-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 0.0 > ../../work/zyb/total-Cifar100-HtFE8-fd=512-FedSar_toc1.0_to10.0_cl0.0.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > total-Cifar100-HtFE8-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > total-Cifar100-HtFE8-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FML -gr 1000 -did 0 -al 0.5 -bt 0.5 > total-Cifar100-HtFE8-fd=512-FML.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > total-Cifar100-HtFE8-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 1 > total-Cifar100-HtFE8-fd=512-FedDistill.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 10 > total-Cifar100-HtFE8-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > total-Cifar100-HtFE8-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 1.0 > total-Cifar100-HtFE8-fd=512-FedSar_toc1.0_to10.0_cl1.0.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 3 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > total-Cifar100-HtFE8-fd=512-LG-FedAvg3.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 3 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > total-Cifar100-HtFE8-fd=512-FedGen3.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 3 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FML -gr 1000 -did 0 -al 0.5 -bt 0.5 > total-Cifar100-HtFE8-fd=512-FML3.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 3 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > total-Cifar100-HtFE8-fd=512-FedKD3.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 3 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 0.1 > total-Cifar100-HtFE8-fd=512-FedDistill0.1_3.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 3 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 10 > total-Cifar100-HtFE8-fd=512-FedProto3.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 3 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > total-Cifar100-HtFE8-fd=512-FedTGP3.out 2>&1 &


nohup python -u main.py -lbs 10 -lr 0.01 -ls 3 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 1.0 > total-Cifar100-HtFE8-fd=512-FedSar_toc1.0_to10.0_cl1.0_3.out 2>&1 &



nohup python -u main.py -lbs 10 -lr 0.01 -ls 5 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo LG-FedAvg -gr 500 -did 0 > 1-total-Cifar100-HtFE8-fd=512-LG-FedAvg5.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 5 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedGen -gr 500 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > 1-total-Cifar100-HtFE8-fd=512-FedGen5.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 5 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FML -gr 500 -did 0 -al 0.5 -bt 0.5 > 1-total-Cifar100-HtFE8-fd=512-FML5.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 5 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedKD -gr 500 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > 1-total-Cifar100-HtFE8-fd=512-FedKD5.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 5 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedDistill -gr 500 -did 0 -lam 0.1 > 1-total-Cifar100-HtFE8-fd=512-FedDistill5_0.1.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 5 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedProto -gr 500 -did 0 -lam 10 > 1-total-Cifar100-HtFE8-fd=512-FedProto5.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 5 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedTGP -gr 500 -did 0 -lam 10 -se 100 -mart 100 > 1-total-Cifar100-HtFE8-fd=512-FedTGP5.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 5 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedSar -gr 500 -did 0 -toc 1.0 -to 10.0 -cl 1.0 > 1-total-Cifar100-HtFE8-fd=512-FedSar_toc1.0_to10.0_cl1.0_5.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 10 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo LG-FedAvg -gr 300 -did 0 > 3-total-Cifar100-HtFE8-fd=512-LG-FedAvg10.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 10 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedGen -gr 300 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > 3-total-Cifar100-HtFE8-fd=512-FedGen10.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 10 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FML -gr 300 -did 0 -al 0.5 -bt 0.5 > 3-total-Cifar100-HtFE8-fd=512-FML10.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 10 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedKD -gr 300 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > 3-total-Cifar100-HtFE8-fd=512-FedKD10.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 10 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedDistill -gr 300 -did 0 -lam 0.1 > 4-total-Cifar100-HtFE8-fd=512-FedDistill10.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 10 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedProto -gr 300 -did 0 -lam 10 > 3-total-Cifar100-HtFE8-fd=512-FedProto10.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 10 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedTGP -gr 300 -did 0 -lam 10 -se 100 -mart 100 > 3-total-Cifar100-HtFE8-fd=512-FedTGP10.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 10 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedSar -gr 300 -did 0 -toc 1.0 -to 10.0 -cl 1.0 > 3-total-Cifar100-HtFE8-fd=512-FedSar_toc1.0_to10.0_cl1.0_10.out 2>&1 &

nohup python -u main.py -lbs 10 -lr 0.01 -ls 20 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > total-Cifar100-HtFE8-fd=512-LG-FedAvg20.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 20 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > total-Cifar100-HtFE8-fd=512-FedGen20.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 20 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FML -gr 1000 -did 0 -al 0.5 -bt 0.5 > total-Cifar100-HtFE8-fd=512-FML20.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 20 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > total-Cifar100-HtFE8-fd=512-FedKD20.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 20 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 1 > total-Cifar100-HtFE8-fd=512-FedDistill20.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 20 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 10 > total-Cifar100-HtFE8-fd=512-FedProto20.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 20 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > total-Cifar100-HtFE8-fd=512-FedTGP20.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 20 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 1.0 > total-Cifar100-HtFE8-fd=512-FedSar_toc1.0_to10.0_cl1.0_20.out 2>&1 &


nohup python -u main.py -lbs 10 -lr 0.01 -ls 5 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > ../../work/zyb/total-Cifar100-HtFE8-fd=512-LG-FedAvg5.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 5 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > ../../work/zyb/total-Cifar100-HtFE8-fd=512-FedGen5.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 5 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FML -gr 1000 -did 0 -al 0.5 -bt 0.5 > ../../work/zyb/total-Cifar100-HtFE8-fd=512-FML5.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 5 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > ../../work/zyb/total-Cifar100-HtFE8-fd=512-FedKD5.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 5 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 1 > ../../work/zyb/total-Cifar100-HtFE8-fd=512-FedDistill5.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 5 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 10 > ../../work/zyb/total-Cifar100-HtFE8-fd=512-FedProto5.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 5 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > ../../work/zyb/total-Cifar100-HtFE8-fd=512-FedTGP5.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 5 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 1.0 > ../../work/zyb/total-Cifar100-HtFE8-fd=512-FedSar_toc1.0_to10.0_cl1.0_5.out 2>&1 &




nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 20 -jr 1.0 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedProto -gr 200 -did 0 -lam 1 > total-client20-Cifar100-HtFE8-fd=512-FedProto_1.out 2>&1 &


# HtFE9
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE9 -fd 512 -algo LG-FedAvg -gr 1000 -did 0 > total-Cifar100-HtFE9-fd=512-LG-FedAvg.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE9 -fd 512 -algo FedGen -gr 1000 -did 0 -nd 32 -glr 0.1 -hd 512 -se 100 > total-Cifar100-HtFE9-fd=512-FedGen.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE9 -fd 512 -algo FML -gr 1000 -did 0 -al 0.5 -bt 0.5 > total-Cifar100-HtFE9-fd=512-FML.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE9 -fd 512 -algo FedKD -gr 1000 -did 0 -mlr 0.01 -Ts 0.95 -Te 0.98 > total-Cifar100-HtFE9-fd=512-FedKD.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE9 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 1 > total-Cifar100-HtFE9-fd=512-FedDistill.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE9 -fd 512 -algo FedProto -gr 1000 -did 0 -lam 10 > total-Cifar100-HtFE9-fd=512-FedProto.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE9 -fd 512 -algo FedTGP -gr 1000 -did 0 -lam 10 -se 100 -mart 100 > total-Cifar100-HtFE9-fd=512-FedTGP.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE9 -fd 512 -algo FedSar -gr 1000 -did 0 -toc 1.0 -to 10.0 -cl 1.0 > total-Cifar100-HtFE9-fd=512-FedSar_toc1.0_to10.0_cl1.0.out 2>&1 &





nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE2 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 0.1 > 4-total-Cifar100-HtFE2-fd=512-FedDistill.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE3 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 0.1 > 4-total-Cifar100-HtFE3-fd=512-FedDistill.out 2>&1 &
nohup python -u main.py -lbs 10 -lr 0.01 -ls 1 -nc 100 -jr 0.1 -nb 100 -data Cifar100 -m HtFE8 -fd 512 -algo FedDistill -gr 1000 -did 0 -lam 0.1 > 4-total-Cifar100-HtFE8-fd=512-FedDistill.out 2>&1 &