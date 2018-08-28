# OnekeyPython

 **A 项目介绍** 

Fast create python environment in new ubuntu18.04；
Include：ubuntu change resource list for china tuna mirros，git，ipython2/3，pip2/3，virtualenv，PycharmProfessional。

在一个新装的linux系统上面,联网快速构建一个python基本开发环境,ok-py-env.sh是一个简单的一键shell脚本


ps: 执行过程中,看提示 回车或者yes

    安装完成以后,重启系统,即可使用 pycharm软件.

 **B 软件架构** 

一键安装软件列表

1.  python  
    ipython  
    ipython3  
    python-pip  
    python3-pip 
    virtualenv 
    virtualenvwrapper

2.  vim  
    git
    mysql-server  
    mysql-client  
    libmysqlclient-dev

3.  谷歌浏览器  
    pycharm专业版  
    curl软件

4.自动修改pip国外源 为 国内清华大学源


 **C 安装教程** 

1.下载OnekeyPython.zip解压,把ok-py_env.sh放到/home/用户/    

2.终端执行

    sh ok-py-env.sh

 **D 使用说明** 

1.若需要使用自定义虚拟环境,创建方法如下

    1)生成虚拟环境文件夹

    source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

    2)创建py3虚拟环境方法: 

    mkvirtualenv 环境名 -p /usr/bin/python3

  

2.mysql默认是一个随机密码,修改自定义密码如下

    1).登陆mysql

	sudo mysql

    2).修改登录账号密码

	use mysql;

	update user set authentication_string=PASSWORD("这里输入你要改的密码") where User='root';

	update user set plugin="mysql_native_password";

	flush privileges;
        
        quit;

![输入图片说明](https://images.gitee.com/uploads/images/2018/0828/190044_32030cc4_2026959.png "使用方法.png")