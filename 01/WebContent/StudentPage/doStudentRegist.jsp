<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>

<% 
  request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="studentAccount" class="com.po.studentAccount" scope="page"/>
<jsp:useBean id="accountRegistStudent" class="com.dao.accountRegistStudent" scope="page"/>
<jsp:setProperty property="*" name="studentAccount"/>

<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  String result=accountRegistStudent.studentregist(studentAccount);
  
  if(result=="registered successfully")
  {
     session.setAttribute("regist","Registered Successfully");
     response.sendRedirect("Student.jsp");
     
  }
  else
  {	 session.setAttribute("regist",result);
     response.sendRedirect("Student.jsp");
  }
%>