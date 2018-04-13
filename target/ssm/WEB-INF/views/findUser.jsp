<%--
  Created by IntelliJ IDEA.
  User: zhanghanwen
  Date: 2018/4/2
  Time: 下午8:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>findUser</h1>
<table border="2" >
    <c:forEach items="${users}" var="u">
        <tr>
            <td></td>
            <td>${u.id}</td>
            <td>${u.username}</td>
            <td>${u.birthday}</td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
