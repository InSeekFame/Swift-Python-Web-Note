#  iOS实战笔录



## 获取app图标

- 1.去阿里妈妈图标库里找-里面可以选择下载的像素

```
https://www.iconfont.cn/
```

- 2.打开电脑工具-调整图片大小

- 3.去AppIcon生成

```
https://appicon.co/#image-sets
```



## 用户数据-UserDefault





## 布局篇

### 1.XIB布局的布局的坑总结：

- 1.设置宽高比`Aspect Ratio`时，不要以为设置了就可以了，一定还要注意它乘数的比例`Multpiler`要设置为1

- 2.在XIB里设置约束比例时，`viewDidLoad`与`viewDidLayoutSubviews`都能获取到其宽高，但值不一样，一般以`viewDidLayoutSubviews`的值为准

  ```swift
    **override** **func** viewDidLoad() {
  
  ​    **super**.viewDidLoad()
  
  ​    print("viewDidLoad--height:\(companyBtn.frame.size.height)")
  
    }
  
    **override** **func** viewDidLayoutSubviews() {
  
  ​    **super**.viewDidLayoutSubviews()
  
  ​    print("viewDidLayoutSubviews--height:\(companyBtn.frame.size.height)")
  
  ​    personBtn.cornerRadius = personBtn.frame.size.height/2
  
  ​    companyBtn.cornerRadius = companyBtn.frame.size.height/2
  
    }
  #####输出打印：
  viewDidLoad--height:51.0
  viewDidLayoutSubviews--height:50.5
  
  ```

- 3.使用Stack View 布局时，内部的边距用的是spacing，而不要使用内容两个控件的left,right padding了

- 4.同样使用Stack View布局时，遇到高度要撑开的情况，比如号码输入框，这时只需要设定容器StackView高度，和固定的line高度就行了，如果还是撑不开，千万不要设置另一个的高度，而是应该考虑是不是spacing多的，把spacing设置为0就行了

- 5.Stack View布局总之一句话，内距问spacing，高度问容器

- 6.Stack View容器里的视图，左右默认是不会被撑开的，这一点对有内容的视图如Lable，TextField这些基本没影响，但如果里面放一个没有意思的视图，如单纯的分割线，如果你不设置宽度的话，根本就不会被撑开来，这一点折腾了一个小时，以后切记

- 7.StackView嵌套内容默认是撑满的，所以不要想着在StackView的子StackView下的子视图下设置宽高

