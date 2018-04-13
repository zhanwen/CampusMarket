<%@ page import="cn.shnu.ssm.pojo.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zhanghanwen
  Date: 2018/4/5
  Time: 下午4:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <title>大数据和物联网实验室</title>
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.getContextPath()}/static/css/bootstrap.min.css" rel="stylesheet">
    <link rel="icon" href="${pageContext.request.getContextPath()}/static/images/favoricon.ico">
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="${pageContext.request.getContextPath()}/static/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.getContextPath()}/static/css/navbar-fixed-top.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="${pageContext.request.getContextPath()}/static/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="${pageContext.request.getContextPath()}/static/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="${pageContext.request.getContextPath()}/static/js/jquery-3.1.1.min.js"></script>
    <script src="${pageContext.request.getContextPath()}/static/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="${pageContext.request.getContextPath()}/static/js/ie10-viewport-bug-workaround.js"></script>
</head>
<body>
<%
    String active = (String)request.getSession().getAttribute("active");
%>
<!-- Fixed navbar -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/user/home">大数据和物联网实验室</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li <c:if test="${active == 'home'}">class="active"</c:if> > <a href="${pageContext.request.contextPath}/user/home">首页</a></li>
                <li <c:if test="${active == 'team'}">class="active"</c:if>><a href="${pageContext.request.contextPath}/team/researhchTeam">科研团队</a></li>
                <li <c:if test="${active == 'research'}">class="active"</c:if>><a href="${pageContext.request.contextPath}/research/researchDirection">研究方向</a></li>
                <li <c:if test="${active == 'project'}">class="active"</c:if>><a href="${pageContext.request.contextPath}/project/scienceProject">科研项目</a></li>
                <li <c:if test="${active == 'school'}">class="active"</c:if>><a href="${pageContext.request.contextPath}/school/schoolResult">学术成果</a></li>
                <li <c:if test="${active == 'profile'}">class="active"</c:if>><a href="${pageContext.request.contextPath}/user/profile?studentNo=${user.studentNo}">个人中心</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <c:choose>
                    <c:when test="${sessionScope.user != null}">
                        <li><a href ="${pageContext.request.contextPath}/user/profile?studentNo=${sessionScope.user.studentNo}">${sessionScope.user.getUsername()}</a></li>
                        <li><a href="${pageContext.request.contextPath}/user/logout">登出</a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="${pageContext.request.contextPath}/user/loginPage">登录</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>

</body>
</html>
