<%--
  Created by IntelliJ IDEA.
  User: ubd
  Date: 18-8-29
  Time: 下午6:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="shortcut icon" href="../image/second.jpeg" />
  <title>权限识别</title>
</head>
<body>
<%
  String user = request.getParameter("user");
  String password = request.getParameter("password");
  if (user.equals("ublog")&&password.equals("123456")) {
      //重定向,url改变且客户端传入的参数在下一jsp丢失
      response.sendRedirect("insert.jsp");
      //转发,浏览器url不变,且下一jsp保留了客户端传入的参数
      //request.getRequestDispatcher("insert.jsp").forward(request,response);
  }
  else {
      response.sendRedirect("login_fail.jsp");
      //request.getRequestDispatcher("login_fail.jsp").forward(request, response);
  }
%>
</body>
</html>
