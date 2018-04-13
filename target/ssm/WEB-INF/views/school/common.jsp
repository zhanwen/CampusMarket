<%--
  Created by IntelliJ IDEA.
  User: zhanghanwen
  Date: 2018/4/7
  Time: 下午2:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>common</title>
    <link rel="icon" href="${pageContext.request.getContextPath()}/static/images/favoricon.ico">
</head>
<body>
<%
        String link = (String) request.getSession().getAttribute("link");
%>
<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
    <div class="list-group">
        <a href="${pageContext.request.getContextPath()}/school/schoolResult" class="list-group-item <c:if test='${link == "patent"}'>active</c:if>">发明专利</a>
        <a href="${pageContext.request.getContextPath()}/school/software" class="list-group-item <c:if test='${link == "software"}'>active</c:if>">软件著作权</a>
        <a href="${pageContext.request.getContextPath()}/school/researchPages" class="list-group-item <c:if test='${link == "research"}'>active</c:if>">学术论文</a>
        <a href="${pageContext.request.getContextPath()}/school/academicPages" class="list-group-item <c:if test='${link == "academic"}'>active</c:if>">学位论文</a>
    </div>
</div>
</body>
</html>
