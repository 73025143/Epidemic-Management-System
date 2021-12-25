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
	background:url("../Imagin/bac.jpeg");
	color:Black;
}

.big-content .menu{
	position: fixed;
	top: 0px;
	left: 0;
	bottom: 0px;
	width: 200px;

	background:url("../Imagin/bac.jpeg");
	
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
	opacity:0.8;
	text-align: center;
	color: white;
}
.big-content .menu p{
	padding: 10px 0;
	color:black;

}
.big-content .menu li{
	font-size: 16px;
	line-height: 30px;
	background-color: #23262E;
	color: white;
}
.big-content .menu a{
	display: block;
        height: 55px;
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
   if(session.getAttribute("loginUserS") != null) {  
      loginUser = session.getAttribute("loginUserS").toString();
      
   }else{
	   response.sendRedirect("Student.jsp");
   }  
 %> 
 <%
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
java.util.Date currentTime = new java.util.Date();
String str_date = formatter.format(currentTime);
%>


<div class="head">

			<div class="zi">
				<p>Epidemic Management System</p>
			</div>
		</div>

<div class="big-content">
			<div class="menu">
               <ul>
				
					<img src="images/1.jpg" alt="" />
					<span style="color:black">Welcome! <span style="color:red"><%=loginUser%></span></span>
					<p style="font-size:10px">Today is <%=str_date%></p>
				

				<li onclick="position()" id="li1">
					<a href="javascript:void(0)">
						<i class="el-icon-position"></i>
						<span>Position</span>
					</a>
					
				</li>
				<li onclick="report()" id="li2">
					<a href="javascript:void(0)">
						<i class="el-icon-view"></i>
						<span>COVID-19 Report</span>
					</a>
				</li>
				<li onclick="guide()" id="li3">
					<a href="javascript:void(0)">
						<i class="el-icon-tickets"></i>
						<span> Guidelines Protection</span>
					</a>
				</li>
				<li onclick="self()" id="li4">
					<a href="javascript:void(0)">
						<i class="el-icon-edit"></i>
						<span>Self Detection</span>
					</a>
				</li>
				<li onclick="bbs()" id="li5">
					<a href="javascript:void(0)">
						 <i class="el-icon-mobile-phone"></i>
						<span>Go To School BBS</span>
					</a>
				</li>
                <li onclick="Information()" id="li6">
					<a href="javascript:void(0)">
						<i class="el-icon-setting"></i>
						<span>Personal Information</span>
					</a>
				</li>
			</ul>
			</div>

                <div class="content">
				<iframe src="map/position.jsp" id="iframe" class="content-1" name="dd" frameborder="0"></iframe>
				
			
		</div>

        <script>
            var form1 = document.getElementById('iframe');
            function position() {
                document.getElementById("iframe").setAttribute("src", "map/position.jsp");
                document.getElementById("li1").style.backgroundColor = "orange";
                document.getElementById("li2").style.backgroundColor = "#23262E";
                document.getElementById("li3").style.backgroundColor = "#23262E";
                document.getElementById("li4").style.backgroundColor = "#23262E";
                document.getElementById("li5").style.backgroundColor = "#23262E";
                document.getElementById("li6").style.backgroundColor = "#23262E";
            };
            function report() {
                document.getElementById("iframe").setAttribute("src", "../report2.jsp");
                document.getElementById("li2").style.backgroundColor = "orange";
                document.getElementById("li1").style.backgroundColor = "#23262E";
                document.getElementById("li3").style.backgroundColor = "#23262E";
                document.getElementById("li4").style.backgroundColor = "#23262E";
                document.getElementById("li5").style.backgroundColor = "#23262E";
                document.getElementById("li6").style.backgroundColor = "#23262E";
            };
            function self() {
              
                document.getElementById("iframe").setAttribute("src", "daily2.jsp");
                document.getElementById("li4").style.backgroundColor = "orange";
                document.getElementById("li1").style.backgroundColor = "#23262E";
                document.getElementById("li2").style.backgroundColor = "#23262E";
                document.getElementById("li3").style.backgroundColor = "#23262E";
                document.getElementById("li6").style.backgroundColor = "#23262E";
                document.getElementById("li5").style.backgroundColor = "#23262E";
            };
            function Information() {
                document.getElementById("iframe").setAttribute("src", "Information.jsp");
                document.getElementById("li6").style.backgroundColor = "orange";
                document.getElementById("li1").style.backgroundColor = "#23262E";
                document.getElementById("li2").style.backgroundColor = "#23262E";
                document.getElementById("li4").style.backgroundColor = "#23262E";
                document.getElementById("li3").style.backgroundColor = "#23262E";
                document.getElementById("li5").style.backgroundColor = "#23262E";
            };
            function guide() {
        
                document.getElementById("iframe").setAttribute("src", "measures.jsp");
                document.getElementById("li3").style.backgroundColor = "orange";
                document.getElementById("li1").style.backgroundColor = "#23262E";
                document.getElementById("li2").style.backgroundColor = "#23262E";
                document.getElementById("li4").style.backgroundColor = "#23262E";
                document.getElementById("li5").style.backgroundColor = "#23262E";
                document.getElementById("li6").style.backgroundColor = "#23262E";
            };
            function bbs() {
         
                document.getElementById("iframe").setAttribute("src", "bbs.jsp");
                document.getElementById("li5").style.backgroundColor = "orange";
                document.getElementById("li2").style.backgroundColor = "#23262E";
                document.getElementById("li3").style.backgroundColor = "#23262E";
                document.getElementById("li4").style.backgroundColor = "#23262E";
                document.getElementById("li1").style.backgroundColor = "#23262E";
                document.getElementById("li6").style.backgroundColor = "#23262E";
            };
	</script>

</body>
</html>

