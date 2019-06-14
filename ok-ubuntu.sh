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
sleep 1s
sudo apt-get update
sleep 1s
sudo apt-get upgrade
sleep 3s
# 2.安装python2,ipython2/3,pip2/3,virtualenv虚拟环境,vim git ssh mongodb数据库 mysql数据库 
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
# 5.清理文件并重启系统生效
sudo apt-get update
sudo apt-get upgrade
rm -r master.zip ok-py-env-master oh-my-tuna.py .bash_history
sleep 5s
sudo reboot
