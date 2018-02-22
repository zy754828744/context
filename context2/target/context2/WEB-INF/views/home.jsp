<%@ page import="java.util.Date" %>
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

    <title>首页</title>
</head>
<body background="image/homeback.jpg">

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="js/jquery-3.3.1.js"/>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<script type="text/javascript">
    $(document).ready(function(){

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

        //让广伟解决此BUG
        var has_dianzan=false;
        $(".dianzan").click(function () {
            //alert("用户点赞了");
            if(has_dianzan==false){
                $(this).attr("src","image/dianzan2.png")
                var s=$(this).parent().next().text();
                var count=parseInt(s)+1;
                $(this).parent().next().text(count.toString());
                has_dianzan=true;
            }else{
                $(this).attr("src","image/dianzan.png")
                var s=$(this).parent().next().text();
                var count=parseInt(s)-1;
                $(this).parent().next().text(count.toString());
                has_dianzan=false;
            }

        })

        $(".evaluate").click(function () {
            $(".state-evaluate").show();
        })
    });

</script>


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
                <li class="nav-item active">
                    <a class="nav-link" href="#">首页 <span class="sr-only">(current)</span></a>
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
                <a href="<s:url value="/login"/> " class="nav-link" >登录</a>
            </div>
            <span id="split" class="navbar-text">|</span>
            <div id="signup" class="nav-item">
                <a href="<s:url value="/regist"/> " class="nav-link" >注册</a>
            </div>
            <div id="usercontrol" class="nav-item dropdown ">
                <a class="nav-link dropdown-toggle navbar-brand" data-toggle="dropdown" href="#">
                    <img class="img-circle" src="image/userimage.png" style="width: 40px;"/>
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="<s:url value="/userpage"/>">个人主页</a>
                    <a class="dropdown-item" href="javascript:void(0);">账号管理</a>
                    <a class="dropdown-item" href="<s:url value="/loginout"/>">退出</a>
                </div>
            </div>
        </div>
    </nav>
