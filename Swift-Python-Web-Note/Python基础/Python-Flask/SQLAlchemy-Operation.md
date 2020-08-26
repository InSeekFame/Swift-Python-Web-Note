

#  Flask-SQLAlchemy 数据库操作

## 1.创建表：

```
# article表：
class Article(db.Model):
    __tablename__ = 'article'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    title = db.Column(db.String(100), nullable=False)
    content = db.Column(db.Text, nullable=False)
```

说明：

![image-20200809123753454](/Users/luoxingrong/Desktop/我的作品/Swift-Python-Web-Note/Swift-Python-Web-Note/md图片/SQLALCHEMY 创建表.png)



## 2.增

```
 # 增
    article1 = Article(title='cl9421', content='bbb')
    # 添加对象到事务
    db.session.add(article1)
    # 提交事务
    db.session.commit()
```

## 3.查

```
    # 查
    # 查询所有匹配内容
    results = Article.query.filter(Article.title == 'cl9421').all()
    article1 = results[0]
    # 查单条数据
    article1 = Article.query.filter(Article.title == 'cl9421').first()
    print('id=',article1.id)
    print('title=', article1.title)
    print('content=', article1.content)
```

## 3.改

```
    # 改
    # 1.先把你要更改的数据查出来
    article1 = Article.query.filter(Article.title == 'cl9421').first()
    # 2.修改你想修改的内容
    article1.title = 'new_title'
    # 3.提交事务
    db.session.commit()
```

## 4.删

```
    # 删
    # 1.先把你要删除的数据查出来
    article1 = Article.query.filter(Article.content == 'bbb').first()
    # 2.删除这条数据
    db.session.delete(article1)
    # 3.提交事务
    db.session.commit()
```

