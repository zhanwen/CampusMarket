<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="cn.shnu.ssm.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: zhanghanwen
  Date: 2018/4/5
  Time: 下午4:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8");%>
<html>
<head>
    <title>个人中心</title>
    <!--  title对应的图标 -->
    <link rel="icon" href="${pageContext.request.getContextPath()}/static/images/newfavicon.ico">
</head>
<body>
<%
    String Flag = (String)session.getAttribute("Flag");
%>
<jsp:include page="../../base.jsp" flush="true"/><!--动态包含-->
<form id="form1" action="updateProfile" method="post">
    <div class="container">
        <div class="panel panel-info">
            <div class="panel-heading">
                基本信息
            </div>
            <div class="panel-body">
                <div class="col-xs-2">
                    <img src="${pageContext.request.getContextPath()}/${user.imagepath}"
                         alt="..." class="img-circle" style="width: 150px; height: 150px;">
                </div>
                <div class="col-xs-10" style="padding-top: 30px">
                    <div class="col-xs-3">
                        <p>姓名: &nbsp; ${user.username}</p>
                        <p>学号: &nbsp; ${user.studentNo}</p>
                        <p>性别: &nbsp; <c:if test="${user.sex == '1'}">男</c:if> <c:if test="${user.sex == '2'}">女</c:if></p>
                    </div>
                    <div class="col-xs-4">
                        职位: &nbsp; <input type="text" id="position" name="position" value="<c:if test="${user.position != null}">${user.position}</c:if>"/>
                        <br>
                        学历: &nbsp; <input type="text" id="education" name="education" value="<c:if test="${user.education != null}">${user.education}</c:if>"/>
                    </div>
                    <div class="col-xs-4">
                        邮箱: &nbsp; <input type="text" id="email" name="email" value="<c:if test="${user.email != null}">${user.email}</c:if>"/>
                        <br>
                        年级: &nbsp; ${user.grade}
                    </div>
                </div>
            </div>
        </div>

        <div class="panel panel-warning">
            <div class="panel-heading">
                个人介绍
            </div>
            <div class="panel-body">
                <div class="col-xs-10" style="padding-top: 15px">
                    <div class="col-xs-10">
                        <textarea name="introduce" id="introduce" cols="130" rows="10">
                            <c:if test="${user.introduce != null}">${user.introduce}</c:if>
                        </textarea>
                    </div>
                </div>
            </div>
        </div>

        <div class="panel panel-success">
            <div class="panel-heading">
                学术成果
            </div>
            <div class="panel-body">
                <div class="col-xs-10" style="padding-top: 15px">
                    <div class="col-xs-10">
                         <textarea name="researchResult" id="researchResult" cols="130" rows="10">
                            <c:if test="${user.researchResult != null}">${user.researchResult}</c:if>
                        </textarea>
                    </div>
                </div>
            </div>
        </div>

        <div class="panel panel-danger">
            <div class="panel-heading">
                技能
            </div>
            <div class="panel-body">
                <div class="col-xs-10" style="padding-top: 15px">
                    <div class="col-xs-10">
                         <textarea name="skills" id="skills" cols="130" rows="10">
                            <c:if test="${user.skills != null}">${user.skills}</c:if>
                        </textarea>
                    </div>
                </div>
            </div>
        </div>
        <c:if test="${Flag == 1}">
            <div class="btn-group">
                <button type="submit" class="btn btn-primary" style="left: 500px">保存</button>
            </div>
        </c:if>

    </div>
</form>
</body>
</html>