</header>
<main role="main">
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
                <li class="nav-item">
                    <a href="<s:url value="/set"/>" target="_blank" class="nav-link urlNav">设置</a>
                </li>
            </ul>
        </nav>

            <div class="body-container float-left" style="width: 60%;margin-left: 10px">
                <div class="card">
                    <div class="card-body">
                        <div class="state-title">
                            <img src="image/userimage.png" class="rounded-circle head float-left" style="max-width: 50px;max-height: 50px;margin-right: 5px">
                            <div class="dropdown float-right">
                                <button type="button" style="border:0" class="btn  btn-outline-light btn-sm dropdown-toggle text-dark" data-toggle="dropdown">

                                </button>
                                <div class="dropdown-menu">
                                 <a class="dropdown-item small" href="#">收藏</a>
                                    <a class="dropdown-item small" href="#">隐藏此分享</a>
                                    <a class="dropdown-item small" href="#">不看他的分享</a>
                                </div>
                            </div>
                            <h6 class="userName">用户名</h6>
                            <h6 class="small"><%=new Date()%></h6>
                        </div>
                        <div class="state-body " style="margin-top: 10px">
                            <span class="state-text d-block">这里是动态消息，嘿嘿嘿！！！</span>
                            <div class="state-images text-center" style="margin-top: 10px">
                                <img src="image/logo.png" class="img-thumbnail state-image" style="width: 80%;max-height: 280px">
                            </div>

                        </div>
                        <div class="state-tail " style="margin-top: 20px">
                            <a href="javascript:void(0);">
                                <img  src="image/dianzan.png" alt="好吃" class="dianzan float-left mutual" style="max-width: 25px;max-height: 25px;margin-left: 20px">
                            </a>
                            <p  class="count small float-left text-muted" style="margin-top: 5px">1000</p><p class="small float-left text-muted" style="margin-top: 5px">人觉得好吃</p>
                            <a href="javascript:void(0);">
                                <img  src="image/evaluate.png" alt="评论" class="evaluate float-left mutual" style="max-width: 25px;max-height: 25px;margin-left: 20px">

                            </a>
                            <a href="javascript:void(0);">
                                <img src="image/share.png" alt="分享" class="share float-left mutual" style="max-width: 25px;max-height: 25px;margin-left: 20px">
                            </a>
                        </div>

                    </div>

                </div>
                <div class="card">
                    <div class="card-body">
                        <div class="state-title">
                            <img src="image/userimage.png" class="rounded-circle head float-left" style="max-width: 50px;max-height: 50px;margin-right: 5px">
                            <div class="dropdown float-right">
                                <button type="button" style="border:0" class="btn  btn-outline-light btn-sm dropdown-toggle text-dark" data-toggle="dropdown">

                                </button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item small" href="#">收藏</a>
                                    <a class="dropdown-item small" href="#">隐藏此分享</a>
                                    <a class="dropdown-item small" href="#">不看他的分享</a>
                                </div>
                            </div>
                            <h6 class="userName">用户名</h6>
                            <h6 class="small"><%=new Date()%></h6>
                        </div>
                        <div class="state-body " style="margin-top: 10px">
                            <span class="state-text d-block">这里是动态消息，嘿嘿嘿！！！</span>
                            <div class="state-images text-center" style="margin-top: 10px">
                                <img src="image/logo.png" class="img-thumbnail state-image" style="width: 80%;max-height: 280px">
                            </div>

                        </div>
                        <div class="state-tail " style="margin-top: 20px">
                            <a href="javascript:void(0);">
                                <img  src="image/dianzan.png" alt="好吃" class="dianzan float-left mutual" style="max-width: 25px;max-height: 25px;margin-left: 20px">
                            </a>
                            <p  class="count small float-left text-muted" style="margin-top: 5px">1000</p><p class="small float-left text-muted" style="margin-top: 5px">人觉得好吃</p>
                            <a href="javascript:void(0);">
                                <img  src="image/evaluate.png" alt="评论" class="evaluate float-left mutual" style="max-width: 25px;max-height: 25px;margin-left: 20px">

                            </a>
                            <a href="javascript:void(0);">
                                <img src="image/share.png" alt="分享" class="share float-left mutual" style="max-width: 25px;max-height: 25px;margin-left: 20px">
                            </a>
                        </div>
                    </div>

                </div>
                <div class="card">
                    <div class="card-body">
                        <div class="state-title">
                            <img src="image/userimage.png" class="rounded-circle head float-left" style="max-width: 50px;max-height: 50px;margin-right: 5px">
                            <div class="dropdown float-right">
                                <button type="button" style="border:0" class="btn  btn-outline-light btn-sm dropdown-toggle text-dark" data-toggle="dropdown">

                                </button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item small" href="#">收藏</a>
                                    <a class="dropdown-item small" href="#">隐藏此分享</a>
                                    <a class="dropdown-item small" href="#">不看他的分享</a>
                                </div>
                            </div>
                            <h6 class="userName">用户名</h6>
                            <h6 class="small"><%=new Date()%></h6>
                        </div>
                        <div class="state-body " style="margin-top: 10px">
                            <span class="state-text d-block">这里是动态消息，嘿嘿嘿！！！</span>
                            <div class="state-images text-center" style="margin-top: 10px">
                                <img src="image/logo.png" class="img-thumbnail state-image" style="width: 80%;max-height: 280px">
                            </div>

                        </div>
                        <div class="state-tail " style="margin-top: 20px">
                            <a href="javascript:void(0);">
                                <img  src="image/dianzan.png" alt="好吃" class="dianzan float-left mutual" style="max-width: 25px;max-height: 25px;margin-left: 20px">
                            </a>
                            <p  class="count small float-left text-muted" style="margin-top: 5px">1000</p><p class="small float-left text-muted" style="margin-top: 5px">人觉得好吃</p>
                            <a href="javascript:void(0);">
                                <img  src="image/evaluate.png" alt="评论" class="evaluate float-left mutual" style="max-width: 25px;max-height: 25px;margin-left: 20px">

                            </a>
                            <a href="javascript:void(0);">
                                <img src="image/share.png" alt="分享" class="share float-left mutual" style="max-width: 25px;max-height: 25px;margin-left: 20px">
                            </a>
                        </div>
                    </div>

                </div>
                <div class="card">
                    <div class="card-body">
                        <div class="state-title">
                            <img src="image/userimage.png" class="rounded-circle head float-left" style="max-width: 50px;max-height: 50px;margin-right: 5px">
                            <div class="dropdown float-right">
                                <button type="button" style="border:0" class="btn  btn-outline-light btn-sm dropdown-toggle text-dark" data-toggle="dropdown">

                                </button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item small" href="#">收藏</a>
                                    <a class="dropdown-item small" href="#">隐藏此分享</a>
                                    <a class="dropdown-item small" href="#">不看他的分享</a>
                                </div>
                            </div>
                            <h6 class="userName">用户名</h6>
                            <h6 class="small"><%=new Date()%></h6>
                        </div>
                        <div class="state-body " style="margin-top: 10px">
                            <span class="state-text d-block">这里是动态消息，嘿嘿嘿！！！</span>
                            <div class="state-images text-center" style="margin-top: 10px">
                                <img src="image/logo.png" class="img-thumbnail state-image" style="width: 80%;max-height: 280px">
                            </div>

                        </div>
                        <div class="state-tail " style="margin-top: 20px">
                            <a href="javascript:void(0);">
                                <img  src="image/dianzan.png" alt="好吃" class="dianzan float-left mutual" style="max-width: 25px;max-height: 25px;margin-left: 20px">
                            </a>
                            <p  class="count small float-left text-muted" style="margin-top: 5px">1000</p><p class="small float-left text-muted" style="margin-top: 5px">人觉得好吃</p>
                            <a href="javascript:void(0);">
                                <img  src="image/evaluate.png" alt="评论" class="evaluate float-left mutual" style="max-width: 25px;max-height: 25px;margin-left: 20px">

                            </a>
                            <%--<a href="javascript:void(0);">--%>
                                <img src="image/share.png" alt="分享" class="share float-left mutual" style="cursor:pointer;max-width: 25px;max-height: 25px;margin-left: 20px">
                            <%--</a>--%>
                        </div>
                    </div>

                </div>
            </div>
            <div class="float-right d-inline-block" style="width: 20%">
                <div class="card">
                    <div class="card-header text-center">
                        <h4>美食排行榜</h4>
                    </div>
                    <div class="card-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>名称</th>
                                    <th>热度</th>
                                </tr>
                            
                            </thead>
                            <tbody>
                                <tr class="bg-primary">
                                    <th>1</th>
                                    <th scope="row">重庆火锅</th>
                                    <th>12000</th>
                                </tr>
                                <tr>
                                    <th>2</th>
                                    <th>烤鸭</th>
                                    <th>10000</th>
                                </tr>
                                <tr>
                                    <th>3</th>
                                    <th>海鲜</th>
                                    <th>9996</th>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
</body>
</html>