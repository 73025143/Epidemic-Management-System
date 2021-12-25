

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:useBean id="Covid" class="com.dao.Covid" scope="page"/>
<jsp:useBean id="CovidDao" class="com.dao.CovidDao" scope="page"/>
<% 
  request.setCharacterEncoding("utf-8");
%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

	String arr[][]=Covid.getResult();
	request.setAttribute("arr", arr);
	for(int i=0;i<arr.length;i++) {
		CovidDao.submit(arr[i][0], arr[i][1], arr[i][2], arr[i][3], arr[i][4], arr[i][5]);
	}
%>
<%
	Map<String, String[]> resultmap =Covid.resultMap();
	String TaiwanC=resultmap.get("台湾")[1];
	String BeijinC=resultmap.get("北京")[1];
    String test = "200"; // JSP片段中定义变量
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
html,body{
    height:100%;
}
    .form
    {

        width:50%;
        height:100%;
        position:relative;
        display:inline-block;
        float:left;
        }
            #main
    {

        width:50%;
        height:100%;
        position:relative;
        display:inline-block;
        float:left;
        }
     .page
     {
         width:100%;
         height:100%;
         display:inline-block;
		 background:url("../Imagin/self.jpg");

         
         }
         
       table,tbody {
            border-style: none;
        border-color: inherit;
        border-width: 0;
        display: block;
            height: 100%;
            border-spacing: 0;
            border-collapse: collapse;
            cursor: default;
        margin-top: 3px;
    }

        tbody {
            overflow-y: scroll;
        }

        table thead,
        tbody tr {
            display: table;
            width: 100%;
            table-layout: fixed;
            
        }

        table thead {
            width: calc(100% - 1em)
        }

        table thead th {
            background: #84acde;
            width: 20%;
        }

        table tbody td {
            width: 20%;
            text-align: center;
        }
        
        table tr{
 			height:10px;       
        }
</style>
<script type="text/javascript" src="JS/echarts.min.js"></script>
<script type="text/javascript" src="JS/china.js"></script>
</head>
<body>
<div class="page">
<div id = "main"></div>

<div class="form">
<table border="1" width="100%">
<thead>
<tr>
   <th>province</th>
   <th>current</th>
   <th>confirmed</th>
   <th>suspected</th>
   <th>cured</th>
   <th>dead</th>
</tr>
</thead>
<tbody>
<c:forEach begin="0" end="${fn:length(arr)-1}"  varStatus="stat">
<tr>
   <td><c:out value="${arr[stat.index][0]}"/></td>
   <td><c:out value="${arr[stat.index][1]}"/></td>
   <td><c:out value="${arr[stat.index][2]}"/></td>
   <td><c:out value="${arr[stat.index][3]}"/></td>
   <td><c:out value="${arr[stat.index][4]}"/></td>
   <td><c:out value="${arr[stat.index][5]}"/></td>

</tr>
</c:forEach>
</tbody>
</table>
</div>
</div>



</body>
<script>
		var tmp = "<%=test %>";
        var myChart = echarts.init(document.getElementById('main'));
        // 指定图表的配置项和数据
        var option = {
        	//标题
            title: {
                text: 'China Current Confirmed Count'
            },
          	//提示框
            tooltip: {},
          	//系列
            series: [{
                name: 'current Confirmed Count',
                type: 'map',//地图
                map: 'china',
                data: [
			            {name:"南海诸岛",value:0},
			            {name: '北京', value: <%=BeijinC%>},
			            {name: '天津', value: <%=resultmap.get("天津")[1]%>},
			            {name: '上海', value: <%=resultmap.get("上海")[1]%>},
			            {name: '重庆', value: <%=resultmap.get("重庆")[1]%>},
			            {name: '河北', value: <%=resultmap.get("河北")[1]%>},
			            {name: '河南', value: <%=resultmap.get("河南")[1]%>},
			            {name: '云南', value: <%=resultmap.get("云南")[1]%>},
			            {name: '辽宁', value: <%=resultmap.get("辽宁")[1]%>},
			            {name: '黑龙江', value: <%=resultmap.get("黑龙江")[1]%>},
			            {name: '湖南', value: <%=resultmap.get("湖南")[1]%>},
			            {name: '安徽', value: <%=resultmap.get("安徽")[1]%>},
			            {name: '山东', value: <%=resultmap.get("山东")[1]%>},
			            {name: '新疆', value: <%=resultmap.get("新疆")[1]%>},
			            {name: '江苏', value: <%=resultmap.get("江苏")[1]%>},
			            {name: '浙江', value: <%=resultmap.get("浙江")[1]%>},
			            {name: '江西', value: <%=resultmap.get("江西")[1]%>},
			            {name: '湖北', value: <%=resultmap.get("湖北")[1]%>},
			            {name: '广西', value: <%=resultmap.get("广西")[1]%>},
			            {name: '甘肃', value: <%=resultmap.get("甘肃")[1]%>},
			            {name: '山西', value: <%=resultmap.get("山西")[1]%>},
			            {name: '内蒙古', value: <%=resultmap.get("内蒙古")[1]%>},
			            {name: '陕西', value: <%=resultmap.get("陕西")[1]%>},
			            {name: '吉林', value: <%=resultmap.get("吉林")[1]%>},
			            {name: '福建', value: <%=resultmap.get("福建")[1]%>},
			            {name: '贵州', value: <%=resultmap.get("贵州")[1]%>},
			            {name: '广东', value: <%=resultmap.get("广东")[1]%>},
			            {name: '青海', value: <%=resultmap.get("青海")[1]%>},
			            {name: '西藏', value: <%=resultmap.get("西藏")[1]%>},
			            {name: '四川', value: <%=resultmap.get("四川")[1]%>},
			            {name: '宁夏', value: <%=resultmap.get("宁夏")[1]%>},
			            {name: '海南', value: <%=resultmap.get("海南")[1]%>},
			            {name: '台湾', value: <%=TaiwanC %>},
			            {name: '香港', value: <%=resultmap.get("香港")[1]%>},
			            {name: '澳门', value: <%=resultmap.get("澳门")[1]%>}
			        ],
            itemStyle:{
                normal:{
                    color:function(params){
                    	if(params==0){
                    		return "white";
                    	}else if(params.value >0 && params.value <10){
                            return "#FFEBCD";
                        }else if(params.value >=10&& params.value<100 ){
                            return "pink";
                        }else if(params.value >=100&& params.value<500 ){
                            return "red";
                        }else if(params.value >=500&& params.value<1000 ){
                            return "IndianRed";
                        }else if(params.value >=1000&& params.value<10000 ){
                            return "Brown";
                        }else if(params.value >=10000 ){
                            return "#800000";
                        }
                        return "white";
                    }
                }
            }
            }]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
		//随机数函数
		function randomValue() {
            return 0;
        }

        </script>

</html>