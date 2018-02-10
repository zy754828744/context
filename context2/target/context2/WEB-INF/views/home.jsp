<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 张勇
  Date: 2018/2/7
  Time: 23:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/mystyle.css">
    <title>首页</title>
</head>
<body style="height: 1200px">

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<style>

    ul.right{
        float: right;
        margin-left: 35%;
    }

</style>

<nav class="navbar navbar-expand-md fixed-top">
    <div  class="container">
        <!-- Brand/logo -->
        <a class="navbar-brand" href="#">
            <img src="image/logo.png"  style="width:60px;">
        </a>

        <!-- Links -->
        <ul class="navbar-nav justify-content-center ">
            <li class="nav-item active">
                <a class="nav-link " href="#" >个人首页</a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href="#">美食课堂</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">同城美食</a>
            </li>

        </ul>
        <ul class="right navbar-nav justify-content-end nav-pills">
            <form class="form-inline">
                <input class="form-control" type="text" placeholder="搜索内容">
                <button class="btn btn-success" type="button">搜索</button>
            </form>
            <li class="nav-item" style="margin-left: 10px">
                <a href="<s:url value="/login"/> " class="nav-link" >登录</a>
            </li>
            <span class="navbar-text">|</span>
            <li class="nav-item">
                <a href="<s:url value="/regist"/> " class="nav-link" >注册</a>
            </li>
        </ul>
    </div>
</nav>
</body>
</html>