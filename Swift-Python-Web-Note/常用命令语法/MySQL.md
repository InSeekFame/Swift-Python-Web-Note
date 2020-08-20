#  MySQL常用命令总结

- 1.登录数据库：

```
mysql -u root -p
password: qkr6#&pqM3xM # 这是安装得到的初始密码，先登录进去，再想办法修改密码
```

- 2.修改初始密码：

```
这一步要进入 mysql 才能修改
mysql> mysqlassword for root@localhost = password('942100426');
其他修改数据库的方法再 Google 很多，不写了
```

- 3.查看有几个 数据库：

```
show database;
```

- 4.使用某个数据库：

```
use db_demo;
```

- 5.查看某数据库下有几张表：

```
show tables;
```

- 6.查看某张表的字段内容：

```
desc student;   # student 是表名
```

- 7.删除一张表：

```
drop table student;   # student 是表名
```

8.创建一个数据库



