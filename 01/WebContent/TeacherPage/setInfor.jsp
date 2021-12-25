<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>

<% 
  request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="teacherInfor" class="com.po.teacherAccount" scope="page"/>
<jsp:useBean id="changeImformation" class="com.dao.changeImformation2" scope="page"/>
<jsp:setProperty property="*" name="teacherInfor"/>

<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  String TeacherID= session.getAttribute("TeacherID").toString();
  teacherInfor.setTeacherID(TeacherID);
   int result=changeImformation.submit(teacherInfor);
  if(result==1)
  {	    
	  session.setAttribute("loginUserTeacher",teacherInfor.getUsername());
	  session.setAttribute("TeacherID",teacherInfor.getTeacherID());
	  session.setAttribute("TelephoneT",teacherInfor.getTelephone());
	  session.setAttribute("AgeT",teacherInfor.getAge());
	  session.setAttribute("seterror",result);
      response.sendRedirect("Information.jsp");
     
  }else{
	  session.setAttribute("seterror",result);
	  response.sendRedirect("Information.jsp");
  }
  String s= teacherInfor.getTeacherID();
  String s2= teacherInfor.getTelephone();
%>
<!DOCTYPE html>
<html>
<body>
<%=result%>
</body>
</html>