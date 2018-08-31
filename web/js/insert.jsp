<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: ubd
  Date: 18-8-29
  Time: 下午6:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="shortcut icon" href="../image/second.jpeg" />
  <title>编辑</title>
  <link rel="stylesheet" type="text/css" href="../css/style3.css" />
</head>
<body>
<div>
  <ul id="functions">
    <li id="item1" class="item"></li>
    <li id="item2" class="item"><a href="../index.jsp" class="aTop">首页</a></li>
    <li id="item3" class="item"><a href="" class="aTop">计算</a></li>
    <li id="item4" class="item"><a href="" class="aTop">管理</a></li>
    <li id="item5" class="item"></li>
  </ul>
</div>
<div>
  <form action="store_into_article.jsp" method="post">
    标题:
    <input type="text" name="title">
    <br>
    <br>
    类别:
    <%
      try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/blogs?useUnicode=true&characterEncoding=utf8&useSSL=true";
        Connection connection = DriverManager.getConnection(url,"ubd","19380678");
        Statement statement = connection.createStatement();
        String sql = "select * from categorys";
        ResultSet resultSet = statement.executeQuery(sql);
        while (resultSet.next()) {
            String category = resultSet.getString("category");
            out.print("<input type=\"radio\" name=\"category\" value="+category+">"+category);
        }
        statement.close();
        connection.close();
      } catch (Exception e) {
        e.printStackTrace();
      }
    %>
    <br>
    <br>
    <script name="content" id="container" type="text/plain" ></script>
    <br>
    <input type="submit" value="保存">
  </form>
  <!-- 配置文件 -->
  <script type="text/javascript" src="../ueditor/ueditor.config.js"></script>
  <!-- 编辑器源码文件 -->
  <script type="text/javascript" src="../ueditor/ueditor.all.js"></script>
  <!-- 实例化编辑器 -->
  <script type="text/javascript">
      var editor = UE.getEditor('container');
  </script>
</div>
</body>
</html>