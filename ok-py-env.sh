#! /usr/bin/bash
# 1.修改pip为清华源
echo '[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
[install]
trusted-host=mirrors.aliyun.com' >> pip.conf
mkdir .pip
mv pip.conf .pip/
# 2.安装python2,ipython2/3,pip2/3,virtualenv虚拟环境,vim git ssh mongodb数据库 mysql数据库 
sudo apt-get -y install python ipython ipython3 python-pip python3-pip virtualenv virtualenvwrapper vim git ssh mongodb mysql-server mysql-client libmysqlclient-dev
sudo pip install --upgrade pip
sudo pip3 install --upgrade pip
bash /usr/share/virtualenvwrapper/virtualenvwrapper.sh
# 3.添加源安装 sublime-text3 谷歌浏览器 pycharm专业版
sudo wget https://repo.fdzh.org/chrome/google-chrome.list -P /etc/apt/sources.list.d/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
sudo apt-get -y install google-chrome-stable
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
sudo apt-get update
sudo apt-get -y install ubuntu-make
umake ide pycharm-professional
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get -y install apt-transport-https
sudo apt-get -y install sublime-text
# 4.自动重启系统
rm -r ok-py-env-master oh-my-tuna.py master.zip
sudo reboot
