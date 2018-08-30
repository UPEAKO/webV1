<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
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
    <link rel="shortcut icon" href="image/second.jpeg" />
    <title>记录--语言的魅力</title>
    <link rel="stylesheet" type="text/css" href="css/style1.css" />
  </head>
  <body>
  <div id="top-part">
    <ul id="projects">
      <li><a href="" class="classification">linux</a></li>
      <li><a href="" class="classification">java</a></li>
      <li><a href="" class="classification">python</a></li>
      <li><a href="" class="classification">tomcat</a></li>
      <li><a href="" class="classification">apache</a></li>
      <li><a href="" class="classification">nginx</a></li>
      <li><a href="" class="classification">html</a></li>
      <li><a href="" class="classification">css</a></li>
      <li><a href="" class="classification">javascript</a></li>
    </ul>
  </div>
  <div id="median-part">
    <div id="median-left">
      <div>
        <img src="image/game3.gif_s400x0" width="75" height="50" style="margin-top: 15px;margin-left: 3px"/>
        <a href="js/login.jsp" id="login">登录</a>
      </div>
      <div>
        <img src="image/game2.gif_s400x0" width="75" height="50" style="margin-top: 15px;margin-left: 3px"/>
      </div>
      <div>
        <img src="image/game3.gif_s400x0" width="75" height="50" style="margin-top: 15px;margin-left: 3px"/>
      </div>
      <div>
        <img src="image/game4.gif_s400x0" width="75" height="50" style="margin-top: 15px;margin-left: 3px"/>
      </div>
      <div>
        <img src="image/game3.gif_s400x0" width="75" height="50" style="margin-top: 15px;margin-left: 3px"/>
      </div>
      <div>
        <img src="image/game5.gif_s400x0" width="75" height="50" style="margin-top: 15px;margin-left: 3px"/>
      </div>
      <div>
        <img src="image/game3.gif_s400x0" width="75" height="50" style="margin-top: 15px;margin-left: 3px"/>
      </div>
    </div>
    <div id="median-median">
      <div id="median-right-1">
        <%
          try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/blogs?useUnicode=true&characterEncoding=utf8&useSSL=true";
            Connection connection = DriverManager.getConnection(url,"ubd","19380678");
            Statement statement = connection.createStatement();
            //String sql1 = "insert into article values (6,'标题3','内容3')";
            //statement.executeUpdate(sql);
            String sql = "select * from article";
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
        %>
        <div class="introduce">
          <h5>
            <%
              out.print(resultSet.getString("head"));
            %>
          </h5>
          <%
            String str = resultSet.getString("context");
            String [] strs = str.split("\n");
            for (int i = 0; i < strs.length; i++) {
              out.print("<p>"+strs[i]+"</p>");
            }
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
        <script src="script/game1.js"></script>
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

