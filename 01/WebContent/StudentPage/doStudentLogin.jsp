<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>

<% 
  request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="studentAccount" class="com.po.studentAccount" scope="page"/>
<jsp:useBean id="studentAccountDao" class="com.dao.studentAccountDao" scope="page"/>
<jsp:setProperty property="*" name="studentAccount"/>

<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  
  
  if(studentAccountDao.studentLogin(studentAccount))
  {
     session.setAttribute("loginUser",studentAccount.getUsername());
     session.setAttribute("loginUserStudent",studentAccount.getUsername());
     session.setAttribute("StudentID",studentAccount.getStudentID());
     session.setAttribute("Telephone",studentAccount.getTelephone());
     session.setAttribute("Major",studentAccount.getMajor());
     session.setAttribute("Grade",studentAccount.getGrade());
     session.setAttribute("loginUserS",studentAccount.getUsername());
     session.setAttribute("loginUserStudentS",studentAccount.getUsername());
     session.setAttribute("StudentIDS",studentAccount.getStudentID());
     session.setAttribute("TelephoneS",studentAccount.getTelephone());
     session.setAttribute("MajorS",studentAccount.getMajor());
     session.setAttribute("GradeS",studentAccount.getGrade());
     response.sendRedirect("studentPage.jsp");
     
  }
  else
  {	 session.setAttribute("login","false");
     response.sendRedirect("Student.jsp");
  }
%>