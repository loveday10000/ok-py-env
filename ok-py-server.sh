#! /usr/bin/bash
# 1.修改ubuntu和pip为清华源
wget https://tuna.moe/oh-my-tuna/oh-my-tuna.py
sudo python3 oh-my-tuna.py --global
echo '[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
[install]
trusted-host=mirrors.aliyun.com' >> pip.conf
mkdir .pip; mv pip.conf .pip/
# 2.安装python2,ipython2/3,pip2/3,virtualenv虚拟环境,vim git ssh mongodb数据库 mysql数据库 
sudo apt-get -y install python ipython ipython3 python-pip python3-pip virtualenv virtualenvwrapper vim curl git ssh phantomjs mongodb mysql-server mysql-client libmysqlclient-dev
rm -r ok-py-env-master oh-my-tuna.py master.zip
sudo reboot
