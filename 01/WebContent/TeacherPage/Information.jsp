<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%  
	   int seterror=9;
	   if(session.getAttribute("seterror") != null) {  
		   seterror =Integer.parseInt(session.getAttribute("seterror").toString());
	   }  
 %> 
<!DOCTYPE html>
<html>
<head>
<style>
body{
 background:url("../Imagin/12.jpg");
 background-repeat:no-repeat;
 background-attachment:fixed;
 background-size:100%;
 background-color:White;
}

p{text-align: center;}

.demo
{    height: 400px; 
     width: 800px;
     opacity:0.8;
     background-color:White;
     margin-left:auto;
     position:relative;
     margin-right:auto;
     position:relative;
     margin-top:10px;
     
    }
.main
{   
    height:110%;
    width:100%;
    opacity:0.3;
    background-color:White;
    margin-top:0px;
    background-size:100%;
    position:fixed;
        top: -38px;
        left: 0px;
    }
   .student
   {
       position:relative;
       top:120px;
       left:150px;
       right:auto;
       }
.password   {
       position:relative;
       top:240px;
       left:150px;
       right:auto;
       }


    .style1
    {
        width: 334px;
    }


    .style2
    {
        width: 123px;
    }
 
</style>
<title>Information Setting</title>
     <% String StudentID= session.getAttribute("TeacherID").toString();
   		String loginUser = session.getAttribute("loginUserTeacher").toString();
   		String Telephone = session.getAttribute("TelephoneT").toString();   
   		String Age = session.getAttribute("AgeT").toString();  
 	%> 
 	<%if(seterror==-1) {%>  
	   			<body onload="javascript:window.alert('Failed to change information: the phone number already exists')">
	   <%}%>
</head>
<body>
<div class=main>
</div>
<h1 align="center"></h1>
<hr/>
<h1 align="center">Information Setting</h1>
<br>


<div class="demo" >
            <form name = "change" id = "change" action="setInfor.jsp" method="post">
            <center>
            <table style="height: 300px; width: 411px;">
                 <tr>
                  <td align="left" class="style1">Teacher ID</td>
                  <td align="left" class="style2"><span><%=StudentID%></span></td>
                </tr>  
                <tr>
                  <td align="left" class="style1">name</td>
                  <td align="left" class="style2"><input onkeyup="value=value.replace(/[\d]/g,'') "
                          onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[\d]/g,''))" 
                          maxlength=10 name="username" id="username" style="width: 105px" value=<%=loginUser%>></td>
                </tr>
                <tr>
                  <td align="left" class="style1">Age</td>
                  <td align="left" class="style2">
                      <input onkeyup="this.value=this.value.replace(/\D/g,'')" 
                          onafterpaste="this.value=this.value.replace(/\D/g,'')" name="age" id="age" 
                          style="width: 34px" value=<%=Age%>></td>
                </tr>
                <tr>
                  <td align="left" class="style1">telephone number</td>
                  <td align="left" class="style2">
                   <input type="text" name="telephone" id="telephone" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"
                          style="width: 183px; height: 24px" value=<%=Telephone%>></td>
                </tr>
            </table>
            <input type="submit" value="submit" class="login" style="cursor: pointer;"/>
            </center>  
            </form> 

</div>



</body>
</html>