# Onekey-Python-Environment for linux

 **A project introduction** 
 
For example: Fast create python environment in new ubuntu18.04；
On a newly installed Linux system, networking quickly builds a basic python development environment, and ok-py-env.sh is a simple one-click shell script
Ps: during execution, enter or yes, and restart the system, the python software will take effect

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
 
	wget https://github.com/loveday10000/ok-py-env/archive/master.zip; unzip master.zip

	sh ok-py-env-master/ok-py-env.sh

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


![ok-py-env.sh](https://images.gitee.com/uploads/images/2018/0828/194259_10483f6b_2026959.png "ok.png")
