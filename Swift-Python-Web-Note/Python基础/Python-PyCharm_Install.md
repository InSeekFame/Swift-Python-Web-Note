[TOC]

#  Python-PyCharm 安装教程

## 1.Python 软件安装：

Python目前最新版本是 `Python3.8`。官网下载：https://www.python.org/

最好下载`Python3.7`版本，因为最新版本最是有各种各样的问题

- 注意事项：在下载页选择下载的时候，要注意看文件类型，Windows 的 exe 标识是：`Windows x86-64 executable installer`
- MacOS 的标识是：`MacOS 64-bit/32-bit installer`，如此便可下到 pkg 文件
- 开 VPN 下载更快，

### 1.1.Windows下安装 Python

- 1.注意事项：安装的时候，记得勾选添加环境变量选项 `Add Pthon 3.7 to PATH`
- 2.要选择自自定义安装`Customize installation`

- 3.`Optional Features`时，这一步默认选就行
- 4.`Advanced Options` 时，勾选安装为所有的用户， `Install for all users`
- 5.`Advanced Options` 时，更改安装路径，这里的安装路径不要有中文名称的路径，最好是 C 盘建一个 `Python3.7`目录，便于在重装系统的时候清除掉
- 6.安装完成后，打开 cmd，输入 python，如果能进入 `Python3.6`的环境中，并显示出Python版本号,则说明安装成功了
- 7.以后装Python插件-数据库中间件的时候，需要查看版本号，就在 cmd 里输入 python 查询



------

### 1.2.MacOS 下安装 Python

- Mac下，按流程安装即可，会默认配置 `Python3.x`环境
- 安装完成后在应用程序：`/Applications`下会有 `Python3.x` 的启动文件，说明就安装成功了
- 查看 Python3安装位置：`which python3`



------

## 2.PyCharm 安装

- 1.官网下载地址：https://www.jetbrains.com/pycharm/download/
- 2.要开发网页，就下载专业版：`Professional`
- 3.MacOS 下安装，就按默认的选就行了，没什么好注意的
- 4.Windows 安装，也可以安默认的安装就行了
- 5.激活，现在激活很费力，有空再找一个可激活的版本
- 6.激活教程可以参考bili 知了课堂：Python 全栈工程师视频



------

### 2.1 创建 Python 工程有讲究：

- 1.`Location:`选择工程存放路径时，最好不要有中文
- 2.`Existing interpreter`，选择 Python 环境，可以选择`Python3.6`，或者 `Python2.7`
- 3.选择 Python 时，就是选择刚才 Python 安装的路径下的 python.exe 执行文件，如：`C:\Python36\python.exe`



------

### 2.2 Python2.7和3.7的切换 

Windows说明：如果电脑里安装有多个 Python 版本，`Python2.7`和`Python3.7`，这里在 cmd 里输入 python 查看版本时，出现的版本会是最新安装的那个，如 Python2.7，此时如果想切换到 Python3.7去，怎么办呢？

#### 切换方法：

- `到电脑-->属性-->高级系统设置-->环境变量-->统变量-->Path`
- 双击 Path，这时会看到一定是 `Python2.7`在最上面，这时只需要把 `Python3.7`上移到顶部即可
- 再次在 cmd 里查看 Python，就会看到已经切换为 `Python3.7`了

------

### 2.3 配置`pip / pip3`的安装命令的`Python Script`环境变量

- Windows 下：默认安装的时候，已经在环境变量了配置好了，可以通过下移，上移来改变执行 pip，还是 pip3



------

### 2.4 pip安装虚拟环境

作用：`项目 A：Falsk0.12.2 <---->项目 B： Flask1.0`，这时会出现不兼容问题，而虚拟环境就是用于解决这个问题的

- 因为 Python 的框架更新迭代太快了，有时候需要在电脑上都很大很多一个框架的多个版本，这时虚拟环境就可以解决这个问题

#### Windows 安装虚拟环境：

- [ ] 在 cmd里输入 pip 安装命令`（此命令执行的前提是，设置了 Python Script 环境变量）`
- [x] 在 cmd 里执行命令： `pip install virtualenv` / `pip3 install virtualenv` （看你的Python环境来选择命令）
- [ ] 只要看到 `Successfully installed xxxx`，就说明安装成功了
- [x] 在 cmd默认的路径里，用 mkdir 命令创建一个虚拟目录，如： `mkdir Virtualenv`
- [x] 进入这个虚拟目录 `cd Virtualenv`，用命令 `virtualenv flask-env` 创建一个名为flask-env 的盒子
- [ ] 查看虚拟环境：打开该文件夹，或者用 dir 命令查看其是否创建了flask-env，且此文件夹下，应该包含 `Lib, Scripts,pyvenv.cfg` 这几个文件
- [x] 激活虚拟环境：进入虚拟环境盒子文件夹 `cd falsk-env`，再进入该文件夹下的 Scripts 文件夹：`cd Scripts`，执行激活命令：`activate`
- [ ] 查看激活状态：如果查看 cmd 命令行前面，由 C:\Users\xxx，变成了：(flask-env) C:\User\xxx，就说明激活成功了
- [x] 退出虚拟环境（关闭虚拟环境激活状态）：`deactivate`，这里就会退出虚拟环境，回到全局环境中



