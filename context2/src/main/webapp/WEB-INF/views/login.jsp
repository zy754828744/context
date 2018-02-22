<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 张勇
  Date: 2018/2/10
  Time: 18:08
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
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/mystyle.css">

    <title>登录</title>
</head>
<body class="text-center" background="image/back1.jpg">
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <div class="card form-container ">
        <div class="card-body">
        <form method="post" class="form-signin" action="<s:url value="/login"/>">
            <img src="image/logo.png" class="mb-3" width="72" height="72">
            <div class="form-group">
                <label for="username" class="sr-only">用户名：</label><input class="form-control" id="username" type="text" placeholder="用户名" name="username"  required autofocus>
                <span class="spa spa1"></span>
            </div>
            <div class="form-group">
                <label for="password" class="sr-only">密  码：</label><input class="form-control" id="password" type="password" placeholder="密码" name="password"  required>
                <span class="spa spa2"></span>
            </div>
            <a href="<s:url value="/regist"/>" class=" small "><p class="text-left" style="color: #ff0000">没有账号?点击快速注册</p></a>
            <input id="submit" type="submit" value="登录" class="btn btn-primary">

        </form>
        </div>
    </div>

<script type="text/javascript">
    // $(document).ready(function () {
    //     /************************  失焦判断  **********************************/
    //     $("input").blur(function(){
    //         $(".spa").css("color","#BD362F")
    //         if($(this).is("#username")){             //姓名判断
    //             var na=/^[\u4E00-\u9FA5]{2,4}$/
    //             if($("#username").val()!=""){
    //                 if(!(na.test($("#username").val()))){
    //                     $(".spa1").text("请输入2-4个汉字");
    //                     $(this).css("border","1px solid #BD362F")
    //                     return false;
    //                 }else if(na){
    //                     $(".spa1").text("");
    //                     return true;
    //                 }
    //             }else{
    //                 $(".spa1").text("");
    //             }
    //         }
    //         if($(this).is("#userphone")){            //手机号判断
    //             var ph=/^1[3|5|7|8|][0-9]{9}$/
    //             if($("#userphone").val()!=""){
    //                 if(!(ph.test($("#userphone").val()))){
    //                     $(".spa2").text("请输入正确手机号");
    //                     $(this).css("border","1px solid #BD362F")
    //                     return false;
    //                 }else if(ph){
    //                     $(".spa2").text("");
    //                     return true;
    //                 }
    //             }else{
    //                 $(".spa2").text("");
    //             }
    //         }
    //
    //         if($(this).is("#useraddress")){            //地址判断
    //             var ad=/^(?=.*?[\u4E00-\u9FA5])[\dA-Za-z\u4E00-\u9FA5]{8,32}/;
    //             if($("#useraddress").val()!=""){
    //                 if(!(ad.test($("#useraddress").val()))){
    //                     $(".spa3").text("请输入正确地址");
    //                     $(this).css("border","1px solid #BD362F")
    //                     return false;
    //                 }else if(ad){
    //                     $(".spa3").text("");
    //                     return true;
    //                 }
    //             }else{
    //                 $(".spa3").text("");
    //             }
    //         }
    //     })
    //     /********************** 聚焦提示 ************************/
    //     $("input").focus(function(){
    //         if($(this).is("#username")){
    //             $(".spa1").text("2-4个汉字").css("color","#aaa")
    //             $(this).css("border","1px solid #aaa")
    //         }
    //         if($(this).is("#userphone")){
    //             $(".spa2").text("11位手机号码").css("color","#aaa")
    //             $(this).css("border","1px solid #aaa")
    //         }
    //         if($(this).is("#useraddress")){
    //             $(".spa3").text("最少8个字符（汉字、字母和数字）").css("color","#aaa")
    //             $(this).css("border","1px solid #aaa")
    //         }
    //     })
    //     /*********************** 提交验证 ***************************/
    //     $("#sub").click(function(){
    //         var na=/^[\u4E00-\u9FA5]{2,4}$/;   //姓名正则
    //         var ph=/^1[3|5|7|8|][0-9]{9}$/;    //手机号正则
    //         var ad=/^(?=.*?[\u4E00-\u9FA5])[\dA-Za-z\u4E00-\u9FA5]{8,32}/;     //地址正则
    //         if(na.test($("#username").val())&&ph.test($("#userphone").val())&&ad.test($("#useraddress").val())){
    //             return true;
    //         }else{
    //             if($("#username").val()==""){
    //                 $(".spa1").text('请你填写用户名')
    //             }
    //             if($("#userphone").val()==""){
    //                 $(".spa2").text('请你填写手机号')
    //             }
    //             if($("#useraddress").val()==""){
    //                 $(".spa3").text('请你填写地址')
    //             }
    //             return false;
    //         }
    //     })
    //
    // });
</script>
</body>
</html>