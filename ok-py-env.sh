#! /usr/bin/bash
#更新apt包的源及软件
sudo apt-get -y update
sudo apt-get -y upgrade
#修改pip为国内源
mkdir .pip
echo '[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
[install]
trusted-host=mirrors.aliyun.com' >> pip.conf
mv pip.conf .pip/
#安装python所需软件模块
sudo apt-get -y install python
sudo apt-get -y install ipython
sudo apt-get -y install ipython3
sudo apt-get -y install python-pip
sudo apt-get -y install python3-pip
sudo pip install --upgrade pip
sudo apt-get -y install virtualenv
sudo apt-get -y install virtualenvwrapper
sudo apt-get -y install mongodb
#安装python搭配的软件
sudo apt-get -y install vim
sudo apt-get -y install git
sudo apt-get -y install mysql-server
sudo apt-get -y install mysql-client
sudo apt-get -y install libmysqlclient-dev
#用umake安装pycharm专业版
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
sudo apt-get update
sudo apt-get install ubuntu-make
umake ide pycharm-professional
#安装谷歌浏览器
sudo wget https://repo.fdzh.org/chrome/google-chrome.list -P /etc/apt/sources.list.d/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y google-chrome-stable
/usr/bin/google-chrome-stable
#安装culr
sudo apt install -y curl
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
