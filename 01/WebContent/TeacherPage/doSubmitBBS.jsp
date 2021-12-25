<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>

<% 
  request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="bbsMassage" class="com.po.bbsMassage" scope="page"/>
<jsp:useBean id="insertToBbs" class="com.dao.insertToBbs" scope="page"/>
<jsp:setProperty property="*" name="bbsMassage"/>

<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  String StudentID= session.getAttribute("TelephoneT").toString();
  String loginUser = session.getAttribute("loginUserTeacher").toString();
  bbsMassage.setName(loginUser);
  bbsMassage.setStudentID(StudentID);
  insertToBbs.submit(bbsMassage);
  response.sendRedirect("bbs.jsp");
%>