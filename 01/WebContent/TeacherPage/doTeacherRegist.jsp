<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>

<% 
  request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="teacherAccount" class="com.po.teacherAccount" scope="page"/>
<jsp:useBean id="accountRegistTeacher" class="com.dao.accountRegistTeacher" scope="page"/>
<jsp:setProperty property="*" name="teacherAccount"/>

<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  String result=accountRegistTeacher.teacherregist(teacherAccount);
  
  if(result=="registered successfully")
  {
     session.setAttribute("regist","Registered Successfully");
     response.sendRedirect("teacher.jsp");
     
  }
  else
  {	 session.setAttribute("regist",result);
     response.sendRedirect("teacher.jsp");
  }
%>