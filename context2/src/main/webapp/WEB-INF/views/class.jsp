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
    <title>美食课堂</title>
</head>
<body>

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
                <li class="nav-item active">
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
            <div id="usercontrol" class="nav-item dropdown">
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


<div class="container">
    <div id="demo" class="carousel slide w-100" data-ride="carousel">

        <!-- 指示符 -->
        <ul class="carousel-indicators">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1"></li>
            <li data-target="#demo" data-slide-to="2"></li>
        </ul>

        <!-- 轮播图片 -->
        <div class="carousel-inner w-100">
            <div class="carousel-item active w-100">
                <img class="img-fluid w-100" src="http://static.runoob.com/images/mix/img_fjords_wide.jpg">
            </div>
            <div class="carousel-item w-100">
                <img class="img-fluid w-100" src="http://static.runoob.com/images/mix/img_nature_wide.jpg">
            </div>
            <div class="carousel-item w-100">
                <img class="img-fluid w-100" src="http://static.runoob.com/images/mix/img_mountains_wide.jpg">
            </div>
        </div>

        <!-- 左右切换按钮 -->
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>

    </div>
    <div class="float-left card" >
        <div class="card-body">
            <div class="card">
                <h5 class="card-header bg-danger text-white">热门课堂</h5>
                <table class="table card-body">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>用户名</th>
                        <th>课堂名称</th>
                    </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th>1</th>
                            <th>First</th>
                            <th>MyCLass111</th>
                        </tr>
                        <tr>
                            <th>2</th>
                            <th>Second</th>
                            <th>MyClass222</th>
                        </tr>
                        <tr>
                            <th>3</th>
                            <th>Third</th>
                            <th>MyClass333</th>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="card">
                <h5 class="card-header bg-danger text-white">热门“美食家”</h5>
                <table class="table card-body">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>用户名</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th>1</th>
                        <th>First</th>

                    </tr>
                    <tr>
                        <th>2</th>
                        <th>Second</th>

                    </tr>
                    <tr>
                        <th>3</th>
                        <th>Third</th>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="float-right w-75" style="padding: 20px">
        <div class="h-75" style="padding-bottom: 100px">
            <div class="media">
                <img class="mr-3 rounded-circle" src="image/userimage.png" alt="Generic placeholder image" style="max-width: 50px;max-height: 50px">
                <div class="media-body">
                    <h5 class="mt-0">zgw</h5>
                    <span class="small"><%=new Date()%></span>
                </div>
            </div>
            <div>
                <span class="d-block" style="padding: 5px">这里是动态内容，拉啦啦！</span>
                <img src="image/logo.png" style="max-width:80%;max-height:90%;">
            </div>
        </div>

        <div class="h-75" style="padding-bottom: 100px">
            <div class="media">
                <img class="mr-3 rounded-circle" src="image/userimage.png" alt="Generic placeholder image" style="max-width: 50px;max-height: 50px">
                <div class="media-body">
                    <h5 class="mt-0">zgw</h5>
                    <span class="small"><%=new Date()%></span>
                </div>
            </div>

            <div>
                <span class="d-block" style="padding: 5px">这里是动态内容，拉啦啦！</span>
                <div class="clearfix">
                    <img src="image/userimage.png" class="float-left" style="max-width:40%;max-height:90%;">
                    <img src="image/logo.png" class="float-left" style="max-width:40%;max-height:90%;">
                </div>
            </div>

        </div>
        <div class="h-75" style="padding-bottom: 100px">
            <div class="media">
                <img class="mr-3 rounded-circle" src="image/userimage.png" alt="Generic placeholder image" style="max-width: 50px;max-height: 50px">
                <div class="media-body">
                    <h5 class="mt-0">zgw</h5>
                    <span class="small"><%=new Date()%></span>
                </div>
            </div>

            <div>
                <span class="d-block" style="padding: 5px">这里是动态内容，拉啦啦！</span>
                <video style="width: 90%" controls>
                    <source src="video/dayandnight.mp4" type="video/mp4">
                </video>
            </div>
        </div>
    </div>

</div>
<div>

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
</body>
</html>
