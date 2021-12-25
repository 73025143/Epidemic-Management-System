<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:useBean id="showbbs" class="com.dao.showbbs" scope="page"/>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>lab7</title>
    <style type="text/css">
        body, div, h2, h3, ul, li, p {
            margin: 0;
            padding: 0;
        }

        a {
            text-decoration: none;
        }

            a:hover {
                text-decoration: underline;
            }

        ul {
            list-style-type: none;
        }

        body {
            color: #333;
            background: #3c3a3b;
            font: 12px/1.5 \5b8b\4f53;
        }

        #msgBox {
            width: 100%;
            background: #fff;
            border-radius: 5px;
            margin: 10px auto;
            padding-top: 10px;
        }

            #msgBox form h2 {
                font-weight: 400;
                font: 400 18px/1.5 \5fae\8f6f\96c5\9ed1;
            }

            #msgBox form {
                background: url() repeat-x 0 bottom;
                padding: 0 20px 15px;
            }

        #userName, #conBox {
            color: #777;
            border: 1px solid #d0d0d0;
            border-radius: 6px;
            background: #fff url(img/inputBG.png) repeat-x;
            padding: 3px 5px;
            font: 14px/1.5 arial;
        }

            #userName.active, #conBox.active {
                border: 1px solid #7abb2c;
            }

        #userName {
            height: 20px;
        }

        #conBox {
            width: 100%;
            resize: none;
            height: 65px;
            overflow: auto;
        }

        #msgBox form div {
            position: relative;
            color: #999;
            margin-top: 10px;
        }

        #msgBox img {
            border-radius: 3px;
        }

        #face {
            position: absolute;
            top: 0;
            left: 172px;
        }

            #face img {
                width: 30px;
                height: 30px;
                cursor: pointer;
                margin-right: 6px;
                opacity: 0.5;
                filter: alpha(opacity=50);
            }

                #face img.hover, #face img.current {
                    width: 28px;
                    height: 28px;
                    border: 1px solid #f60;
                    opacity: 1;
                    filter: alpha(opacity=100);
                }

        #sendBtn {
            border: 0;
            width: 112px;
            height: 30px;
            cursor: pointer;
            margin-left: 10px;
            background: url(images/btn.png) no-repeat;
        }

            #sendBtn.hover {
                background-position: 0 -30px;
            }

        #msgBox form .maxNum {
            font: 26px/30px Georgia, Tahoma, Arial;
            padding: 0 5px;
        }

        #msgBox .list {
            padding: 10px;
        }

            #msgBox .list h3 {
                position: relative;
                height: 33px;
                font-size: 14px;
                font-weight: 400;
                background: #e3eaec;
                border: 1px solid #dee4e7;
            }

                #msgBox .list h3 span {
                    position: absolute;
                    left: 6px;
                    top: 6px;
                    background: #fff;
                    line-height: 28px;
                    display: inline-block;
                    padding: 0 15px;
                }

            #msgBox .list ul {
                overflow: hidden;
                zoom: 1;
            }

                #msgBox .list ul li {
                    float: left;
                    clear: both;
                    width: 100%;
                    border-bottom: 1px dashed #d8d8d8;
                    padding: 10px 0;
                    background: #fff;
                    overflow: hidden;
                }

                    #msgBox .list ul li.hover {
                        background: #f5f5f5;
                    }

            #msgBox .list .userPic {
                float: left;
                width: 50px;
                height: 50px;
                display: inline;
                margin-left: 10px;
                border: 1px solid #ccc;
                border-radius: 3px;
            }

            #msgBox .list .content {
                float: left;
                width: 1188px;
                font-size: 14px;
                margin-left: 10px;
                font-family: arial;
                word-wrap: break-word;
            }

            #msgBox .list .userName {
                display: inline;
                padding-right: 5px;
            }

                #msgBox .list .userName a {
                    color: #2b4a78;
                }

            #msgBox .list .msgInfo {
                display: inline;
                word-wrap: break-word;
            }

            #msgBox .list .times {
                color: #889db6;
                font: 12px/18px arial;
                margin-top: 5px;
                overflow: hidden;
                zoom: 1;
            }

                #msgBox .list .times span {
                    float: left;
                }

                #msgBox .list .times a {
                    float: right;
                    color: #889db6;
                    display: none;
                }

        .tr {
            overflow: hidden;
            zoom: 1;
        }

            .tr p {
                float: right;
                line-height: 30px;
            }

            .tr * {
                float: left;
            }
    </style>
    <script type="text/javascript">


        function fnSend() {
            var form1 = document.getElementById('bbsForm');
            var val = document.getElementById("conBox").value;
            var reg = /^\s*$/g;
            if (reg.test(val)) {
                alert("随便说点什么吧！");
            }
            else {
                alert("成功");
                form1.submit();

            }
        };

 
</script>
</head>
<body>
<%  	
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
    <div id="msgBox">
        <form id="bbsForm" action="doSubmitBBS.jsp">
            <h2>Come on, tell us what you think</h2>
            <div><input id="conBox" class="f-text" name="content"></div>
            <div class="tr">
                <p>
                    <input type="button" onclick="fnSend()" value="submit">
                </p>
            </div>
        </form>
        <div class="list">
            <h3><span>People are saying: </span></h3>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3306/demo?useUnicode=true&characterEncoding=utf-8"
user="root"  password="122333"/>
<sql:query dataSource="${snapshot}" var="result">
SELECT * from bbs;
</sql:query>
            <ul>
            	 <c:forEach begin="0" end="${fn:length(show2)-1}" varStatus="stat" >
                <li>
                    
                    <div class="content">
                    	<p>${id.index}</p>
                        <div class="userName"><a href="javascript:;">${show2[stat.index][0]}(${show2[stat.index][1]})</a>:</div>
                        <div class="msgInfo">${show2[stat.index][2]}</div>
                        <div class="times"><span>${show2[stat.index][3]}</span><a class="del" href="javascript:;">delete</a></div>
                    </div>
                </li>
                </c:forEach>
            </ul>
        </div>
    </div>
    


</body>
</html>