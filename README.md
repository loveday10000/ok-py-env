# Onekey-Python-Environment for linux include apt package

**A项目介绍**

	在新装的linux中(例如:ubuntu)系统中快速创建python环境,而ok-py-env.sh是一个简单的一键式shell脚本
	PS：执行期间 回车确定，15分钟左右,完成后会自动重启系统.(如果网速不好,会花费更多时间.)

**B软件架构**

python基本软件(web开发,flask,django,爬虫等项目常用软件)

	ipython3 python3-pip virtualenv virtualenvwrapper

	vim nginx curl nodejs npm git ssh docker.io phantomjs redis mongodb mysql-server mysql-client libmysqlclient-dev 
	
	google-chrome-stable jetbrains-toolbox

提示：ubuntu和PIP的源代码会更改为清华源代码,以便加速系统下载软件模块。

**C使用方法**

终端输入下面2条命令: 

  桌面版使用命令
  
  python环境（桌面版）
  
  
  
	wget https://raw.githubusercontent.com/loveday10000/ok-py-env/master/ok-py-env.sh;sh ok-py-env.sh



  python环境服务器使用命令（无pycharm、无谷歌浏览器）：
  
  
  	sudo apt -y install unzip;wget https://github.com/loveday10000/ok-py-env/archive/master.zip; unzip master.zip;sh ok-py-env-master/ok-ubuntu.sh

	
**D其他说明** 

1.使用python3虚拟环境，需要指定python3解释器路径

	mkvirtualenv 虚拟环境名称 -p /usr/bin/python3

2.安装live-server

	 nvm install node
	 
	 npm install live-server
	
3.root账户下mysql默认是无密码。修改自定义密码，如下所示
        
	sudo mysql

	use mysql;

	update user set authentication_string=PASSWORD("你的密码") where User='root';

	update user set plugin="mysql_native_password";

	flush privileges;

	quit;
4.navicat连接mysql
        sudo vim /etc/mysql/mysql.conf.d/mysqld.cnf
	bind-address = 127.0.0.1 #注释或删除这行即可
![ok-py-env.sh](https://images.gitee.com/uploads/images/2018/0828/194259_10483f6b_2026959.png "ok.png")
