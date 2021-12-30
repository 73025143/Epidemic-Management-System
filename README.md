# Epidemic-Management-System


### Database import

The database of this project is MySQL5.7.  
Use the official tool MySQL Workbench

- Create a new database 'demo'

- Run the SQL file in the 'SQL' directory

![image-20210126104338769](https://gitee.com/sanfene/picgo/raw/master/image-20210126104338769.png)

- Importing the database succeeded

![image-20210126104418329](https://gitee.com/sanfene/picgo/raw/master/image-20210126104418329.png)

### roject deployment
The development tool uses Eclipse.

- Idea 中 `File` --> `Open` 打开新`demo-java`

  ![image-20210126104812587](https://github.com/73025143/Epidemic-Management-System/blob/main/ReadMeImagine/2020050314061292.png)

![image-20210126104729099](https://gitee.com/sanfene/picgo/raw/master/image-20210126104729099.png)



- 加载依赖（这里配置了自动导入，没有配置的手动导入也可）

![image-20210126104952359](https://gitee.com/sanfene/picgo/raw/master/image-20210126104952359.png)



- 点击运行按钮，运行项目

  ![image-20210126105242781](https://gitee.com/sanfene/picgo/raw/master/image-20210126105242781.png)

![image-20210126105217071](https://gitee.com/sanfene/picgo/raw/master/image-20210126105217071.png)



### 4、前端开发部署

前端采用VS Code开发。

- 打开 `demo-vue`

![image-20210126105449915](https://gitee.com/sanfene/picgo/raw/master/image-20210126105449915.png)

![image-20210126105538321](https://gitee.com/sanfene/picgo/raw/master/image-20210126105538321.png)



- 打开终端，运行命令 `npm install` 加载依赖

![image-20210126105750698](https://gitee.com/sanfene/picgo/raw/master/image-20210126105750698.png)



- 在终端里运行命令 `npm run dev` 启动前端项目

![image-20210126105919673](https://gitee.com/sanfene/picgo/raw/master/image-20210126105919673.png)



### 5、系统访问

访问地址 `http://localhost:8080` ，就会跳转到登录页面，使用账号 zhagnsan/123 即可登录

![image-20210126110232003](https://gitee.com/sanfene/picgo/raw/master/image-20210126110232003.png)



