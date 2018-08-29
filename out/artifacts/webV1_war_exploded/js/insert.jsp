<%--
  Created by IntelliJ IDEA.
  User: ubd
  Date: 18-8-29
  Time: 下午6:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>编辑</title>
</head>
<body>
<p>
  <strong>
    欢迎!登录成功!
  </strong>
</p>
<div>
  <form action="store_into_article.jsp" method="post">
    标题:<br>
    <input type="text" name="title">
    <br>
    内容:<br>
    <textarea name="context" rows="20" cols="75"></textarea>
    <br>
    <input type="submit" value="保存">
  </form>
</div>
</body>
</html>