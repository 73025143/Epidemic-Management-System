<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  <jsp:useBean id="showbbs" class="com.dao.showbbs" scope="page"/>
<%
    	List<String> list = new ArrayList<String>();
    	list.add("简单是可靠的先决条件");
    	list.add("兴趣是最好的老师");
    	list.add("知识上的投资总能得到最好的回报");
    	request.setAttribute("list", list);
    	request.setAttribute("list", list);
    	
    	String sa[]={"1","2","3","4"};
    	request.setAttribute("sa", sa);
    	
    	String show[]= showbbs.show();
    	String show2[][]=new String[show.length][4];
    	for(int i=0;i<show.length;i++){
    		String row[]=show[i].split("@");
    		for(int j=0;j<4;j++){
    			show2[i][j]=row[j];
    		}
    	}
    	request.setAttribute("show", show);
    	request.setAttribute("show2", show2);
 %>
 
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Jsp使用c:forEach遍历List集合</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
  	<%=show2[2][2] %>
     <b>遍历List集合的全部元素：</b>
     <br>
     <c:forEach items="${requestScope.list}" var="keyword" varStatus="id">
     	${id.index} ${keyword}<br>
     </c:forEach>
     <br>
     <b>遍历List集合中第一个元素以后的元素（不包括第一个元素）：</b>
     <br>
     <c:forEach items="${requestScope.list}" var="keyword" varStatus="id" begin="1">
		${id.index} ${keyword}<br>
     </c:forEach>
     
<c:forEach begin="0" end="${fn:length(sa)}" varStatus="stat" >
<div class="mess_content">${sa[fn:length(sa)-stat.index]}</div>
</c:forEach>

 <c:forEach begin="1" end="${fn:length(show2)-1}" varStatus="stat" >
  <tr>
    <td><div class="mess_t_l"><span>昵称: </span>${show2[stat.index][2]}</div></td> 
   </tr>
</c:forEach>
     








  </body>
</html>