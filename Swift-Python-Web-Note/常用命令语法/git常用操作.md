# Git的使用

## 一、安装GIT（略过毛线）

1.Git 各平台安装包下载地址为：http://git-scm.com/downloads

2.安装教程：

https://baijiahao.baidu.com/s?id=1663964231395886782&wfr=spider&for=pc



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
这一步骚操作一路三个回车，不用输入任何密码，求我输也不输
```

成功后，生成2个文件：`id_rsa`和`id_rsa.pub`。默认位于C:\Users\Administrator\i\.ssh文件夹中（win7

#### 3.添加ssh key到ssh-agent

1.开启ssh-agent

```
ssh-agent
```

2.先开启ssh-agent(如果使用的其他的桌面端或者其他什么工具，应该有对应的开启设置)。手动开启ssh-agent指令

```
eval $(ssh-agent -s)
```

3.添加ssh key 到ssh-agent中

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

这里虽然提交到了远端，但利用XCode拉下来的时候，在XCode工程里的引用是不可见的，所以需要手动拖进XCode里去



------

## 5.PyCharm使用git

1.按照上面的操作，在服务器和本机-Windows10安装好git，并配置好token

2.在PyCharm-->Settings->Version Control->Git->Path to Git xecutable:里添加git的安装路径git.exe

```
C:\Program Files\Git\cmd\git.exe
# 此为默认安装的路径，如果安装不在这里，就另说
```

3.点击右侧的Test测试是否能检测到Git版本号，能则成功

4.在PyCharm-->Settings->Version Control->GitHub里添加我的github账号，待打开网页后，输入密码完成认证

```
github：cl18083620407@163.com
```

5.确保本地主机Win10，和服务器都安上了虚拟环境Virtualenv，如果没有安上，参考Virtualenv那一章安好

6.在Win10在创建一个名为：`my_work_website`的工程，且选择已经存在的虚拟环境

7.在PyCharm把此项目创建为git工程:

```
第一步创建远端库：PyCharm-->VCS-->Create Git Repository
第二步将本地库与远端库关联：PyCharm-->VCS-->Import into Version Control-->Share Project on GitHub
```

8.在本地库Win10上的PyCharm提交代码：

```
第一步：提交到本地库：PyCharm-->VCS-->Commit
第二步：push到远端：PyCharm-->VCS-->Git-->Push
```

9.去GitHub上看看，这个`my_work_website`是否已经存在了，如果不存在，就检查一下操作

10.在服务器端的PyCharm把`my_work_website`给clone下来

```
PyCharm-->VCS-->Get from Version Control
```

11.分别在本地Win10和服务器端提交和更新一次，如果双方都能接收到彼此提交的代码，则说明没问题了