#### Mac 下安装虚拟环境：

```
-本质上虚拟环境也是一个扩展，所以用 pip 命令安装
```

- [ ] 在 终端 里执行命令：  `sudo pip install virtualenv` / `sudo pip3 install virtualenv` （看你的Python环境来选择命令）
- [ ] 只要看到 `Successfully installed xxxx`，就说明安装成功了
- [x] 在 cmd默认的路径里`（cd ~）`，用 mkdir 命令创建一个虚拟目录，如： `mkdir Virtualenv`
- [x] 进入这个虚拟目录 `cd Virtualenv`，用命令 `virtualenv flask-env` 创建一个名为flask-env 的盒子
- [ ] 查看虚拟环境：打开该文件夹，或者用 ls 命令查看其是否创建了flask-env，且此文件夹下，应该包含 bin, include,lib,pyvenv.cfg` 这几个文件
- [x] 激活虚拟环境：进入虚拟环境盒子文件夹 `cd falsk-env`，执行激活命令： `source ~/Virtualenv/flask-env/bin/activate`
- [ ] 查看激活状态：如果查看 终端，由 `luoxingrongs-MacBook-Air: xxx`，变成了：(flask-env) luoxingrongs-MacBook-Air:xxx，就说明激活成功了
- [x] 退出虚拟环境（关闭虚拟环境激活状态）：`deactivate`，这里就会退出虚拟环境，回到全局环境中



------

## 3.pip 安装 flask

#### 1. windows 下安装 flask:

1. 进入 flask-env虚拟环境下的 Scripts 文件夹下，`cd Virtualenv, cd flask-env, cd Scripts`

2. 激活虚拟环境: `activate`

3. 执行安装命令：`pip install flask`

4. 查看 flask 版本： 

   ```
   	1.执行 python命令进入环境
   
   ​	2.执行导入 flask 包，import flask
   
   ​	3.打印 flask 版本号：print(flask.__version__),结果会显示 版本号
   ```



#### 2.MacOS 下安装 flask:

1. 进入 flask-env虚拟环境下的 bin 文件夹下，`source ~/Virtualenv/flask-env/bin/activate`

2. 激活虚拟环境: `activate`   `# 上一步，已经把这步执行了`

3. 执行安装命令：`pip install flask`

4. 查看 flask 版本： 

   	1.执行 python命令进入环境
      	
      	2.执行导入 flask 包，import flask
      	
      	3.打印 flask 版本号：print(flask.__version__),结果会显示 版本号

5. 如果想要卸载，就执行 `pip uninstall flask`，如果提示权限不够，就是 sudo 命令：`sudo pip uninstall flask`



------

## 4.Flask 数据库-MySQL | SQLAlchemy

```
MySql下载网址：https://dev.mysql.com/downloads/mysql/
```

`下载MySql的坑记录：`

`1.如何选以前的版本？：点这个--> [Looking for previous GA versions?]`

`2.选择版本，并点击下载后会跳转到新页面，在新页面点 [No Thinks, just start my download]下载`

### 1.Mac 安装 MySql

#### 第一步：下载 mysql

- 1.进入下载地址后，点[Looking for previous GA versions?]
- 2.选择5.7版本，然后选择 MacOS系统，选择`(mysql-8.0.21-macos10.15-x86_64.dmg)`，点击下载
- 3.点击下载后会跳转到新页面，在新页面点 `[No Thinks, just start my download]`下载

#### 第二步：安装 mysql

- 1.安装，一路下一步，没有什么要选择的

- 2.安装完成，好像有一个初始密码：`root@localhost: qkr6#&pqM3xM`

  ```
  2020-08-08T15:38:35.153691Z 1 [Note] A temporary password is generated for root@localhost: qkr6#&pqM3xM
  
  If you lose this password, please consult the section How to Reset the Root Password in the MySQL reference manual.
  ```

  

![image-20200808234019937](/Users/luoxingrong/Desktop/我的作品/Swift-Python-Web-Note/Swift-Python-Web-Note/md图片/MYSQL-初始密码.png)



- 3.在设置那里点击 MySql，`Start MySql Server`

#### 第三步：配置 mysql 环境变量，这步最重要

1.在 终端输入 mysql 测试安装是否成功，如果能进去，表示安装成功，如果显示：`-bash: mysql: command not found`，则要处理

2.为 mysql 添加 macOS 版的环境变量：

