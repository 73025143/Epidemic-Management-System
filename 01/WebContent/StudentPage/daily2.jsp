<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
 background:url("../Imagin/6.jpg");
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


</style>
<title>Self Detections</title>
 	<%  
	   String self = "";  
	   if(session.getAttribute("self") != null) {  
		   self = session.getAttribute("self").toString();
	   }     
	 %> 
	 <%if(!self.equals("")){ %>
    	   <body onload="javascript:window.alert('submit')">
     <%session.setAttribute("self","");}%>
</head>
<body>
<div class=main>
</div>
<h1 align="center"></h1>
<hr/>
<h1 align="center">Self Detection</h1>
<br>


<div class="demo" >
            <form name = "form1" id = "form1" action="doself.jsp" method="post">
            <center>
            <table style="height: 300px; width: 411px;"> 
                  <tr>
                  <td align="left" class="style1"></td>
                  <td align="left">Yes</td>
                  <td align="left">No</td>
                </tr> 
                <tr>
                  <td align="left" class="style1">Do you have fever?</td>
                  <td align="left"><input type="radio" name="fever" value="true" ></td>
                  <td align="left"><input type="radio" name="fever" value="false"></td>
                </tr>
                <tr>
                  <td align="left" class="style1">Do you have headache?</td>
                  <td align="left"><input type="radio" name="headache" value="true" /></td>
                  <td align="left"><input type="radio" name="headache" value="false"/></td>
                </tr>
                <tr>
                  <td align="left" class="style1">Please fill in your today temperature: </td>
                  <td align="left"><input type="text" id="num-a" name="temperature" onblur="checktempeture()"
                          style="width: 61px; height: 36px" /></td>
                </tr>
            </table>
			<input name="login" value="submit" type="button" onclick ="check()">
            </center>  
            </form> 

</div>



</body>
<script>
var form1 = document.getElementById('form1');
	function checktempeture(){
		 var val = document.getElementById("num-a").value;
        isNumber(val);
	}
 
    function isNumber(val) {
        if (val == "" || isNaN(val)) {
            alert("Not a valid number, please fill in the number!");
			return false;
        } else  if(val<22||val>48){
            alert("The temperature should be between 22 and 48");
			return false;
        }else{
			return true;
		}
		
    }
	
	function check(){
		var val = document.getElementById("num-a").value;
		if(isNumber(val)){
			form1.submit();
		}
	
	}
	
</script>
</html>