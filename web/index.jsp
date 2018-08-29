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
  <div id="left1-part">
    <div>
      <img class="sign" src="image/second.jpeg"/>
      <img class="sign" src="image/second.jpeg"/>
      <img class="sign" src="image/second.jpeg"/>
    </div>
    <div>
      <a href="js/login.jsp" id="login"><img src="image/first.jpeg" style="width: 30px;height: 30px"/></a>
      <p><strong>功能2</strong></p>
      <p><strong>功能3</strong></p>
      <p><strong>功能4</strong></p>
      <p><strong>功能5</strong></p>
      <p><strong>功能6</strong></p>
    </div>
  </div>
  <div id="right1-part">
    <ul id="projects">
      <li><a href="" style="background: #827e84" class="classification">linux</a></li>
      <li><a href="" class="classification">java</a></li>
      <li><a href="" class="classification">python</a></li>
      <li><a href="" class="classification">tomcat</a></li>
      <li><a href="" class="classification">apache</a></li>
      <li><a href="" class="classification">nginx</a></li>
      <li><a href="" class="classification">html</a></li>
      <li><a href="" class="classification">css</a></li>
      <li><a href="" class="classification">js</a></li>
      </ul>
    <div id="right1-part2">
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
        <%--写在一行防止首行缩进,但使用pre并非合适的方式
        <pre><%
          String temp = resultSet.getString("context");
          out.print(temp);%></pre>
        --%>
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
  <div style="clear: both"></div>
  <div id="foot">
    <p style="text-align: center">
      Copyright © 2018 ubd All Rights Reserved.
    </p>
  </div>
  </body>
</html>
