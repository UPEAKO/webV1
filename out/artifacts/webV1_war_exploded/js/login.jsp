<%--
  Created by IntelliJ IDEA.
  User: ubd
  Date: 18-8-29
  Time: 下午3:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="shortcut icon" href="../image/second.jpeg" />
  <title>login--blog</title>
  <link rel="stylesheet" type="text/css" href="../css/style2.css" />
</head>
<body style="text-align: center;margin-top: 200px">
<form action="../js/permission.jsp" method="post">
  账号:
  <input type="text" name="user">
  <br>
  密码:
  <input type="password" name="password">
  <br>
  <input type="submit" value="登录" style="margin-top: 3px">
</form>
</body>
</html>
