# Git的使用

## 一、安装GIT（过于简单略过）

## 二、配置git

#### 1.配置git的user name和email

打开 git bash,输入

```
    $ git config --global user.name "inSeekFame"
    $ git config --global user.email "cl18083620407@163.com"
```

#### 2.生成git的ssh

依旧是在git bash,输入

```
$ ssh-keygen -t rsa -C "cl18083620407@163.com"
```

成功后，生成2个文件：`id_rsa`和`id_rsa.pub`。默认位于C:\USERS\YOUR PC NAME\.ssh文件夹中（win7

#### 3.添加ssh key到ssh-agent

1.先开启ssh-agent(如果使用的其他的桌面端或者其他什么工具，应该有对应的开启设置)。手动开启ssh-agent指令

```
eval $(ssh-agent -s)
```

2.添加ssh key 到ssh-agent中

```
ssh-add ~/.ssh/id_rsa
```

#### 4.把ssh-key添加进github账号里！

在github官网的个人settings里找到SSH and GPG keys，然后点进去，点‘New SSH key’的绿按钮，把id_ras.pub内的全部内容全部粘进去就ok;

#### 5.测试是否成功

```
ssh -T git@github.com
```

注：参考网址：https://www.cnblogs.com/hamsterPP/p/5183380.html



## 3.项目的github操作

#### 1.clone项目

- [ ] 在需要存储项目的文件夹下如：`H:\gitwork`下执行`git clone git项目地址`

```
git clone git@github.com:InSeekFame/Swift-Python-Web-Note.git
```

#### 2.git pull操作

1.到有.git的文件夹下，右键：`git bash here`

2.命令行里执行： git pull

```
git pull
```

#### 3.提交操作：

```
# 添加全部
git add . 
# 提交全部
git commit -m '更新日志' 
#提交到服务器  
git push origin master
```

#### 4.特别说明：

这里虽然提交到了无端，但利用XCode拉下来的时候，在XCode工程里的引用是不可见的，所以需要手动拖进XCode里去