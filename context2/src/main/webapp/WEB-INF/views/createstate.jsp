<%--
  Created by IntelliJ IDEA.
  User: 张勇
  Date: 2018/2/13
  Time: 21:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="css/mystyle.css" type="text/css">
    <!-- Bootstrap CSS -->
    <!--<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">-->
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <title>信息</title>
</head>
<body>
<script src="js/jquery-3.3.1.js"></script>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>

<style>
    .body-container{
        float: left;
        margin: 5px;
    }
    .leftNav{
        float: left;
    }

</style>

<header>
    <nav class="navbar navbar-expand-md fixed-top navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Carousel</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item ">
                    <a class="nav-link" href="<s:url value="/home"/>">首页 <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<s:url value="/class"/>">美食课堂</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">同城美食</a>
                </li>
            </ul>
            <form class="form-inline mt-2 mt-md-0">
                <input class="form-control mr-sm-2" type="text" placeholder="搜索" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">搜索</button>
            </form>
            <div id="usercontrol" class="nav-item dropdown">
                <a class="nav-link dropdown-toggle navbar-brand" data-toggle="dropdown" href="#">
                    <img class="img-circle" src="image/userimage.png" style="width: 40px;"/>
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="<s:url value="/userpage"/>">个人主页</a>
                    <a class="dropdown-item" href="<s:url value="/set"/>">账号设置</a>
                    <a class="dropdown-item" href="<s:url value="/loginout"/>">退出</a>
                </div>
            </div>
        </div>
    </nav>
</header>
<div class="container" style="margin-top: 20px">
    <img src="image/woldshare1.png" style="width: 50%;height: 20%;">
    <div class="card mx-auto" style="width: 75%">
        <h6 class="card-header"><span>分享自己的美食</span></h6>
        <div class="card-body">
            <form enctype="multipart/form-data" method="post">
                <div  class="input-group mb-3 form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="state-text">内容</span>
                    </div>
                    <input type="text" class="form-control" placeholder="请输入内容" aria-describedby="state-text" name="state_text"/>
                </div>
                <div  class="input-group mb-3 form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="state-img">图片</span>
                    </div>
                    <input type="file" accept="image/gif,image/jpeg,image/jpg,image/png" multiple class="form-control"aria-describedby="state-img" name="state_img"/>
                </div>
                <div  class="input-group mb-3 form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="state-video">视频</span>
                    </div>
                    <input type="file" accept="video/mp4,video/mpeg" multiple class="form-control"aria-describedby="state-video" name="state_video"/>
                </div>
                <input type="submit" class="btn btn-primary" value="发表"/>
                <input type="reset" class="btn btn-danger" value="重置"/>
            </form>
        </div>
    </div>
</div>
</body>
</html>