<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/5/19
  Time: 12:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆页面</title>
</head>
<body>

<form action="login" method="post">
    用户名：<input type="text" name ="uname" >请输入用户名<br>
    密码：<input type="password" name="password" >请输入密码<br>
    <input type = "submit" value="登陆"><span>${falseLogin}</span>
</form>


</body>
</html>
