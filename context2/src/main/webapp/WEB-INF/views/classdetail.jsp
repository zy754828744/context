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

    <link rel="stylesheet" href="css/mystyle.css" type="text/css">
    <!-- Bootstrap CSS -->
    <!--<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">-->
    <link rel="stylesheet" href="css/bootstrap.css"/>

    <title>课堂详情</title>
</head>
<body>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
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

        var islogined =<%=session.getAttribute("islogined")%>;

        if (islogined == null) {
            islogined = false;
        }
        console.log("用户是否登录：" + islogined);
        if (islogined) {  //用户已经登录
            //var signin=document.getElementById("signin");
            $("#signin").hide();
            $("#signup").hide();
            $("#split").hide();
            $("#usercontrol").show();

            $("#username").text("<%=session.getAttribute("username")%>");

            $(".attentionCount").text("<%=session.getAttribute("attentionCount")%>");
            $(".fanCount").text("<%=session.getAttribute("fanCount")%>")
        } else {
            $("#signin").show();
            $("#signup").show();
            $("#split").show();
            $("#usercontrol").hide();
            $("#username").text("登录后，方可看见更加博大的美食世界");
        }

        //让广伟解决此BUG
        var has_dianzan = false;
        $(".dianzan").click(function () {
            //alert("用户点赞了");
            if (has_dianzan == false) {
                $(this).attr("src", "image/dianzan2.png")
                var s = $(this).next().text();
                var count = parseInt(s) + 1;
                $(this).next().text(count.toString());
                has_dianzan = true;
            } else {
                $(this).attr("src", "image/dianzan.png")
                var s = $(this).next().text();
                var count = parseInt(s) - 1;
                $(this).next().text(count.toString());
                has_dianzan = false;
            }

        })

        $(".evaluate").click(function () {
            $(".state-evaluate").show();
        })
    });

</script>


<style>
    .body-container {
        float: left;
        margin: 5px;
    }

    .leftNav {
        float: left;
    }

    li.classitem {
        list-style-type: none;
        margin: 20px;
        margin-bottom: 40px;
    }
</style>
<header>
    <nav class="navbar navbar-expand-md fixed-top navbar-dark bg-dark">
        <a class="navbar-brand" href="javascript:void(0);"><img src="image/logo1.png" alt="logo"
                                                                style="width:40px;"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
                aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="<s:url value="/home"/>">首页 <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<s:url value="/class"/>">美食课堂</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<s:url value="/location"/> ">同城美食</a>
                </li>
            </ul>
            <form class="form-inline mt-2 mt-md-0">
                <input class="form-control mr-sm-2" type="text" placeholder="搜索" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">搜索</button>
            </form>

            <div id="signin" class="nav-item" style="margin-left: 10px">
                <a href="<s:url value="/login"/> " class="nav-link">登录</a>
            </div>
            <span id="split" class="navbar-text">|</span>
            <div id="signup" class="nav-item">
                <a href="<s:url value="/regist"/> " class="nav-link">注册</a>
            </div>
            <div id="usercontrol" class="nav-item dropdown ">
                <a class="nav-link dropdown-toggle navbar-brand" data-toggle="dropdown" href="#">
                    <img class="img-circle" src="image/userimage.png" style="width: 40px;"/>
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="<s:url value="/userpage"/>">个人主页</a>
                    <a class="dropdown-item" href="<s:url value="/data/createstate"/>">创建动态</a>
                    <a class="dropdown-item" href="<s:url value="/set"/>">设置</a>
                    <a class="dropdown-item" href="<s:url value="/loginout"/>">退出</a>
                </div>
            </div>
        </div>
    </nav>
</header>
<main role="main">
    <div class="container-fluid" style="margin-top: 20px">
        <div class="card float-left" style="width: 20%">
            <h5 class="card-header bg-primary">
                课程列表
            </h5>
            <div class="card-body">
                <h6><img src="image/free.png"/>免费课程</h6>
                <ul class="list-group">
                    <li class="list-group-item">
                        <a href="javascript:void(0);"><span>1.课程简介</span></a>
                    </li>
                    <li class="list-group-item">
                        <a href="javascript:void(0);"><span>2.食材的挑选</span></a>
                    </li>
                    <li class="list-group-item">
                        <a href="javascript:void(0);"><span>3.火候的掌握</span></a>
                    </li>
                </ul>
                <h6 style="margin-top:20px "><img src="image/charg.png" alt="收费">收费课程</h6>
                <ul class="list-group">
                    <li class="list-group-item">
                        <a href="javascript:void(0);"><span>1.糖醋排骨</span></a>
                    </li>
                    <li class="list-group-item">
                        <a href="javascript:void(0);"><span>2.剁椒金针菇</span></a>
                    </li>
                    <li class="list-group-item">
                        <a href="javascript:void(0);"><span>3.秘制红烧肉</span></a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="float-left" style="width: 60%;margin:20px ">
            <h1>1.课程简介</h1>
            <div class="class_content">
                <video style="width: 90%" controls>
                    <source src="video/dayandnight.mp4" type="video/mp4">
                </video>  <br/>
                <span>这里是课程内容</span><br/>
                <img src="image/logo.png" alt="示例图片" style="max-width:80%;max-height:50%  "/>
            </div>
        </div>
    </div>
</main>
</body>
</html>