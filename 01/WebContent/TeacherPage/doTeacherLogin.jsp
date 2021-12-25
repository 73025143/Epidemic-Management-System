<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>

<% 
  request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="teacherAccount" class="com.po.teacherAccount" scope="page"/>
<jsp:useBean id="teacherAccountDao" class="com.dao.teacherAccountDao" scope="page"/>
<jsp:setProperty property="*" name="teacherAccount"/>

<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  
  
  if(teacherAccountDao.teacherLogin(teacherAccount))
  {
     session.setAttribute("loginUser",teacherAccount.getUsername());
     session.setAttribute("loginUserTeacher",teacherAccount.getUsername());
     session.setAttribute("StudentID",teacherAccount.getTeacherID());
     session.setAttribute("TeacherID",teacherAccount.getTeacherID());
     session.setAttribute("TelephoneT",teacherAccount.getTelephone());
     session.setAttribute("MajorT",teacherAccount.getMajor());
     session.setAttribute("AgeT",teacherAccount.getAge());
     response.sendRedirect("teacherPage.jsp");
     
  }
  else
  {	 session.setAttribute("login","false");
     response.sendRedirect("teacher.jsp");
  }
%>
