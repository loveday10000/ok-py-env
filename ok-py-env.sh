#说明: 
#1.新建虚拟环境官方方法是: mkvirtualenv 虚拟环境名 -p /usr/bin/python3
#2.重启电脑后,就能看到pycharm快捷方式了
#! /usr/bin/bash
#更新apt包的源及软件
sudo apt-get -y update
sudo apt-get -y upgrade
#安装python所需软件模块
sudo apt-get -y install python
sudo apt-get -y install ipython
sudo apt-get -y install ipython3
sudo apt-get -y install python-pip
sudo apt-get -y install python3-pip
sudo pip install --upgrade pip
sudo apt-get -y install virtualenv
sudo apt-get -y install virtualenvwrapper
#安装python搭配的软件
sudo apt-get -y install vim
sudo apt-get -y install git
sudo apt-get -y install mysql-server
sudo apt-get -y install mysql-client
sudo apt-get -y install libmysqlclient-dev
#安装谷歌浏览器(1.添加chrome源 2.获取软件源密钥 3.刷新源 4.安装chrome 5.打开chrome)
sudo wget https://repo.fdzh.org/chrome/google-chrome.list -P /etc/apt/sources.list.d/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y google-chrome-stable
/usr/bin/google-chrome-stable
#用umake安装pycharm专业版
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
sudo apt-get update
sudo apt-get install ubuntu-make
umake ide pycharm-professional
#安装live-server静态环境
sudo apt install -y curl
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

