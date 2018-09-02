# Onekey-Python-Environment for linux include apt package

 **A project introduction** 
 
For example: Fast create python environment in new ubuntu18.04；

On a newly installed Linux system, networking quickly builds a basic python development environment, and ok-py-env.sh is a simple one-click shell script

Ps: during execution, enter or yes, and auto restart the system, the python software will take effect

 **B software architecture** 

1.python basic software

python
ipython
ipython3
python-pip
python3-pip
virtualenv
virtualenvwrapper

2.common software

vim
git
curl
mongodb
sublime
mysql-server
mysql-client
libmysqlclient-dev
google-chrome-stable
pycharm-profession

3. Change the source of ubuntu and PIP to tsinghua source

4. auto reboot system

 **C Install the tutorial** 
 
terminal run command and auto restart the system
     
	wget https://github.com/loveday10000/ok-py-env/archive/master.zip; unzip master.zip;sh ok-py-env-master/ok-py-env.sh


 **D instructions** 

1.Create the python3 virtualenv method

    mkvirtualenv venv_name -p /usr/bin/python3

2.mysqlThe default is a random password. Modify the custom password as follows

	sudo mysql

	use mysql;

	update user set authentication_string=PASSWORD("your_password") where User='root';

	update user set plugin="mysql_native_password";

	flush privileges;

	quit;


# 适用于用apt包的 Linux系统 的Onekey-Python-Environment

**A项目介绍**

例如：在新的ubuntu18.04中快速创建python环境;在新安装的Linux系统上，网络快速构建基本的python开发环境，而ok-py-env.sh是一个简单的一键式shell脚本Ps：执行期间 回车确定，15分钟左右,完成会自动重启系统.(如果网速不好,会花费更多时间.)

**B软件架构**

python基本软件(web开发,flask,django,爬虫等项目常用软件)

	python ipython ipython3 python-pip python3-pip virtualenv virtualenvwrapper

	vim git curl mongodb sublime mysql culr nvm node live-server libmysqlclient-dev google-chrome-stable pycharm-profession

提示：ubuntu和PIP的源代码会更改为清华源代码,修改后 pip install 几秒可以下载一个模块.

**C使用方法**

终端输入下面命令: 
  
	wget https://github.com/loveday10000/ok-py-env/archive/master.zip; unzip master.zip;sh ok-py-env-master/ok-py-env.sh

	
**D说明**

1.如果需要使用自定义虚拟环境，请按如下所示进行创建

	mkvirtualenv venv_name -p /usr/bin/python3
	
2.mysql默认是随机密码。修改自定义密码，如下所示

	sudo mysql

	use mysql;

	update user set authentication_string=PASSWORD("your_password") where User='root';

	update user set plugin="mysql_native_password";

	flush privileges;

	quit;
    
![ok-py-env.sh](https://images.gitee.com/uploads/images/2018/0828/194259_10483f6b_2026959.png "ok.png")
