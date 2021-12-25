<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>

<% 
  request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="studentInfor" class="com.po.studentAccount" scope="page"/>
<jsp:useBean id="changeImformation" class="com.dao.changeImformation" scope="page"/>
<jsp:setProperty property="*" name="studentInfor"/>

<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  String StudentID= session.getAttribute("StudentIDS").toString();
  studentInfor.setStudentID(StudentID);
   int result=changeImformation.submit(studentInfor);
  if(result==1)
  {	     
	  session.setAttribute("loginUserS",studentInfor.getUsername());
	  session.setAttribute("StudentIDS",studentInfor.getStudentID());
	  session.setAttribute("TelephoneS",studentInfor.getTelephone());
	  session.setAttribute("MajorS",studentInfor.getMajor());
	  session.setAttribute("GradeS",studentInfor.getGrade());
	  session.setAttribute("seterror",result);
      response.sendRedirect("Information.jsp");
     
  }else{
	  session.setAttribute("seterror",result);
	  response.sendRedirect("Information.jsp");
  }
  String s= studentInfor.getStudentID();
  String s2= studentInfor.getTelephone();
%>
<!DOCTYPE html>
<html>
<body>
<%=result%>
</body>
</html>