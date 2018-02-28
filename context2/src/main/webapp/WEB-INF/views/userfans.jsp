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
                    <a class="dropdown-item" href="javascript:void(0);">个人主页</a>
                    <a class="dropdown-item" href="<s:url value="/set"/>">账号设置</a>
                    <a class="dropdown-item" href="<s:url value="/loginout"/>">退出</a>
                </div>
            </div>
        </div>
    </nav>
</header>
<div class="container" style="margin-top: 20px">
    <nav class="navbar navbar-light leftNav  navbar-transparent" role="navigation" style="width:18%;">
        <ul class="navbar-nav">

            <li class="nav-item active">
                <a href="javascript:void(0);" class="nav-link">我的粉丝</a>
            </li>
            <li class="nav-item">
                <a href="<s:url value="/userattentions" />" class="nav-link urlNav">我的关注</a>
            </li>

        </ul>
    </nav>
    <div class="float-left w-75">

        <ul class="list-group d-block w-100">
            <c:forEach var="item" items="${attentions}">

                <li class="list-group-item d-block w-100">

                    <div class="media">
                        <img class="mr-3 rounded-circle" src="image/userimage.png" alt="Generic placeholder image" style="max-width: 50px;max-height: 50px">
                        <div class="media-body">
                            <h5 class="mt-0"><a href="<s:url value="/userpage"/>"><c:out value="${item.username}"/></a> </h5>
                            <span class="small"><span class="strong">简介：</span><c:out value="${item.message}"/></span>
                            <button class="btn btn-sm btn-outline-danger float-right " >取消关注</button>
                            <span class="small text-success float-right" style="padding-top: 10px;padding-right: 10px">互相关注</span>
                        </div>
                    </div>

                </li>
            </c:forEach>
        </ul>
    </div>
</div>
</body>
</html>