<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%--
  Created by IntelliJ IDEA.
  User: ubd
  Date: 18-8-29
  Time: 下午7:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
  <link rel="shortcut icon" href="../image/second.jpeg" />
  <title>store-info</title>
</head>
<body>
<div>
  <%
    try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      String url = "jdbc:mysql://localhost:3306/blogs?useUnicode=true&characterEncoding=utf8&useSSL=true";
      Connection connection = DriverManager.getConnection(url,"ubd","19380678");
      Statement statement = connection.createStatement();
      String title = new String(request.getParameter("title").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
      String content = new String(request.getParameter("content").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
      String category = new String(request.getParameter("category").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
      String sql = "insert into article (title,content,category) values ('"+title+"','"+content+"','"+category+"')";
      int changes = statement.executeUpdate(sql);
      if (changes > 0)
        out.print("保存成功");
      else
        out.print("保存失败");
      statement.close();
      connection.close();
    } catch (Exception e) {
      e.printStackTrace();
    }
  %>
</div>
<div>
  <a href="../index.jsp">回到首页</a>
</div>
</body>
</html>
