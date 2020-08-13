#  壁纸API设计



## 表设计

### 1.用户表：User

| id   | name | iphone      | icon             | upCount | score |
| ---- | ---- | ----------- | ---------------- | ------- | ----- |
| 1    | lxr  | 18083620407 | Null             | 1       | 5     |
| id   | 昵称 | 手机号      | 不为用户保存头像 | 上传数  | 积分  |



### 2.壁纸表：WallPaper

| Id     | Name     | searchKey | Category              | subCategory | imgUrl | thumbUrl | updateTime       | downCount |
| ------ | -------- | --------- | --------------------- | ----------- | ------ | -------- | ---------------- | --------- |
| 102020 | Naruto   | Naruto    | iPhone                | Anime       | bigUrl | smallUrl | 2020.08.13 17:13 | 100       |
| 102021 | OnePiece | OnePiece  | iPhone                | Anime       | bigUrl | smallUrl | 2020.08.13 17:13 | 100       |
| 102022 | LOL      | LOL       | iPhone                | GAME        | bigUrl | smallUrl | 2020.08.13 17:13 | 100       |
| 102023 | LOL      | LOL       | Computer              | GAME        | bigUrl | smallUrl | 2020.08.13 17:13 | 100       |
| id     | 图片名称 | 搜索词    | 手机/朋友圈/电脑/头像 | Anime       | 大图   | 缩略图   | 更新时间         | 下载数目  |











