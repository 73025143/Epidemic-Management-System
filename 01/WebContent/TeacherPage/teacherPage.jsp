<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />
    	<link rel="stylesheet" href="https://unpkg.com/element-ui@2.13.2/lib/theme-chalk/index.css">
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	<script src="https://unpkg.com/element-ui@2.13.2/lib/index.js"></script>
	<script src = "https://cdn.polyfill.io/v2/polyfill.min.js"></script>
    <link rel="stylesheet" href="css/font-awesome.css" />
	<link rel="stylesheet" href="css/index.css" />
	<link rel="stylesheet" href="https://unpkg.com/element-ui@2.13.2/lib/theme-chalk/index.css">
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	<script src="https://unpkg.com/element-ui@2.13.2/lib/index.js"></script>
	<script src = "https://cdn.polyfill.io/v2/polyfill.min.js"></script>
	<script src="JS/vue.js"></script>
	<script src="JS/index.js"></script>
	<link rel="stylesheet" href="CSS/index.css">
<style>
li
{
    margin-top:40px;
    }
body{
	margin: 0 auto;
}
p{
	margin: auto;
}
li{
	list-style-type:none;
}
ul{
	padding: 0;
}
a:link {text-decoration:none;color: white;}
a:visited {text-decoration:none;color: white;}
a:hover {text-decoration:none;color: white;}
a:active {text-decoration:none;color: white;}

.head{
	height: 50px;
	background-color: #23262E;
	color: white;
}

.big-content .menu{
	position: fixed;
	top: 50px;
	left: 0;
	bottom: 0;
	width: 200px;
	background-color: #23262E;
}
.big-content .content{
	position: fixed;
            top: 50px;
            right: 0;
            bottom: 0;
            left: 200px;
            background-color: #F8F9FA;
            overflow: hidden;
            }

.head .logo img{
	width: 200px;
	height: 45px;
	float: left;
	margin-top: 3px;
	margin-left: 40px;
}

.head .zi {
	font-size: 30px;
	text-align: center;
}
.head .zi p{
	padding: 5px;
}


.big-content .menu ul{
	font-size: 25px;
	margin: 0;
	background-color: #2E2D3C;
	text-align: center;
	color: white;
}
.big-content .menu p{
	padding: 10px 0;

}
.big-content .menu li{
	font-size: 16px;
	line-height: 30px;
	background-color: #23262E;
	color: white;
}
.big-content .menu a{
	display: block;
}
.big-content .menu li:hover{
	background-color: #2F4056;
}

.big-content .content{
	border: 0 solid #DEE2E6;
}
.content-1{
	width: 100%;
	height: 100%;
	
}


</style>	

<title>Local Student Epidemic Management System</title>
</head>
<body>

<%  

   String loginUser = "";  
   if(session.getAttribute("loginUserTeacher") != null) {  
      loginUser = session.getAttribute("loginUserTeacher").toString();
      
   }else{
	   response.sendRedirect("teacher.jsp");
   }

 %> 

 <%
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
java.util.Date currentTime = new java.util.Date();
String str_date = formatter.format(currentTime);
%>


<div class="head">

			<div class="zi">
				<p>Epidemic Management System: Teacher Page</p>
			</div>
		</div>

		<div class="big-content">
			<div class="menu">
               <ul>
				
					<img src="images/1.jpg" alt="" />
					<span>Welcome! <span style="color:red"><%=loginUser%></span></span>
					<p style="font-size:10px">Today is <%=str_date%></p>
				


				<li onclick="report()" id="li1" style="backgroundColor:Orange">
					<a href="javascript:void(0)">
						<i class="el-icon-view"></i>
						<span>COVID-19 Report</span>
					</a>
				</li>
				
				<li onclick="bbs()" id="li2">
					<a href="javascript:void(0)">
						 <i class="el-icon-mobile-phone"></i>
						<span>Go To School BBS</span>
					</a>
				</li>
				
				<li onclick="view()" id="li3">
					<a href="javascript:void(0)">
						<i class="el-icon-view"></i>
						<span>view Stutent situation</span>
					</a>
				</li>
				
                <li onclick="Information()" id="li4">
					<a href="javascript:void(0)">
						<i class="el-icon-setting"></i>
						<span>Personal Information</span>
					</a>
				</li>
			</ul>
			</div>

                <div class="content">
				<iframe src="../report2.jsp" id="iframe" class="content-1" name="dd" frameborder="0"></iframe>
				
			
		</div>

        <script>
        var form1 = document.getElementById('iframe');
	function position(){
        document.getElementById("iframe").setAttribute("src", "../StudentPage/map/position.jsp");
	};
	function report(){
	    document.getElementById("iframe").setAttribute("src", "../report2.jsp");
        document.getElementById("li1").style.backgroundColor = "orange";
        document.getElementById("li2").style.backgroundColor = "#23262E";
        document.getElementById("li3").style.backgroundColor = "#23262E";
        document.getElementById("li4").style.backgroundColor = "#23262E";
        document.getElementById("li5").style.backgroundColor = "#23262E";
	};
	function self(){
	    document.getElementById("iframe").setAttribute("src", "");
	};
	function Information(){
	    document.getElementById("iframe").setAttribute("src", "Information.jsp");
        document.getElementById("li4").style.backgroundColor = "orange";
        document.getElementById("li2").style.backgroundColor = "#23262E";
        document.getElementById("li3").style.backgroundColor = "#23262E";
        document.getElementById("li1").style.backgroundColor = "#23262E";
        document.getElementById("li5").style.backgroundColor = "#23262E";
	};
	function guide(){
	    document.getElementById("iframe").setAttribute("src", "");
	};
	function bbs(){
	    document.getElementById("iframe").setAttribute("src", "bbs.jsp");
        document.getElementById("li2").style.backgroundColor = "orange";
        document.getElementById("li1").style.backgroundColor = "#23262E";
        document.getElementById("li3").style.backgroundColor = "#23262E";
        document.getElementById("li4").style.backgroundColor = "#23262E";
        document.getElementById("li5").style.backgroundColor = "#23262E";
	};
	function view(){
	    document.getElementById("iframe").setAttribute("src", "view_student.jsp");
        document.getElementById("li3").style.backgroundColor = "orange";
        document.getElementById("li2").style.backgroundColor = "#23262E";
        document.getElementById("li1").style.backgroundColor = "#23262E";
        document.getElementById("li4").style.backgroundColor = "#23262E";
        document.getElementById("li5").style.backgroundColor = "#23262E";
	};
	</script>

</body>
</html>

