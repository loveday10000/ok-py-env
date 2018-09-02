#! /usr/bin/bash
#更新apt包的源及软件
rm master.zip; wget https://tuna.moe/oh-my-tuna/oh-my-tuna.py; sudo python3 oh-my-tuna.py --global; rm oh-my-tuna.py; sudo apt-get update
#修改pip为国内源
mkdir .pip
echo '[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
[install]
trusted-host=mirrors.aliyun.com' >> pip.conf
mv pip.conf .pip/
#安装python所需软件模块
sudo apt-get -y install python ipython ipython3 python-pip python3-pip virtualenv virtualenvwrapper vim git ssh mongodb mysql-server mysql-client libmysqlclient-dev
sudo pip install --upgrade pip
sudo pip3 install --upgrade pip
bash /usr/share/virtualenvwrapper/virtualenvwrapper.sh
#安装sublime-text3 谷歌浏览器 pycharm专业版 culr
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get install apt-transport-https
sudo wget https://repo.fdzh.org/chrome/google-chrome.list -P /etc/apt/sources.list.d/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
sudo apt-get update
sudo apt-get -y install ubuntu-make sublime-text google-chrome-stable curl
umake ide pycharm-professional
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node
npm install -g live-server
. ~/.nvm/nvm.sh; nvm install node; npm install -g live-server
rm -r ok-py-env-master
sudo reboot
