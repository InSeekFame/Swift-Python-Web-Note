# QLAlchemy数据库

### Mac和Windows下数据库安装：
#### Mac安装MySql:
```
下载网址：https://dev.mysql.com/downloads/mysql/
```

下载MySql的坑记录：

1.如何选以前的版本？：点这个--> [Looking for previous GA versions?]

2.选择版本，并点击下载后会跳转到新页面，在新页面点 [No Thinks, just start my download]下载



### MYSQL-python中间件的介绍与安装

见安装教程

### Flask-SQLAlchemy的介绍与安装

见安装教程

### Flask-Script的介绍与安装



### Flask-Migrate的介绍与安装



### Flask-Migrate管理数据库实例

#### 1.在models.py创建模型：

```
class UserModel(db.Model):
    __tablename__ = "users"
    id = db.Column(db.String(100),primary_key=True,autoincrement=True)
    username = db.Column(db.String(100),nullable=False)
    telephone = db.Column(db.String(11),nullable=False)
    password = db.Column(db.String(100),nullable=False)
```

#### 2.将模型导入mamage.py

```
from flask_script import Manager
from flask_migrate import Migrate,MigrateCommand
import config
from app import app
from exts import db
from models import UserModel,WallPaperModel,WallUserModel # 这一步是导入模型

app.config.from_object(config)
db.init_app(app)
#创建命令管理器
manager = Manager(app)
# 使用Migrate绑定app和db
migrate = Migrate(app,db)
# 添加迁移脚本的命令到manager中
manager.add_command('db',MigrateCommand)

if __name__ == "__main__":
    manager.run()


# db.create_all()
# 特别说明，本来是用db.create_all()，创建数据库表的，现在改成了用命令管理器来创建，
# 目前看不出优势在哪里，唯一看出的是增加了难度
```

#### 3.开始用命令安装

安装看上一步，后面补上

![image-20200813225036540](H:\gitwork\Swift-Python-Web-Note\Swift-Python-Web-Note\md图片\Flask-Scripts管理数据库_1)

#### 4.执行创建命令

![image-20200813225536683](H:\gitwork\Swift-Python-Web-Note\Swift-Python-Web-Note\md图片\Flask-Scripts管理数据库_2)

#### 4.给现有的表添加新字段

![image-20200813235156098](H:\gitwork\Swift-Python-Web-Note\Swift-Python-Web-Note\md图片\Flask-Scripts管理数据库_3)