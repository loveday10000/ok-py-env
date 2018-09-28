#! /usr/bin/bash
# 1.修改ubuntu和pip为清华源
wget https://tuna.moe/oh-my-tuna/oh-my-tuna.py
sudo python3 oh-my-tuna.py --global
echo '[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
[install]
trusted-host=mirrors.aliyun.com' >> pip.conf
mkdir .pip; mv pip.conf .pip/
sudo apt-get update
# 2.安装python2,ipython2/3,pip2/3,virtualenv虚拟环境,vim git ssh mongodb数据库 mysql数据库 
sudo apt-get -y install python ipython ipython3 python-pip python3-pip virtualenv virtualenvwrapper vim curl nodejs npm git ssh docker.io phantomjs redis mongodb mysql-server mysql-client libmysqlclient-dev
sudo pip install --upgrade pip
sudo pip3 install --upgrade pip
bash /usr/share/virtualenvwrapper/virtualenvwrapper.sh
# 3.安装谷歌浏览器
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
# 4.安装pycharm专业版
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
sudo apt-get update
sudo apt-get -y install ubuntu-make
umake ide pycharm-professional
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
# 6.自动重启系统
rm -r ok-py-env-master oh-my-tuna.py master.zip google-chrome-stable_current_amd64.deb
sudo apt-get upgrade
sudo reboot
