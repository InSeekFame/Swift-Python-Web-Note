#  Mac常用命令

## 1.cd命令
### 一、cd / 是跳转到根目录

![image-20200807140836052](/Users/qiangge/Library/Application Support/typora-user-images/image-20200807140836052.png)

### 二、cd ~ 是跳转到当前用户的家目录
如果是root用户，cd ~ 相当于 cd /root
如果是普通用户，cd ~ 相当于cd /home/当前用户名

![image-20200807140757239](/Users/qiangge/Library/Application Support/typora-user-images/image-20200807140757239.png)

### 三、cd /home 相当于查看有多少普通用户的家目录
因为所有的普通用户的父目录都是home目录

Mac下用途暂时未知

![image-20200807140854045](/Users/qiangge/Library/Application Support/typora-user-images/image-20200807140854045.png)



## 2.open /usr 打开文件夹

### open /usr 打开/usr文件建

![image-20200807141338275](/Users/qiangge/Library/Application Support/typora-user-images/image-20200807141338275.png)



## 3. sudo rm -rf 删除文件夹

删除某个文件夹，要写明路径才有效

```bash
sudo rm /usr/local/mysql # 需要sudo权限
rm /usr/local/xxx # 不需要sudo权限
```



##  4.创建文件/文件夹

```bash
mkdir MyLib # 创建MyLib文件夹
touch 1.txt # 创建名为1.txt问文件，但不编辑
vi 2.txt # 创建名为1.txt问文件，并编辑它
```



