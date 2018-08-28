# OnekeyPython

 **A 项目介绍** 

Fast create python environment in new ubuntu18.04；
Include：ubuntu change resource list for china tuna mirros，git，ipython2/3，pip2/3，virtualenv，PycharmProfessional。

在一个新装的linux系统上面,联网快速构建一个python基本开发环境,一个简单的一键shell脚本

 **B 软件架构** 

一键安装软件列表

1.python  ipython  ipython3  python-pip  python3-pip virtualenv virtualenvwrapper

2. vim  git  mysql-server  mysql-client  libmysqlclient-dev

3.谷歌浏览器  pycharm专业版  curl软件

 **C 安装教程** 

1.用Ubuntu自带的火狐浏览器下载,下载目录为tmp/mozilla_用户名0)

2.找OnekeyPython.zip到,解压

3.(例如解压到/home/用户名/ok-py-python.sh)  进入打开终端运行: sh ./ok-py-python/sh

 **D 使用说明** 

1.执行完成以后,需重新电脑,启动器才有pycharm图标了. 

2.使用virtualenv虚拟环境之前,生成home/用户/.virtualenv文件夹,执行 

    source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

    官方新建py3虚拟环境方法: 

    mkvirtualenv 环境名 -p /usr/bin/python3

    (如果要[virtualenv 环境名 -p python3]  请把python3环境添加到环境变量)

3.mysql安装以后,mysql会自动生成一个随机密码,修改密码方式如下:

    1).登陆mysql

	sudo mysql

    2).修改登录账号密码

	use mysql;

	update user set authentication_string=PASSWORD("这里输入你要改的密码") where User='root';

	update user set plugin="mysql_native_password";

	flush privileges;

        quit;