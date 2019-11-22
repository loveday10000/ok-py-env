#! /usr/bin/bash
# 1.修改ubuntu和pip为清华源
#!/bin/bash
sudo su
cp /etc/apt/sources.list /etc/apt/sources.list.bak
echo deb http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse > /etc/apt/sources.list
echo deb http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse >> /etc/apt/sources.list
echo deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse >> /etc/apt/sources.list
echo deb http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse >> /etc/apt/sources.list
##测试版源  
echo deb http://mirrors.aliyun.com/ubuntu/ xenial-proposed main restricted universe multiverse >> /etc/apt/sources.list
# 源码  
echo deb-src http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse >> /etc/apt/sources.list
echo deb-src http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse >> /etc/apt/sources.list
echo deb-src http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse >> /etc/apt/sources.list
echo deb-src http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse >> /etc/apt/sources.list
##测试版源  
echo deb-src http://mirrors.aliyun.com/ubuntu/ xenial-proposed main restricted universe multiverse >> /etc/apt/sources.list
# Canonical 合作伙伴和附加  
echo deb http://archive.canonical.com/ubuntu/ xenial partner >> /etc/apt/sources.list
echo deb http://extras.ubuntu.com/ubuntu/ xenial main >> /etc/apt/sources.list
apt update
apt upgrade -y
echo '[global]
index-url = http://mirrors.aliyun.com/pypi/simple/
[install]
trusted-host=mirrors.aliyun.com' >> pip.conf
mkdir .pip; mv pip.conf .pip/
rm /var/lib/apt/lists/lock
sleep 1s
apt-get update
sleep 1s
apt-get upgrade
sleep 3s
# 2.安装谷歌浏览器
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sleep 3s
dpkg -i google-chrome-stable_current_amd64.deb
sleep 3s
rm /var/lib/apt/lists/lock
sleep 1s
# 3.安装pycharm专业版
wget https://download.jetbrains.8686c.com/toolbox/jetbrains-toolbox-1.15.5387.tar.gz
tar -xvf jetbrains-toolbox-1.15.5387.tar.gz
./jetbrains-toolbox-1.15.5387/jetbrains-toolbox
rm -rf jetbrains-toolbox-1.15.5387 jetbrains-toolbox-1.15.5387.tar
add-apt-repository -y ppa:ubuntu-desktop/ubuntu-make
apt-get update
apt-get -y install ubuntu-make
sleep 5s
umake ide pycharm-professional
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
sleep 5s
rm /var/lib/apt/lists/lock
sleep 1s
# 4.安装python2,ipython2/3,pip2/3,virtualenv虚拟环境,vim git ssh mongodb数据库 mysql数据库 
apt-get -y install python ipython ipython3 python-pip python3-pip virtualenv virtualenvwrapper
sleep 3s
apt-get -y install vim nginx curl nodejs npm git ssh
sleep 3s
apt-get -y docker.io phantomjs redis mongodb mysql-server mysql-client libmysqlclient-dev
sleep 3s
pip install --upgrade pip
pip3 install --upgrade pip
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
sleep 1s
# 5.清理文件并重启系统生效
apt-get update
apt-get upgrade
rm -r master.zip ok-py-env-master oh-my-tuna.py google-chrome-stable_current_amd64.deb .bash_history
sleep 5s
reboot