```
在终端输入：vim .bash_profile

进入编辑界面，添加内容：

--mysql-PATH: MYsql 的环境变量

export PATH=$PATH:/usr/local/mysql/bin

然后按 esc 键，输入:wq 保存退出

最后使文件第一次： source .bash_profile
```

​	

![image-20200808235816228](/Users/luoxingrong/Desktop/我的作品/Swift-Python-Web-Note/Swift-Python-Web-Note/md图片/MYSQL 环境变量-MAC.png)

![](/Users/luoxingrong/Library/Application Support/typora-user-images/image-20200809000308359.png)

#### 第四步：设置初始密码：

- 1.先输入前面得到的初始密码进入数据库：

```
mysql -u root -p
password: qkr6#&pqM3xM # 这是安装得到的初始密码，先登录进去，再想办法修改密码
```

- 2.修改密码：

```
这一步要进入 mysql 才能修改
mysql> mysqlassword for root@localhost = password('942100426');
其他修改数据库的方法再 Google 很多，不写了
```

- 3.查看数据库：

```
show databases;
```

4.登出 mysql，并用新设置的密码测试是否能成功登录

```
exit;

mysql -u root -p

passwod: 942100426

mysql> # 进入这里，表示设置密码成功
```

### 2.Window 安装 mysql

- 已经安装好了，就不再演示了，需要的时候，再打开知了课堂的视频看看



------

## 5.安装Python 操作数据库的驱动程序- MySQL-python

 MySQL-python 中间件-插件

#### Mac下安装中间件

- 1.在虚拟环境执行下面的安装命令：`pip install mysql-python`

```
source ~/Virtualenv/flask-env/bin/activate
pip install mysql-python
```

- 2.很不幸的是，我的电脑会安装失败



#### Windows 安装 Mysql-python

```
用命令：pip install mysql-python 必然失败

需要去此链接下下载下来: https://www.lfd.uci.edu/~gohlke/pythonlibs/

放到 C盘之类的，最好不要有中文

然后执行: pip install MySQL_python-1.2.5-cp36-none-win_amd64.whl

具体可看下图
```

![image-20200809010158426](/Users/luoxingrong/Desktop/我的作品/Swift-Python-Web-Note/Swift-Python-Web-Note/md图片/PYTHON-MYSQL安装图.png)



------

## 6.Flask-SQLAlchemy 的介绍与安装

- 1.ORM：Object Relationship Mapping（模型关系映射）
- 2.flask-sqlalchemy 是一套 ORM 框架
- 3.ORM 的好处：可让我们操作数据库跟操作对象是一样的，非常方便。因为一个表就抽象成一个类，一条数据就抽象成该类的一个对象。
- 模型关系映射图：

![image-20200809011611265](/Users/luoxingrong/Desktop/我的作品/Swift-Python-Web-Note/Swift-Python-Web-Note/md图片/ORM 模型映射图.png)

- flask-sqlalchemy安装命令：`pip install flask-sqlalchemy`

  ```
  pip install flask-sqlalchemy
  ```

  ### Flask-SQLAlchemy的使用

- 1.先在 mysql 创建数据库: `create database db_demo charset utf8;`

```
终端：mysql -uroot -p
[Enter password]: # 942100426
mysql> create database db_demo charset utf8;
```

2.初始化和设置数据库配置信息：导入包

```
from flask_sqlalchemy import SQLAlchemy
```



- 3.设置配置信息：在‘config.py’文件中添加以下配置信息：

- [ ] python3的错误写法： mysql+mysqldb://root:942100426@127.0.0.1:3306/db_demo  
- [x] Python3的正确写法： mysql+pymysql://root:942100426@127.0.0.1:3306/db_demo

```
# 数据库链接配置文件
# 链接命令
# dialect+dirver://username:password@host:port/database
# mysql+pymysql://root:942100426@127.0.0.1:3306/db_demo
DIALECT = 'mysql'
DIRVER = 'pymysql' # DIRVER = 'mysqldb' 之前这种配置在 python3就不适用了，而是要用 DIRVER = 'pymysql'
USERNAME = 'root'
PASSWORD = '942100426'
HOST = '127.0.0.1'
PORT = '3306'
DATABASE = 'db_demo'

# python 的字符串插值方法：
SQLALCHEMY_DATABASE_URI = "{}+{}://{}:{}@{}:{}/{}?charset=utf8".format(DIALECT,
                                                                       DIRVER,
                                                                       USERNAME,
                                                                       PASSWORD,
                                                                       HOST,
                                                                       PORT,
                                                                       DATABASE)
SQLALCHEMY_TRACK_MODIFICATIONS = False
```

- 4.在主 app 文件中，添加配置文件：

```
app = Flask(__name__)
app.config.from_object(config)
db = SQLAlchemy(app)
```

- 5.做测试，看有没有问题：

```
db.create_all()
```

 	如果没有报错，说明配置没有问题，如果报错，就要更具错误进行修改

- 6.我的安装 mysql-python 报错了，mac下，如何解决？

