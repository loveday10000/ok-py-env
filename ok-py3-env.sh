#! /usr/bin/bash
# 1.修改ubuntu和pip为清华源
wget https://tuna.moe/oh-my-tuna/oh-my-tuna.py
sudo python oh-my-tuna.py --global
echo '[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
[install]
trusted-host=mirrors.aliyun.com' >> pip.conf
mkdir .pip; mv pip.conf .pip/
# 2.安装ipython3,pip3,virtualenv虚拟环境,vim git ssh mongodb数据库 mysql数据库 
sudo apt-get -y install ipython3 python3-pip virtualenv virtualenvwrapper vim curl git ssh net-tools tree phantomjs mongodb  mysql-server mysql-client libmysqlclient-dev
sudo pip3 install --upgrade pip
bash /usr/share/virtualenvwrapper/virtualenvwrapper.sh
# 3.安装谷歌浏览器
sudo wget http://www.linuxidc.com/files/repo/google-chrome.list -P /etc/apt/sources.list.d/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
sudo apt-get update
sudo apt-get install google-chrome-stable
# 4.安装pycharm专业版
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
sudo apt-get update
sudo apt-get -y install ubuntu-make
umake ide pycharm-professional
# 5.安装sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get -y install apt-transport-https
sudo apt update
sudo apt install sublime-text
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
# 6.自动重启系统
rm -r ok-py-env-master oh-my-tuna.py master.zip
sudo reboot
