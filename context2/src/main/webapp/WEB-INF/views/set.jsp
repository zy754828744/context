<%--
  Created by IntelliJ IDEA.
  User: 张勇
  Date: 2018/2/13
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
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

    <title>设置</title>
</head>
<body>
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
        } else {
            $("#signin").show();
            $("#signup").show();
            $("#split").show();
            $("#usercontrol").hide();
            $("#username").text("登录后，方可看见更加博大的美食世界");
        }
    });
</script>


<style>
    input{
        max-width: 200px;
    }
    select{
        max-width: 150px;
    }
</style>
<nav class="navbar navbar-expand navbar-light fixed-top" style="clear: both">
    <div class="container">
        <!-- Brand/logo -->
        <a class="navbar-brand" href="javascript:void(0);">
            <img src="image/logo.png" style="width:60px;">
        </a>

        <!-- Links -->
        <ul class="navbar-nav justify-content-left float-left">
            <li class="nav-item active">
                <a class="nav-link " href="javascript:void(0);">首页</a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href="javascript:void(0);">美食课堂</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="javascript:void(0);">同城美食</a>
            </li>

        </ul>
        <ul class="right navbar-nav justify-content-end nav-pills">
            <form class="form-inline">
                <input class="form-control" type="text" placeholder="搜索内容">
                <button class="btn btn-success" type="button">搜索</button>
            </form>
            <li id="signin" class="nav-item" style="margin-left: 10px">
                <a href="<s:url value="/login"/> " class="nav-link">登录</a>
            </li>
            <span id="split" class="navbar-text">|</span>
            <li id="signup" class="nav-item">
                <a href="<s:url value="/regist"/> " class="nav-link">注册</a>
            </li>

            <li id="usercontrol" class="nav-item dropdown ">
                <a class="nav-link dropdown-toggle navbar-brand" data-toggle="dropdown" href="#">
                    <img class="img-circle" src="image/userimage.png" style="width: 40px;"/>
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="javascript:void(0);">个人主页</a>
                    <a class="dropdown-item" href="javascript:void(0);">账号管理</a>
                    <a class="dropdown-item" href="<s:url value="/loginout"/>">退出</a>
                </div>
            </li>
        </ul>

    </div>
</nav>

<div class="container"style="margin-top: 20px">
    <nav class="navbar navbar-light bg-light  navbar-transparent" role="navigation" style="width:18%;float: left">
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
                <a href="javascript:void(0);"  class="nav-link">全部</a>
            </li>
            <li class="nav-item">
                <a href="<s:url value="/attention" />" target="_blank" class="nav-link urlNav">关注</a>
            </li>
            <li class="nav-item">
                <a href="<s:url value="/share"/>" target="_blank" class="nav-link urlNav">我的美食分享</a>
            </li>
            <li class="nav-item">
                <a href="<s:url value="/class"/>" target="_blank" class="nav-link urlNav">我的美食课堂</a>
            </li>
            <li class="nav-item">
                <a href="<s:url value="/menu"/>" target="_blank" class="nav-link urlNav">我的菜谱</a>
            </li>
            <li class="nav-item">
                <a href="<s:url value="/chat"/>" target="_blank" class="nav-link urlNav">私信</a>
            </li>
            <li class="nav-item">
                <a href="<s:url value="/set"/>" target="_blank" class="nav-link urlNav" onclick="">设置</a>
            </li>
        </ul>
    </nav>
    <div class="card w-75" style="float: left;">
        <div class="mx-auto"><h4>设置</h4></div>
        <form method="post" class="card-body " action="<s:url value="/set"/>">
            <div  class="input-group mb-3 form-group">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="username-text">用户名</span>
                </div>
                <input type="text" class="form-control" placeholder="用户名" aria-describedby="username-text" name="username"/>
            </div>

            <div class="input-group mb-3 form-group">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="phoneNumber">手机号</span>
                </div>
                <input type="text" class="form-control" placeholder="手机号" aria-label="phoneNumber"
                       aria-describedby="phoneNumber" name="phonenumber"/>
            </div>

            <div  class="input-group mb-3 form-group">

                    <div class="input-group-prepend">
                        <span class="input-group-text" id="gender-text">性别</span>
                    </div>
                    <select class="form-control" id="gender-select" aria-describedby="gender-text" style="max-width: 80px" name="gender">
                        <option class="dropdown-item" value="男">男</option>
                        <option class="dropdown-item" value="女">女</option>
                    </select>

            </div>
            <div class="input-group mb-3 form-group">
                <div class="input-group-prepend" >
                    <span class="input-group-text" id="age">年龄</span>
                </div>
                <input type="text" class="form-control" placeholder="年龄" aria-label="age"
                       aria-describedby="age" name="age"/>
            </div>
            <div class="input-group mb-3 form-group">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="position">工作</span>
                </div>
                <select class="form-control" id="position-select" aria-describedby="position" name="position">
                    <option class="dropdown-item" value="其他">其他</option>
                    <option class="dropdown-item" value="美食评论员">美食评论员</option>
                    <option class="dropdown-item" value="大学生">大学生</option>
                    <option class="dropdown-item" value="白领">白领</option>
                    <option class="dropdown-item" value="厨师">厨师</option>
                </select>
            </div>

            <div  class="input-group mb-3 form-group">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="qqNumber-text">QQ</span>
                </div>
                <input type="text" class="form-control" placeholder="QQ号" aria-label="qqNumber-text"
                       aria-describedby="qqNumber-text" name="qqNumber" />

                <div class="input-group-prepend" style="margin-left: 40%">
                    <span class="input-group-text" id="email-text">邮箱</span>
                </div>
                <input type="email" class="form-control" placeholder="example@163.com" aria-label="email-text"
                       aria-describedby="email-text" name="email"/>
            </div>

            <div  class="input-group mb-3 form-group">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="privacy-text">资料可见性</span>
                </div>
                <select class="form-control" id="privacy-select" aria-describedby="privacy-text" name="privacy">
                    <option class="dropdown-item" value="所有人可见">所有人可见</option>
                    <option class="dropdown-item" value="仅自己可见">仅自己可见</option>
                </select>
            </div>
            <input type="submit" class="btn btn-primary float-right" value="保存"/>
        </form>
    </div>

</div>

</body>
</html>