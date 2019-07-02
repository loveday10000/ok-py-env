#!/bin/bash
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
sudo echo deb http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse > /etc/apt/sources.list
sudo echo deb http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse >> /etc/apt/sources.list
sudo echo deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse >> /etc/apt/sources.list
sudo echo deb http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse >> /etc/apt/sources.list
##测试版源  
sudo echo deb http://mirrors.aliyun.com/ubuntu/ xenial-proposed main restricted universe multiverse >> /etc/apt/sources.list
# 源码  
sudo echo deb-src http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse >> /etc/apt/sources.list
sudo echo deb-src http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse >> /etc/apt/sources.list
sudo echo deb-src http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse >> /etc/apt/sources.list
sudo echo deb-src http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse >> /etc/apt/sources.list
##测试版源  
sudo echo deb-src http://mirrors.aliyun.com/ubuntu/ xenial-proposed main restricted universe multiverse >> /etc/apt/sources.list
# Canonical 合作伙伴和附加  
sudo echo deb http://archive.canonical.com/ubuntu/ xenial partner >> /etc/apt/sources.list
sudo echo deb http://extras.ubuntu.com/ubuntu/ xenial main >> /etc/apt/sources.list
apt update
apt upgrade -y
echo '[global]
index-url = http://mirrors.aliyun.com/pypi/simple/
[install]
trusted-host=mirrors.aliyun.com' >> pip.conf
mkdir .pip; mv pip.conf .pip/
sudo rm /var/lib/apt/lists/lock
sleep 1s
sudo apt-get update
sleep 1s
sudo apt-get upgrade
sleep 3s
# 安装python2,ipython2/3,pip2/3,virtualenv虚拟环境,vim git ssh mongodb数据库 mysql数据库 
sudo apt-get -y install python ipython ipython3 python-pip python3-pip virtualenv virtualenvwrapper
sleep 3s
sudo apt-get -y install vim nginx curl nodejs npm git ssh
sleep 3s
sudo apt-get -y docker.io phantomjs redis mongodb mysql-server mysql-client libmysqlclient-dev
sleep 3s
sudo pip install --upgrade pip
sudo pip3 install --upgrade pip
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
sleep 1s
# 安装谷歌浏览器
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sleep 3s
sudo dpkg -i google-chrome-stable_current_amd64.deb
sleep 3s
sudo rm /var/lib/apt/lists/lock
sleep 1s
# 安装pycharm专业版
sudo add-apt-repository -y ppa:ubuntu-desktop/ubuntu-make
sudo apt-get update
sudo apt-get -y install ubuntu-make
sleep 5s
umake ide pycharm-professional
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
sleep 5s
sudo rm /var/lib/apt/lists/lock
sleep 1s
# 5.清理文件并重启系统生效
sudo apt-get update
sudo apt-get upgrade
rm -r master.zip ok-py-env-master oh-my-tuna.py google-chrome-stable_current_amd64.deb .bash_history
sleep 5s
sudo reboot
