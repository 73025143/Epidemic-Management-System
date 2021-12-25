<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum=1.0,minimum=1.0,user-scalable=0" />
    <title>vue online run</title>
    <script>
        eruda.init();
    </script>
	<link rel="stylesheet" href="https://unpkg.com/element-ui@2.13.2/lib/theme-chalk/index.css">
	<script src = "https://cdn.polyfill.io/v2/polyfill.min.js"></script>
	<script src="JS/vue.js"></script>
	<script src="JS/index.js"></script>
	<link rel="stylesheet" type="text/css" href="CSS/index2.css">
    <style>
        html,
        body,
        template {
            height: 100%;
			width: 100%;
            margin: 0;
        }
         body {
            font-family: 'Open Sans', Helvetica, Arial, sans-serif;
            background: #ededed;
			 background:url("../Imagin/four.jpg");
			 background-repeat:no-repeat;
			 background-attachment:fixed;
			 background-size:100%;
			 background-color:White;
        }
        .app
        {
            width:100%;
            }
 
        .bgBackground {
            background-size: 100% 100%;
            height: 100%;
            width: 100%
        }
 
        .left {
            float: left;
        }
 
        .title /deep/ .el-collapse-item__header {
            text-align: left;
            font-family: "PingFang SC";
            font-size: 18px;
            font-weight: bolder;
            color: black;
            flex: 1 0 auto;
            order: -1;
        }
 
        .title /deep/ .el-collapse-item__arrow.is-active {
            transform: rotate(-90deg);
            ;
        }
 
        .title /deep/ .el-collapse-item__arrow,
        .el-tabs__nav {
            transform: rotate(90deg);
        }
 
        .main {
     
            width:100%;
            height:100%;
            text-align: center;

        }
 
        h1 {
            position: relative;
   
            top: 45px;
            left: 318px;
            width: 1169px;
        }
 
        .Text {
            text-align: center;
            position: relative;
    
            top: 30px;
        }
 
        .Text1 {
   
            top: 0px;
            position: absolute;
            height: 100%;
            width: 19.5%;
            background: white;
            border: rgb(184, 12, 12) 0px solid;
        }
 
        .Text2 {

            top: 0px;
            position: absolute;
            height: 100%;
            width: 19.5%;
            background: white;
            border: rgb(184, 12, 12) 0px solid;
        }
 
        .Text3 {

            top: 0px;
            position: absolute;
            height: 100%;
            width: 19.5%;
            background: white;
            border: rgb(184, 12, 12) 0px solid;
        }
 
        .Text4 {

            top: 0px;
            position: absolute;
            height: 100%;
            width: 19.5%;
            background: white;
            border: rgb(184, 12, 12) 0px solid;
 
        }
 
        .Text5 {
            top: 119px;
            position: absolute;
            height: 54;
            left:10%;
            width: 80%;
            background: Blue;
            border: rgb(184, 12, 12) 0px solid;
            color: rgb(15, 13, 2);
            font-size: 34px;
            font-weight: 500;
            font-family: "PingFang SC";
            letter-spacing: 1px;
            opacity: 0.9;
            }
 
        .image {
            width: 1000px;
            border: 3px solid #545c64;
        }
 
        .el-menu {
            height: 100%;
            border-right: solid 1px white;
        }
 
        .el-col-12 {
            width: 22%;
        }
 
        .el-avatar {
            height: 100px;
            width: 100px;
        }
 
        .use {
            text-align: center;
            font-size: 24px;
            line-height: 24px;
            position: relative;
            top: 30px;
        }
 
        .user {
            text-align: center;
            margin: 50px 0 10px 0;
        }
 
        .hello {
            color: white;
            font-size: 20px;
            position: relative;
            top: -10px;
        }
 
        .el-menu-item {
            margin: 20px 0;
        }
 
        .title {
            font-size: 18px;
            position: relative;

        }
 
        .el-menu-item i {
            transform: scale(1.5, 1.5);
            position: relative;

        }
 
        .main i {
            transform: scale(1.2, 1.2);
            position: relative;

        }
 
        .content {
            font-size: 15px;
            text-align: left;
        }
    </style>
</head>
 
