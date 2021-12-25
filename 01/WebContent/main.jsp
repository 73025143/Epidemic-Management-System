<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%  
   String path = request.getContextPath();  
   String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum=1.0,minimum=1.0,user-scalable=0" />
    <title>Epidemic Management System</title>
  
    <script>
        eruda.init();
    </script>
    <script type="text/javascript" src="JS/vue@2.6.1.js"></script>
    <script type="text/javascript" src="JS/element-ui.2.15.1.js"></script>
    <link type="text/css" rel="stylesheet" href="CSS/element-ui.2.15.1.css">
	<script src="JS/vue.js"></script>
	<script src="JS/index.js"></script>
	<link rel="stylesheet" href="CSS/index.css">
    <style>
        .bgBackground {
            height: 100%;
            background-position: center center;
            /* -webkit-filter: blur(5px);
      -moz-filter:blur(5px);
      -o-filter:blur(5px);
      -ms-filter:blur(5px);
      filter:blur(5px); */
            position: fixed;
            width: 100%;
            background-size: 100% 100%;
        }
 
        .content {
            position: fixed;
            height: 600px;
            width: 100%;
   
        }
 
        .Title {
            text-align: center;
            font-size: 55px;
            font-weight: 1000;
            text-shadow: 1px 1px 2px rgba(104, 102, 100, 0.616);
            font-family: "PingFang SC";
            letter-spacing: 1px;
            position: relative;
            margin: 60px;
        }
 
        .Text {
            position: relative;
            margin: 0 auto;
            height: 400px;
            width: 600px;
            background: rgba(253, 253, 253, 0.75);
            border: rgb(148, 148, 148) 1px solid;
            border-radius: 10px;
        }
 
        .blank {
            height: 5px;
        }
 
        hr {
            height: 1px;
            border: none;
            background-color: rgb(148, 148, 148);
            filter: alpha(opacity=100, style=3);
            width: 95%;
            margin-bottom: 40px;
            bottom: 20px;
            position: relative;
 
        }
 
        .a {
            text-align: center;
            text-shadow: 0 0 1px rgba(255, 166, 0, 0.616);
            font-size: 50px;
            font-family: "PingFang SC";
            letter-spacing: 1px;
            position: relative;
            bottom: 15px;
        }
 
        .el-button {
            text-align: center;
            text-shadow: 0 0 1px rgba(255, 166, 0, 0.616);
            font-size: 50px;
            font-weight: 1000;
            width: 300px;
            height: 90px;
            font-weight: 170;
            font-family: "PingFang SC";
            letter-spacing: 3px;
            border-radius: 10px;
        }
 
        .el-row {
            padding-bottom: 30px;
            margin-left: 150px;
            bottom: 20px;
            position: relative;
        }
 
        body {
            padding: 0;
            margin: 0;
            font-family: "Microsoft YaHei UI Light";
        }
    </style>
</head>
 
<body>
    <div id="app">
 
        <div>
            <div :style="background" class="bgBackground">
            </div>
            <div class="content">
                <h1 :style="title" class="Title">Local Student
                    <div class="blank"></div>
                    Epidemic Management System
                </h1>
                <div :style="text" class="Text">
                    <h1 :style="a" class="a">Log In </h1>
                    <hr>
                    <el-row>
                        <a href="StudentPage/Student.jsp"><el-button type="primary" @click="addRoutes1" plain>Student</el-button></a>
                    </el-row>
                    <el-row>
                        <a href="TeacherPage/teacher.jsp"><el-button type="primary" @click="addRoutes2" plain>Teacher</el-button></a>
                    </el-row>
                </div>
            </div>
        </div>
 
    </div>
    <script>
        var Main = {
            data() {
                return {
                    background: {
                        // 背景图片地址
                        backgroundImage: 'url(Imagin/index.jpg)',
                        // 背景图片是否重复
                        backgroundRepeat: 'no-repeat',
                        // 背景图片大小
                        // backgroundSize: 'cover',
                        // // 背景颜色
                        // backgroundColor: '#000',
                        // 背景图片位置
                        backgroundPosition: 'center top',
                    }
                }
            },
            methods: {
                addRoutes1() {
                    this.$router.push('/one')
                },
                addRoutes2() {
                    this.$router.push('/ye2')
                }
 
            }
        }
 
        var Ctor = Vue.extend(Main)
        new Ctor().$mount("#app")
    </script>
</body>
 
</html>