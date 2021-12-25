<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 	<%  
	   String login = "";  
	   if(session.getAttribute("login") != null) {  
		   login = session.getAttribute("login").toString();
	   }  
	 %> 
	 
	  	<%  
	   String regist="";  
	  	String s="";
	   if(session.getAttribute("regist") != null) {  
		   regist = session.getAttribute("regist").toString();
		   s="\"javascript:window.alert(\'"+session.getAttribute("regist").toString()+"\')\"";
	   }  
	 %> 
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum=1.0,minimum=1.0,user-scalable=0" />
    <title>Student Login</title>
    <script>
        eruda.init();
    </script>
    <script type="text/javascript" src="../JS/vue@2.6.1.js"></script>
    <script type="text/javascript" src="../JS/element-ui.2.15.1.js"></script>
    <link type="text/css" rel="stylesheet" href="../CSS/element-ui.2.15.1.css">
	<script src="../JS/vue.js"></script>
	<script src="../JS/index.js"></script>
	<link rel="stylesheet" href="CSS/index.css">
    <style>
        *,
        *:before,
        *:after {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
 
        .bgBackground {
            height: 100%;
            background-position: center center;
            position: fixed;
            width: 100%;
            background-size: 100% 100%;
        }
 
        body {
            font-family: 'Open Sans', Helvetica, Arial, sans-serif;
            background: #ededed;
			background:url("../Imagin/2.jpg");
			 background-repeat:no-repeat;
			 background-attachment:fixed;
			 background-size:100%;
			 background-color:White;
        }
 
        input,
        button {
            border: none;
            outline: none;
            background: none;
            font-family: 'Open Sans', Helvetica, Arial, sans-serif;
        }
 
        .tip {
            font-size: 20px;
            margin: 40px auto 50px;
            text-align: center;
        }
 
        .el-link {
            position: relative;
            left: 235px;
            top: -10px;
            color: grey;
        }
 
        .content {
            overflow: hidden;
            position: fixed;
            left: 50%;
            top: 50%;
            width: 900px;
            height: 550px;
            margin: -300px 0 0 -450px;
            background: rgba(243, 243, 243, 0.95);
            border-radius: 10px;
        }
 
        .form {
            position: relative;
            width: 640px;
            height: 100%;
            transition: -webkit-transform 0.6s ease-in-out;
            transition: transform 0.6s ease-in-out;
            transition: transform 0.6s ease-in-out, -webkit-transform 0.6s ease-in-out;
            padding: 50px 30px 0;
        }
 
        .sub-cont {
            overflow: hidden;
            position: absolute;
            left: 640px;
            top: 0;
            width: 900px;
            height: 100%;
            padding-left: 260px;
            background: #fff;
            transition: -webkit-transform 0.6s ease-in-out;
            transition: transform 0.6s ease-in-out;
            transition: transform 0.6s ease-in-out, -webkit-transform 0.6s ease-in-out;
        }
 
        .content.s--signup .sub-cont {
            -webkit-transform: translate3d(-640px, 0, 0);
            transform: translate3d(-640px, 0, 0);
        }
 
        button {
            display: block;
            margin: 0 auto;
            width: 260px;
            height: 36px;
            border-radius: 30px;
            color: #fff;
            font-size: 20px;
            cursor: pointer;
        }
 
        .img {
            overflow: hidden;
            z-index: 2;
            position: absolute;
            left: 0;
            top: 0;
            width: 260px;
            height: 100%;
            padding-top: 360px;
        }
 
        .img:before {
            content: '';
            position: absolute;
            right: 0;
            top: 0;
            width: 900px;
            height: 100%;
            background: url(../Imagin/loginStudent.jpg);
            background-size: cover;
            transition: -webkit-transform 0.6s ease-in-out;
            transition: transform 0.6s ease-in-out;
            transition: transform 0.6s ease-in-out, -webkit-transform 0.6s ease-in-out;
        }
 
        .img:after {
            content: '';
            position: absolute;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.6);
        }
 
        .content.s--signup .img:before {
            -webkit-transform: translate3d(640px, 0, 0);
            transform: translate3d(640px, 0, 0);
        }
 
        .img__text {
            z-index: 2;
            position: absolute;
            left: 0;
            top: 200px;
            width: 100%;
            padding: 0 20px;
            text-align: center;
            color: #fff;
            transition: -webkit-transform 0.6s ease-in-out;
            transition: transform 0.6s ease-in-out;
            transition: transform 0.6s ease-in-out, -webkit-transform 0.6s ease-in-out;
        }
 
        .img__text h2 {
            margin-bottom: 10px;
            font-size: 23px;
            font-weight: bolder;
        }
 
        .img__text p {
            position: relative;
            top: 10px;
            font-size: 18px;
            line-height: 1.5;
        }
 
        .content.s--signup .img__text.m--up {
            -webkit-transform: translateX(520px);
            transform: translateX(520px);
        }
 
        .img__text.m--in {
            -webkit-transform: translateX(-520px);
            transform: translateX(-520px);
        }
 
        .content.s--signup .img__text.m--in {
            -webkit-transform: translateX(0);
            transform: translateX(0);
        }
 
        .img__btn {
            overflow: hidden;
            z-index: 2;
            position: relative;
            top: -20px;
            width: 180px;
            height: 50px;
            margin: 0 auto;
            background: transparent;
            color: #fff;
            text-transform: uppercase;
            font-size: 20px;
            cursor: pointer;
        }
 
        .img__btn:after {
            content: '';
            z-index: 2;
            position: absolute;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            border: 2px solid #fff;
            border-radius: 30px;
        }
 
        .img__btn span {
            position: absolute;
            left: 0;
            top: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            height: 100%;
            transition: -webkit-transform 0.6s;
            transition: transform 0.6s;
            transition: transform 0.6s, -webkit-transform 0.6s;
        }
 
        .img__btn span.m--in {
            -webkit-transform: translateY(-72px);
            transform: translateY(-72px);
        }
 
        .content.s--signup .img__btn span.m--in {
            -webkit-transform: translateY(0);
            transform: translateY(0);
        }
 
        .content.s--signup .img__btn span.m--up {
            -webkit-transform: translateY(72px);
            transform: translateY(72px);
        }
 
        h2 {
            width: 100%;
            font-size: 26px;
            text-align: center;
        }
 
        h1 {
            font-size: 50px;
            text-align: center;
        }
 
        label {
            display: block;
            width: 260px;
            margin: 60px auto 0;
            text-align: center;
        }
 
        label span {
            font-size: 18px;
            color: #909399;
        }
 
        input {
            display: block;
            width: 100%;
            margin-top: 15px;
            padding-bottom: 5px;
            font-size: 16px;
            border-bottom: 1px solid rgba(0, 0, 0, 0.4);
            text-align: center;
        }
 
 
        .forgot-pass {
            margin-top: 15px;
            text-align: center;
            font-size: 12px;
            color: #cfcfcf;
        }
 
        .forgot-pass a {
            color: #cfcfcf;
        }
 
        .submit {
            margin-top: 60px;
            margin-bottom: 20px;
            height: 60px;
            width: 400px;
            background: #d4af7a;
            text-transform: uppercase;
        }
 
        .fb-btn {
            border: 2px solid #d3dae9;
            color: #8fa1c7;
        }
 
        .fb-btn span {
            font-weight: bold;
            color: #455a81;
        }
 
        .sign-in {
            transition-timing-function: ease-out;
        }
 
        .content.s--signup .sign-in {
            transition-timing-function: ease-in-out;
            transition-duration: 0.6s;
            -webkit-transform: translate3d(640px, 0, 0);
            transform: translate3d(640px, 0, 0);
        }
 
        .sign-up {
            -webkit-transform: translate3d(-900px, 0, 0);
            transform: translate3d(-900px, 0, 0);
        }
 
        .content.s--signup .sign-up {
            -webkit-transform: translate3d(0, 0, 0);
            transform: translate3d(0, 0, 0);
        }
    </style>
            <%if(login=="false"){ %>
    			<body onload="javascript:window.alert('The account or password is incorrect')">
    	    <% session.setAttribute("login","");}%>
    	    
    
			<%if(!regist.equals("")){ %>
    	    	<body onload="javascript:window.alert('<%=regist%>')">
    	    <%session.setAttribute("regist","");}%>>
    	    	 
    	 
    	   

