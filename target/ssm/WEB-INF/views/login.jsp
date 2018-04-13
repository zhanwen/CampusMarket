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

    <title>登录</title>

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
</head>

<body>
<% String flag = (String)session.getAttribute("flag")==null?"":(String)session.getAttribute("flag");
    String inputStudentNo = "";
    String inputPassword = "";
    try{
        Cookie[] cookies=request.getCookies();
        if(cookies!=null){
            for(int i=0;i<cookies.length;i++){
                if(cookies[i].getName().equals("cookie_user")){
                    String value = 	cookies[i].getValue();
                    if(value!=null&&!"".equals(value)){
                        inputStudentNo=cookies[i].getValue().split("-")[0];
                        if(cookies[i].getValue().split("-")[1]!=null && !cookies[i].getValue().split("-")[1].equals("null")){
                            inputPassword=cookies[i].getValue().split("-")[1];
                        }
                    }
                }
                request.setAttribute("inputStudentNo",inputStudentNo);
                request.setAttribute("inputPassword",inputPassword);
            }
        }
    }catch(Exception e){
        e.printStackTrace();
    }
%>
<div class="container">

        <form class="form-signin" action="/user/login">
            <h2 class="form-signin-heading">请登录</h2>
            <label for="inputStudentNo" class="sr-only">StudentNo</label>
            <input type="input" id="inputStudentNo" name="inputStudentNo" class="form-control" placeholder="学号" value="<%=inputStudentNo %>" required autofocus>
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="inputPassword" name="inputPassword" class="form-control" placeholder="密码" value="<%=inputPassword %>" required>
            <div class="checkbox">
                <label>
                    <input type="checkbox" name="flag" id="flag" <%if(flag!=null && flag.equals("1")){%> checked="checked"; value ="1"; <%}else {%> value="0" <%;}%>/> 记住密码
                </label>
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit" onclick="return loginCheck()">登录</button>
        </form>

    </div> <!-- /container -->


<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="${pageContext.request.getContextPath()}/static/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
