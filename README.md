# OnekeyPython

 **A 项目介绍** 

Fast create python environment in new ubuntu18.04；
Include：ubuntu change resource list for china tuna mirros，git，ipython2/3，pip2/3，virtualenv，PycharmProfessional。

在一个新装的linux系统上面,联网快速构建一个python基本开发环境,一个简单的一键shell脚本

ps:安装完成以后,重启系统,即可使用 pycharm软件.

 **B 软件架构** 

一键安装软件列表

1.python  ipython  ipython3  python-pip  python3-pip virtualenv virtualenvwrapper

2. vim  git  mysql-server  mysql-client  libmysqlclient-dev

3.谷歌浏览器  pycharm专业版  curl软件

4.自动修改pip国外源 为 国内清华大学源


 **C 安装教程** 

1.打开OnekeyPython.zip解压出,ok-py_env.sh 

2.终端执行

    sh  ./xxx文件下/ ok-py-env.sh   

 **D 使用说明** 

1.生成虚拟环境文件夹

    source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

    创建py3虚拟环境方法: 

    mkvirtualenv 环境名 -p /usr/bin/python3

    (或者自行把virutalenv和python3环境添加到环境变量)

2.mysql安装以后,mysql会自动生成一个随机密码,修改密码方式如下:

    1).登陆mysql

	sudo mysql

    2).修改登录账号密码

	use mysql;

	update user set authentication_string=PASSWORD("这里输入你要改的密码") where User='root';

	update user set plugin="mysql_native_password";

	flush privileges;
        
        quit;