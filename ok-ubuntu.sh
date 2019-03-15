#! /usr/bin/bash
# 1.修改ubuntu和pip为清华源
wget https://tuna.moe/oh-my-tuna/oh-my-tuna.py
sudo python3 oh-my-tuna.py --global
echo '[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
[install]
trusted-host=mirrors.aliyun.com' >> pip.conf
mkdir .pip; mv pip.conf .pip/
sleep 3s
sudo apt-get update;sudo apt-get upgrade
# 2.安装ubuntu常用软件工具
sudo apt-get -y install vim ssh
sleep 3s
# 3. 安装谷歌浏览器
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sleep 3s
sudo dpkg -i google-chrome-stable_current_amd64.deb
sleep 3s
rm -r google-chrome-stable_current_amd64.deb master.zip ok-py-env-master oh-my-tuna.py
sudo reboot
