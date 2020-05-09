#! /usr/bin/bash
# 1.修改ubuntu和pip为清华源
wget https://tuna.moe/oh-my-tuna/oh-my-tuna.py
sudo python3 oh-my-tuna.py --global
echo '[global]
index-url = http://mirrors.aliyun.com/pypi/simple/
[install]
trusted-host=mirrors.aliyun.com' >> pip.conf
mkdir .pip; mv pip.conf .pip/
sudo rm /var/lib/apt/lists/lock
# 2.清理文件并重启系统生效
sudo apt-get update
sudo apt-get upgrade
rm -r master.zip ok-py-env-master oh-my-tuna.py .bash_history
sleep 5s
sudo reboot