</head>
 
<body>
    <div id="app">
 		
        <div>
            <div :style="background" class="bgBackground">
            </div>
            <div class="content">
            	<form action="doStudentLogin.jsp" method="post" name="studentLoginForm" id="studentLoginForm">
                <div class="form sign-in">
                    <h1>Welcome Back</h1>
                    <label>
                        <span>STUDENT ID</span>
                        <input  name="studentID" id="studentID"/>
                    </label>
                    <label>
                        <span>PASSWORD</span>
                        <input type="password" name="password" id="passwordLogin"/>
                    </label>
                    <button type="button" onclick="q1();" class="submit">Log In</button>
                    <el-link>forget password?</el-link>
                    
                </div>
                 </form>
                
                
                <div class="sub-cont">
                    <div class="img">
                        <div class="img__text m--up">
                            <h2>Not registered?</h2>
                            <p>Sign up now to find plenty of opportunities!</p>
                        </div>
                        <div class="img__text m--in">
                            <h2>Existing Account?</h2>
                            <p>Have account to log in. Long time no see!</p>
                        </div>
                        <div class="img__btn">
                            <span class="m--up">register</span>
                            <span class="m--in">log in</span>
                        </div>
                    </div>
 					
 					<form action="doStudentRegist.jsp" method="post" name="studentRegistForm" id="studentRegistForm">
                    <div class="form sign-up">
                        <h1>Register Immediately</h1>
                        <label style="position:relative;top:-30px;left:-160px">
                            <span>Student ID <input type="text" name="studentID" id="studentIDRegist" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" onblur="checkregistID()"></span>
                        </label>
                        <label style="position:relative;top:-153px;left:140px">
                            <span>Student Name</span>
                            <input type="text" name="username" id="username" onblur="checkname()"/>
                        </label>
                        <label style="position:relative;top:-190px;left:-160px">
                            <span>Grade</span>
                            <input type="text" onkeyup="this.value=this.value.replace(/\D/g,'')" 
                          onafterpaste="this.value=this.value.replace(/\D/g,'')" name="grade" id="grade" onblur="checkRegistGrade()"/>
                        </label>
                        <label style="position:relative;top:-313px;left:140px">
                            <span>Major</span>
                            <input type="text" name="major" id="major" onblur="checkRegistMajor()"/>
                        </label>
                        <label style="position:relative;top:-340px;left:-160px">
                            <span>Telephone</span>
                            <input type="text" name="telephone" id="telephone" onblur="checkRegistTele()"onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
                        </label>
                        <label style="position:relative;top:-463px;left:140px">
                            <span>Password</span>
                            <input type="text" name="password" id="password" onblur="checkRegistPassword()"/>
                        </label>
                        <button style="position:relative;top:-490px" type="button" onclick="q2();"class="submit">Register</button>
                        
                    </div>
                    </form>
                </div>
            </div>
        </div>
 
    </div>
    <span><p align="center"><font color = "red"> <%=regist%></font>!</p></span>
    <script>
        var Main = {
            name: 'login',
            data() {
                var validateAccount = (rule, value, callback) => {
                    if (value === '') {
                        return callback(new Error("账号不能为空"));
                    } else {
                        callback();
                    }
                };
                var validatePassword = (rule, value, callback) => {
                    if (value === '') {
                        callback(new Error('请输入密码'));
                    } else {
                        callback();
                    }
                };
                return {
                    background: {
                        // 背景图片地址
                        backgroundImage: 'url(' + require('../assets/2.jpg') + ')',
                        // 背景图片是否重复
                        backgroundRepeat: 'no-repeat',
                        // 背景图片大小
                        //backgroundSize: 'cover',
                        // 背景颜色
                        backgroundColor: '#000',
                        // 背景图片位置
                        backgroundPosition: 'center top',
                        userName: '',
                        password: '',
                        isBtnLoading: false
                    },
                    ruleForm: {
                        account: '',
                        password: '',
                    },
                    rules: {
                        account: [{
                            validator: validateAccount,
                            trigger: 'blur'
                        }],
                        password: [{
                            validator: validatePassword,
                            trigger: 'blur'
                        }]
                    }
                };
            },
            mounted() {
                this.$nextTick(() => {
                    document.querySelector('.img__btn').addEventListener('click', function() {
                        document.querySelector('.content').classList.toggle('s--signup')
                    })
                })
            },
            methods: {
 
                submitForm(formName) {
                    this.$refs[formName].validate((valid) => {
                        if (valid) {
                            if (this.ruleForm.account != "admin" || this.ruleForm.password != "123456") {
                                //只是为了做登录效果，所以账号密码写的固定的。
                                this.$message.error('账号密码不正确');
                                return false;
                            } else { //真正项目中登录成功之后，就可以用路由跳转页面
                                this.$message({
                                    message: '登陆成功',
                                    type: 'success'
 
                                });
                                //页面跳转
                                this.$router.push('/two');
                            }
                        } else {
                            this.$message.error('登录失败');
                            return false;
                        }
                    });
                },
 
                resetForm(formName) {
                    this.$refs[formName].resetFields();
                },
                addRoutes1() {
                    this.$router.push('/two')
                }
            }
        }
 
        var Ctor = Vue.extend(Main)
        new Ctor().$mount("#app")
       var form1 = document.getElementById('studentLoginForm');
        function q1(){
        	if(checkLoginPassword()){
        		form1.submit();
        	}
        }
  
        function checkLoginPassword(){
        	var val = document.getElementById("passwordLogin").value;
        	if (val == "") {
                alert("Please enter your password");
    			return false;
            } else  if(val.length<6){
                alert("The minimum length of the password is 6");
    			return false;
            }else{
    			return true;
    		}
        }
        	var form2 = document.getElementById('studentRegistForm');
            function q2(){
            	if(checkregistID()&&checkname()&&checkRegistGrade()&&checkRegistPassword()&&checkRegistTele()&&checkRegistMajor()){
            		form2.submit();
            	}
            }
      
            function checkRegistPassword(){
            	var val2 = document.getElementById("password").value;
            	if (val2 == "") {
                    alert("Please enter your password");
        			return false;
                } else  if(val2.length<6){
                    alert("The minimum length of the password is 6");
        			return false;
                }else{
        			return true;
        		}
       		 }
            
            function checkRegistTele(){
            	var tele = document.getElementById("telephone").value;
            	if (tele == "") {
                    alert("Please enter your telephone");
        			return false;
                } else  if(tele.length!=11&&tele.length!=7&&tele.length!=8){
                    alert("The length of telephone should be is 7, 8 or 11");
        			return false;
                }else{
        			return true;
        		}
       		 }
            
            function checkRegistMajor(){
            	var tele = document.getElementById("major").value;
            	if (tele == "") {
                    alert("Please enter your major");
        			return false;
                }else{
        			return true;
        		}
       		 }
            function checkRegistGrade(){
            	var tele = document.getElementById("grade").value;
            	if (tele == "") {
                    alert("Please enter your grade");
        			return false;
                }else if(tele!=1 &&tele!=2&&tele!=3&&tele!=4){
                    alert("The grade should be 1, 2, 3 or 4");
        			return false;
                }else{
        			return true;
        		}
       		 }
            function checkname(){
            	var tele = document.getElementById("username").value;
            	if (tele == "") {
                    alert("Please enter your Name");
        			return false;
                }else{
        			return true;
        		}
       		 }
            function checkregistID(){
            	var tele = document.getElementById("studentIDRegist").value;
            	if (tele == "") {
                    alert("Please enter your student ID");
        			return false;
                }else{
        			return true;
        		}
       		 }
        
        
        
    </script>
</body>
 
</html>
