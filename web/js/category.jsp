<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.sql.*" %>
<%--
  Created by IntelliJ IDEA.
  User: ubd
  Date: 18-8-25
  Time: 下午3:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
  <link rel="shortcut icon" href="../image/second.jpeg" />
  <title>记录--语言的魅力</title>
  <link rel="stylesheet" type="text/css" href="../css/style2.css" />
</head>
<body>
<div id="top-part">
  <ul id="functions">
    <li id="item1" class="item"></li>
    <li id="item2" class="item"><a href="../js/login.jsp" class="aTop">登录</a></li>
    <li id="item3" class="item"><a href="../index.jsp" class="aTop">首页</a></li>
    <li id="item4" class="item"><a href="" class="aTop">计算</a></li>
    <li id="item5" class="item"></li>
  </ul>
</div>
<div id="median-part">
  <div id="median-left">
    <div>
      <%
        try {
          Class.forName("com.mysql.cj.jdbc.Driver");
          String url = "jdbc:mysql://localhost:3306/blogs?useUnicode=true&characterEncoding=utf8&useSSL=true";
          Connection connection = DriverManager.getConnection(url,"ubd","19380678");
          Statement statement = connection.createStatement();
          String sql1 = "select * from categorys";
          ResultSet resultSet1 = statement.executeQuery(sql1);
      %>
      <ul>
        <%
          String temp = "category.jsp?category=";
          while (resultSet1.next()) {
            String current = resultSet1.getString("category");
            String baseUrl = temp + current;
            out.print("<li class=\"item-left\"><a href="+baseUrl+" class=\"aLeft\">"+current+"</a></li>");
          }
        %>
      </ul>
    </div>
  </div>
  <div id="median-median">
    <div id="median-right-1">
      <%
        String category = new String(request.getParameter("category").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
        String sql2 = "select * from article where category = '"+category+"'";
        ResultSet resultSet2 = statement.executeQuery(sql2);
        while (resultSet2.next()) {
      %>
      <div class="introduce">
        <h5>
          <%
            out.print(resultSet2.getString("title"));
          %>
        </h5>
        <%
          /*ueditor富文本编辑器上传到后端的是html源码字符串,直接打印就可展示效果,其中表情链接到百度自身网站的资源*/
          String str = resultSet2.getString("content");
          out.print(str);
        %>
      </div>
      <%
          }
          statement.close();
          connection.close();
        } catch (Exception e) {
          e.printStackTrace();
        }
      %>
    </div>
  </div>
  <div id="median-right">
    <canvas id="game1" height="1500" style="background-color:rgba(149,255,174,0);margin-top: 35px">
      您的浏览器不支持 HTML5 canvas 标签。
      <script src="../script/game1.js"></script>
    </canvas>
  </div>
</div>
<div id="bottom-part">
  <p id="foot">
    Copyright © 2018 ubd All Rights Reserved.
  </p>
</div>
</body>
</html>

