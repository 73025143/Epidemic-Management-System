<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%String name= request.getParameter("name");%>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/demo?useUnicode=true&characterEncoding=utf-8"
     user="root"  password="122333"/>

<sql:update dataSource="${snapshot}" var="count">
  UPDATE daily SET Isolate = 0 WHERE name ="<%=name%>"
</sql:update>
<%response.sendRedirect("view_student.jsp");%>
