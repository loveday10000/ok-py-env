# Onekey-Python-Environment for linux include apt package

**A项目介绍**

	在新装的linux中(例如:ubuntu)系统中快速创建python环境,而ok-py-env.sh是一个简单的一键式shell脚本
	PS：执行期间 回车确定，15分钟左右,完成后会自动重启系统.(如果网速不好,会花费更多时间.)

**B软件架构**

python基本软件(web开发,flask,django,爬虫等项目常用软件)

	python ipython ipython3 python-pip python3-pip virtualenv virtualenvwrapper

	vim git curl mongodb sublime mysql culr nvm node live-server libmysqlclient-dev google-chrome-stable pycharm-profession

提示：ubuntu和PIP的源代码会更改为清华源代码,修改后 pip install 几秒可以下载一个模块.

**C使用方法**

终端输入下面命令: 
  
	wget https://github.com/loveday10000/ok-py-env/archive/master.zip; unzip master.zip;yes|sh ok-py-env-master/ok-py-env.sh

	
**D说明**

1.使用python3虚拟环境，需要指定python3解释器路径

	mkvirtualenv 虚拟环境名称 -p /usr/bin/python3
	
2.mysql默认是随机密码。修改自定义密码，如下所示

	sudo mysql

	use mysql;

	update user set authentication_string=PASSWORD("你的密码") where User='root';

	update user set plugin="mysql_native_password";

	flush privileges;

	quit;
    
![ok-py-env.sh](https://images.gitee.com/uploads/images/2018/0828/194259_10483f6b_2026959.png "ok.png")
