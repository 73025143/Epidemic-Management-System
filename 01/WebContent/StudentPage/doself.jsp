<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>

<% 
  request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="UserDaily" class="com.po.UserDaily" scope="page"/>
<jsp:useBean id="dailyDao" class="com.dao.dailyDao" scope="page"/>
<jsp:setProperty property="*" name="UserDaily"/>

<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  String loginUser = "";  
  if(session.getAttribute("StudentIDS") != null) {  
     loginUser = session.getAttribute("StudentIDS").toString();  
  }

  
  UserDaily.setUsername(loginUser);
  if( dailyDao.submit(UserDaily)){
	  response.sendRedirect("daily2.jsp");
	  session.setAttribute("self","1");
  }else{
	  response.sendRedirect("daily2.jsp");
  }
  

%>