<body>
    <div id="app">
    
                          <h1>        Some protect measures against COVID-19 </h1>
       
            
               
                    <div class="main">

  
                        <div class="Text5">
                            <el-collapse v-model="activeName" accordion>
                                <el-collapse-item class="title" title="What is the COVID-19?" name="1">
                                    <div class="content">
                                        Coronavirus is a large family of viruses, and COVID-19 is pneumonia caused by a new type of coronavirus that has not been previously discovered in the human body. The COVID-19 can transmit from human to human, and it mainly transmits via respiratory droplets and contact, which have been already confirmed.
                                    </div>
                                </el-collapse-item>
                                <el-collapse-item class="title" title="What are the routes of transmission of pneumonia in the COVID-19 infection?" name="2">
                                    <div class="content">
                                        Direct transmission: patients sneeze, cough, talk droplet, exhale body close contact direct inhalation, can lead to infection.
                                    </div>
                                    <div class="content">
                                        Aerosol transmission, in which droplets mix in the air and form aerosols that can cause infection when inhaled.
                                    </div>
                                    <div class="content">
                                        Contact transmission: droplets deposit on the surface of the object, contact with contaminated hands, then contact mucous membranes such as oral cavity, nasal cavity and eyes, resulting in infection.
                                    </div>
                                </el-collapse-item>
                                <el-collapse-item class="title" title="What is a close contact?" name="3">
                                    <div class="content">
                                        1.People who live, study, work or have close contact with the case.
                                    </div>
                                    <div class="content">
                                        2.medical staff, family members or other persons who have similar close contact with the case without taking effective protective measures when diagnosing, treating, nursing or visiting the case.
                                    </div>
                                    <div class="content">
                                        3.Other patients and accompanying staff in the same ward as the case.
                                    </div>
                                    <div class="content">
                                        4.People who took the same vehicle with the case and had close contact with them.
                                    </div>
                                    <div class="content">
                                        5.Personnel who are assessed to meet the requirements after investigation by on-site investigators.
                                    </div>
                                </el-collapse-item>
                                <el-collapse-item class="title" title="What are the symptoms of COVID-19 infection?" name="4">
                                    <div class="content">
                                        Fever, fatigue, and dry cough are the most common symptoms. Some patients may also have a stuffy or runny nose, sore throat and diarrhea. Severe patients mostly suffer from difficulty in breathing and/or hypoxemia after one week of infection.
                                    </div>
                                </el-collapse-item>
                                <el-collapse-item class="title" title="What should you do with suspected symptoms?" name="5">
                                    <div class="content">
                                        When suspected symptoms emerge, especially on those who have traveled to or stayed in the seriously affected areas or have had close contacts with suspected or confirmed patients of the infection, please immediately go to seek medical assistance at designated fever clinics with proper protection measures.
                                    </div>
                                </el-collapse-item>
                                <el-collapse-item class="title" title="What kind of protective measures should we take in daily life?" name="6">
                                    <div class="content">
                                        During the epidemic period, please try to reduce outdoor activities as much as possible and try to avoid going to crowded public areas. Please have proper personal protection such as wearing a facial mask while going out. Wash your hands frequently and open the window for ventilation at intervals. When in the workplace, please keep the air fresh and regularly disinfect public goods. It’s necessary to keep a certain distance from each other.
                                    </div>
                                </el-collapse-item>
                                <el-collapse-item class="title" title="tips" name="7">
                                    <div class="content">
                                        1.Stay inside your premises as much as possible and do not gather in crowds for parties, meals or any other activities before the epidemic spread is over.
                                    </div>
                                    <div class="content">
                                        2.Reduce your exposure to public places. Do not go to airports, train stations or any other public place likely to have a crowd. Avoid close contact with anyone in public places. Wash your hands with soap and water for at least 20 seconds. Clean and disinfect objects and surfaces.
                                    </div>
                                    <div class="content">
                                        3.Report your visits or travel routes to your teacher or counsellor. Avoid close contact with anyone who has fever and cough. Or you shall be held accountable for any consequences.
                                    </div>
                                    <div class="content">
                                        4.Maintain good personal hygiene habits. Keep your dormitory rooms clean and ventilate well. Early to bed and early to rise. Eat your meals and do physical exercises regularly. Avoid close contact with anyone who has fever and cough.
                                    </div>
                                </el-collapse-item>
 
                            </el-collapse>
 
                        </div>
 
 
                    </div>
                

        </div>
 
 

    <script>
        var Main = {
            data() {
                return {
                    styObj: {
                        height: 0
                    },
                    background: {
                    	
                        // 背景图片地址
                        // 背景图片是否重复
                        backgroundRepeat: 'no-repeat',
                        // 背景图片大小
                        //backgroundSize: 'cover',
                        // 背景颜色
                        backgroundColor: '#000',
                        // 背景图片位置
                        backgroundPosition: 'center',
                        userName: '',
                        password: '',
                        isBtnLoading: false
                    },
                    activeName: '7'
                };
            },
            mounted() {
                window.addEventListener('resize', this.changeHeight);
                this.changeHeight();
                let _this = this // 声明一个变量指向Vue实例this，保证作用域一致
                this.timer = setInterval(() => {
                    _this.date = new Date(); // 修改数据date
                }, 1000)
            },
            beforeDestroy() {
                if (this.timer) {
                    clearInterval(this.timer);
                }
            },
            methods: {
                addRoutes1() {
                    this.$router.push('/ye3')
                },
                changeHeight() {
                    this.styObj.height = document.documentElement.clientHeight + 'px';
                },
                handleOpen(key, keyPath) {
                    console.log(key, keyPath);
                },
                handleClose(key, keyPath) {
                    console.log(key, keyPath);
                },
                goTo(path) {
                    this.$router.replace(path);
                },
                dateFormat(time) {
                    var date = new Date(time);
                    var year = date.getFullYear();
                    /* 在日期格式中，月份是从0开始的，因此要加0
                     * 使用三元表达式在小于10的前面加0，以达到格式统一  如 09:11:05
                     * */
                    var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
                    var day = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
                    var hours = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
                    var minutes = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
                    var seconds = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();
                    // 拼接
                    return year + "-" + month + "-" + day + " " + hours + ":" + minutes + ":" + seconds;
                }
            }
        };
 
        var Ctor = Vue.extend(Main)
        new Ctor().$mount("#app")
    </script>
</body>
 
</html>