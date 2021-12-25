<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<% 
  request.setCharacterEncoding("utf-8");
%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <%
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
java.util.Date currentTime = new java.util.Date();
String str_date = formatter.format(currentTime);
%>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/demo?useUnicode=true&characterEncoding=utf-8"
     user="root"  password="122333"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
html,body{
    height:100%;
}
    .form
    {

        width:50%;
        height:100%;
        position:relative;
        display:inline-block;
        float:left;
        }
            #main
    {

        width:50%;
        height:100%;
        position:relative;
        display:inline-block;
        float:left;
        }
     .page
     {
         width:100%;
         height:100%;
         display:inline-block;


         
         }
       table{
        margin-top: 30px;
       
       }
       table,tbody {
            border-style: none;
        border-color: inherit;
        border-width: 0;
        display: block;
            height: 100%;
            border-spacing: 0;
            border-collapse: collapse;
            cursor: default;
        margin-top: 3px;
    }

        tbody {
            overflow-y: scroll;
        }

        table thead,
        tbody tr {
            display: table;
            width: 100%;
            table-layout: fixed;
            
        }

        table thead {
            width: calc(100% - 1em)
        }

        table thead th {
            background: #84acde;
            width: 20%;
            color:white;
        }
        .main table thead th {
            background: green;
            width: 20%;
        }
        
        .form table thead th {
            background: red;
            width: 20%;
        }

        table tbody td {
            width: 20%;
            text-align: center;
        }
        
        table tr{
 			height:10px;       
        }
</style>
</head>
<body>
<div class="page">
<div id = "main" class="main">
<table border="1" width="100%">
<thead>
<tr><center><h1>Healthy</h1></center></tr>
<tr>
   <th>StudentID</th>
   <th>Name</th>
   <th>Date</th>
   <th>Fever</th>
   <th>Headache</th>
   <th>Temperature</th>
   <th></th>
</tr>
</thead>
<tbody>
<sql:query dataSource="${snapshot}" var="result2">
select daily.name,accountstudent.studentName,daily.date,daily.fever,daily.headache,daily.temperature from daily left join accountstudent on daily.name=accountstudent.studentID where date="<%=str_date%>" and Isolate="0";
</sql:query>
<c:forEach var="row2" items="${result2.rows}">
<tr>
   <form action="doStudent.jsp">
   <td class="style1"><input type="text" readonly="readonly" value=${row2.name} 
           style="width: 110px" id="Text1" name="name"></td>
   <td><c:out value="${row2.studentName}"/></td>
   <td><c:out value="${row2.date}"/></td>
   <td><c:out value="${row2.fever}"/></td>
   <td><c:out value="${row2.headache}"/></td>
   <td><c:out value="${row2.temperature}"/></td>
   <td><input type=submit value="Isolate"></td>
   </form>
</tr>
</c:forEach>
</tbody>
</table>
</div>

<div class="form">
<table border="1" width="100%">
<thead>
<tr><center><h1>In Isolation</h1></center></tr>
<tr>
   <th>StudentID</th>
   <th>Name</th>
   <th>Date</th>
   <th>Fever</th>
   <th>Headache</th>
   <th>Temperature</th>
   <th></th>
</tr>
</thead>
<tbody>
<sql:query dataSource="${snapshot}" var="result">
select daily.name,accountstudent.studentName,daily.date,daily.fever,daily.headache,daily.temperature from daily left join accountstudent on daily.name=accountstudent.studentID where date="<%=str_date%>" and Isolate="1";
</sql:query>
<c:forEach var="row" items="${result.rows}">
<tr>
   <form action="disisolation.jsp">
   <td class="style1"><input type="text" readonly="readonly" value=${row.name} 
           style="width: 110px" id="name" name="name"></td>
   <td><c:out value="${row.studentName}"/></td>
   <td><c:out value="${row.date}"/></td>
   <td><c:out value="${row.fever}"/></td>
   <td><c:out value="${row.headache}"/></td>
   <td><c:out value="${row.temperature}"/></td>
   <td><input type=submit value="disisolation"></td>
   </form>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</div>



</body>
</html>