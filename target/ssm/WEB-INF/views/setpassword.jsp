<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zhanghanwen
  Date: 2018/4/5
  Time: 上午8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${pageContext.request.getContextPath()}/static/images/favoricon.ico">

    <title>重新设置密码</title>

    <!-- Bootstrap core CSS -->
    <script language="JavaScript" type="text/javascript" src="${pageContext.request.getContextPath()}/static/js/jquery-3.1.1.min.js"></script>
    <link href="${pageContext.request.getContextPath()}/static/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="${pageContext.request.getContextPath()}/static/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.getContextPath()}/static/css/signin.css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/login.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/layer.js"></script>
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]>
    <script src="${pageContext.request.getContextPath()}/static/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="${pageContext.request.getContextPath()}/static/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script language="JavaScript">
        function loginCheck() {
            //判断用户名
            if($("input[name=originpwd]").val() == null || $("input[name=originpwd]").val() == ""){
                $("input[name=originpwd]").focus();
                layer.tips('原始密码不能为空！', '#originpwd', {
                    tips: [2, '#FF3030'],
                    time: 2000
                });
                return false;
            }
            //判断密码
            if($("input[name=newpwd]").val() == null || $("input[name=newpwd]").val() == ""){
                layer.tips('新密码不能为空！', '#newpwd', {
                    tips: [2, '#FF3030'],
                    time: 2000
                });
                return false;
            }
            if($("input[name=renewpwd]").val() == null || $("input[name=renewpwd]").val() == ""){
                layer.tips('确认新密码不能为空！', '#renewpwd', {
                    tips: [2, '#FF3030'],
                    time: 2000
                });
                return false;
            }
            if($("input[name=newpwd]").val() != $("input[name=renewpwd]").val()) {
                layer.tips('两次新密码不相同！', '#newpwd', {
                    tips: [2, '#FF3030'],
                    time: 2000
                });
                return false;
            }

            var originpwd = $("input[name='originpwd']").val();
            var newpwd = $("input[name='newpwd']").val();
            var studentNo = $("input[name='studentNo").val();
            var renewpwd = $("#renewpwd").val();      //密码
            var datas = new Object();                  //返回来的结果
            $.ajax({
                type: "post",
                contentType:"application/string",
                dataType:"json",
                async:false,
                url : "setPassword?studentNo="+studentNo+"&newpwd="+newpwd+"&renewpwd="+renewpwd+"&originpwd="+originpwd,
                success: function (data) {
                    datas = data;
                }
            });
            if(datas.result == "blank"){                 //学号不正确
                layer.tips('重新设置密码失败！', '#newpwd', {
                    tips: [2, '#FF3030'],
                    time: 2000
                });
                return false;
            }else if(datas.result == "notSame"){            //密码不正确
                layer.tips('重新设置密码失败！', '#newpwd', {
                    tips: [2, '#FF3030'],
                    time: 2000
                });
                return false;
            }else if(datas.result == "noStudent") {
                layer.tips('重新设置密码失败', '#newpwd', {
                    tips: [2, '#FF3030'],
                    time: 2000
                });
                return false;
            }else if(datas.result == "notpwd") {
                layer.tips('原始密码不正确', '#originpwd', {
                    tips: [2, '#FF3030'],
                    time: 2000
                });
                return false;
            }

            var str = getRootPath_web();
            if(datas.result == "succ") {
                window.location.href=str+"/user/profile?studentNo="+studentNo;
                return false;
            }
        }


        function getRootPath_web() {
            //获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp
            var curWwwPath = window.document.location.href;
            //获取主机地址之后的目录，如： uimcardprj/share/meun.jsp
            var pathName = window.document.location.pathname;
            var pos = curWwwPath.indexOf(pathName);
            //获取主机地址，如： http://localhost:8083
            var localhostPaht = curWwwPath.substring(0, pos);
            //获取带"/"的项目名，如：/uimcardprj
            var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
            return (localhostPaht + projectName);
        }
    </script>

</head>

<body>

<div class="container">

        <form class="form-signin" action="/user/login">
            <input type="hidden" id="studentNo" name="studentNo" value="${sessionScope.get("user").studentNo}">
            <h2 class="form-signin-heading">重新设置密码</h2>
            <label for="originpwd" class="sr-only">originpwd</label>
            <input type="password" id="originpwd" name="originpwd" class="form-control" placeholder="请输入原始密码" required autofocus>
            <label for="newpwd" class="sr-only">Password</label>
            <input type="password" id="newpwd" name="newpwd" class="form-control" placeholder="新密码" required>
            <label for="renewpwd" class="sr-only">Password</label>
            <input type="password" id="renewpwd" name="renewpwd" class="form-control" placeholder="确认新密码" required>
            <button class="btn btn-lg btn-primary btn-block" type="submit" onclick="return loginCheck()">登录</button>
        </form>
    </div> <!-- /container -->


<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="${pageContext.request.getContextPath()}/static/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
