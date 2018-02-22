<%--
  Created by IntelliJ IDEA.
  User: 张勇
  Date: 2018/2/13
  Time: 21:03
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

    <title>关注</title>
</head>
<body background="image/homeback.jpg">

<script src="js/jquery-3.3.1.js"/>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script type="text/javascript">
    $(document).ready(function () {
        var islogined=<%=session.getAttribute("islogined")%>;

        if(islogined==null){
            islogined=false;
        }
        console.log("用户是否登录："+islogined);
        if(islogined){  //用户已经登录
            //var signin=document.getElementById("signin");
            $("#signin").hide();
            $("#signup").hide();
            $("#split").hide();
            $("#usercontrol").show();

            $("#username").text("<%=session.getAttribute("username")%>");
        }else{
            $("#signin").show();
            $("#signup").show();
            $("#split").show();
            $("#usercontrol").hide();
            $("#username").text("登录后，方可看见更加博大的美食世界");
        }
    })
</script>
<header>
    <nav class="navbar navbar-expand-md fixed-top navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Carousel</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">首页 <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">美食课堂</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">同城美食</a>
                </li>
            </ul>
            <form class="form-inline mt-2 mt-md-0">
                <input class="form-control mr-sm-2" type="text" placeholder="搜索" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">搜索</button>
            </form>

            <div id="signin" class="nav-item" style="margin-left: 10px">
                <a href="<s:url value="/login"/> " class="nav-link" >登录</a>
            </div>
            <span id="split" class="navbar-text">|</span>
            <div id="signup" class="nav-item">
                <a href="<s:url value="/regist"/> " class="nav-link" >注册</a>
            </div>
            <div id="usercontrol" class="nav-item dropdown d-inline-block">
                <a class="nav-link dropdown-toggle navbar-brand" data-toggle="dropdown" href="#">
                    <img class="img-circle" src="image/userimage.png" style="width: 40px;"/>
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="javascript:void(0);">个人主页</a>
                    <a class="dropdown-item" href="javascript:void(0);">账号管理</a>
                    <a class="dropdown-item" href="<s:url value="/loginout"/>">退出</a>
                </div>
            </div>
        </div>
    </nav>
</header>
<div class="container"style="margin-top: 20px">
    <nav class="navbar navbar-light bg-light leftNav  navbar-transparent" role="navigation" style="width:18%;">
        <ul class="navbar-nav" >
            <div class="card nav-item" style="width:100%;height:auto;" >
                <img class="card-img-top useriamge rounded img-responsive" src="image/userimage.png" alt="Card image" >
                <div class="card-body">
                    <h6 id="username" class="text-center card-title">用户名</h6>
                    <div class="card-text">
                        <nav class="navbar navbar-expand-md">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a href="javascript:void(0);" class="nav-link small">关注：20</a>
                                </li>
                                <span  class="navbar-text">|</span>
                                <li class="nav-item">
                                    <a href="javascript:void(0);" class="nav-link small">粉丝：30</a>
                                </li>

                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <li class="nav-item">
                <a href="<s:url value="/usershare"/>" target="_blank" class="nav-link urlNav">我的美食分享</a>
            </li>
            <li class="nav-item">
                <a href="<s:url value="/class"/>" target="_blank" class="nav-link urlNav">我的美食课堂</a>
            </li>
            <li class="nav-item">
                <a href="<s:url value="/menu"/>" target="_blank" class="nav-link urlNav">我的菜谱</a>
            </li>
        </ul>
    </nav>

</div>

<script src="js/jquery-3.3.1.js"/>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>