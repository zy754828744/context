<%--
  Created by IntelliJ IDEA.
  User: 张勇
  Date: 2018/2/8
  Time: 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <title>用户注册</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/mystyle.css">
</head>
<body class="text-center" background="image/back1.jpg">
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<div class="card form-container">
    <div class="card-body">
    <form method="post" class="form-signin">
        <img src="image/logo.png" class="mb-3" width="72" height="72">
        <div class="form-group">
            <label for="username" class="sr-only">用户名：</label><input class="form-control" id="username" type="text" placeholder="用户名" name="username"  required autofocus>
        </div>
        <div class="form-group">
            <label for="password" class="sr-only">密  码：</label><input class="form-control" id="password" type="password" placeholder="密码" name="password"  required>
        </div>
        <div class="form-group">
            <label for="gender" class="sr-only">确认密码：</label><input class="form-control" id="gender" type="text" name="gender" placeholder="确认密码"  required><br/>
        </div>

        <input id="submit" type="submit" value="注册" class="btn btn-primary">

    </form>
    </div>
</div>
</body>
</html>
