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

tips: Automatic modification of PIP foreign source is the source of tsinghua university in China


 **C Install the tutorial** 
 
terminal run command and auto restart the system
     
	wget https://github.com/loveday10000/ok-py-env/archive/master.zip; unzip master.zip;sh ok-py-env-master/ok-py-env.sh


 **D instructions** 

1.If you need to use a custom virtual environment, create it as follows

    1)Generate virtual environment folders

    source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

    2)Create py3 virtual environment method

    mkvirtualenv venv_name -p /usr/bin/python3

2.mysqlThe default is a random password. Modify the custom password as follows

    1).log in mysql

	sudo mysql

    2).Change the login password

	use mysql;

	update user set authentication_string=PASSWORD("your_password") where User='root';

	update user set plugin="mysql_native_password";

	flush privileges;
        
        quit;


适用于用apt包的 Linux系统 的Onekey-Python-Environment
项目介绍

例如：在新的ubuntu18.04中快速创建python环境;在新安装的Linux系统上，网络快速构建基本的python开发环境，而ok-py-env.sh是一个简单的一键式shell脚本Ps：在执行期间，输入或是，并重新启动系统，python软件将生效

B软件架构

1.python基本软件

python ipython ipython3 python-pip python3-pip virtualenv virtualenvwrapper

2.常用软件

vim git curl mongodb sublime mysql-server mysql-client libmysqlclient-dev google-chrome-stable pycharm-profession

提示：PIP国外源的自动修改是清华大学在中国的源头

C安装教程

终端输入下面命令: 运行完毕后,会自动linux系统
  
	wget https://github.com/loveday10000/ok-py-env/archive/master.zip; unzip master.zip;sh ok-py-env-master/ok-py-env.sh

	
D说明

1.如果需要使用自定义虚拟环境，请按如下所示进行创建

1)Generate virtual environment folders

	source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

2)Create py3 virtual environment method

	mkvirtualenv venv_name -p /usr/bin/python3
2.mysql默认是随机密码。修改自定义密码，如下所示

1).log in mysql

	sudo mysql

2).Change the login password

	use mysql;

	update user set authentication_string=PASSWORD("your_password") where User='root';

	update user set plugin="mysql_native_password";

	flush privileges;

	quit;
    
![ok-py-env.sh](https://images.gitee.com/uploads/images/2018/0828/194259_10483f6b_2026959.png "ok.png")
