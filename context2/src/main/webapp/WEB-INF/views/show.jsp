<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 张勇
  Date: 2018/2/8
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户信息页</title>
</head>
<body>
<h1>恭喜您注册成功</h1>
    <p>账号</p><c:out value="${user.id}"/>
    <br/><p>用户名</p><c:out value="${user.username}"/>
    <br/><p>手机号</p><c:out value="${user.phoneNumber}"/>
    <br/><p>性别</p><c:out value="${user.gender}"/>
    <br/><p>年龄</p><c:out value="${user.age}"/>
</body>
</html>
