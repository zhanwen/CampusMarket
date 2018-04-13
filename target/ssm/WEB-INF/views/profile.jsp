<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="cn.shnu.ssm.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: zhanghanwen
  Date: 2018/4/5
  Time: 下午4:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
    <!--  title对应的图标 -->
    <link rel="icon" href="${pageContext.request.getContextPath()}/static/images/favoricon.ico">

    <script>
        function updateImage() {
            window.location.href = "uploadImagePage";
        }

    </script>

</head>
<body>
<%
    String Flag = (String)request.getSession().getAttribute("Flag");
%>
<jsp:include page="../../base.jsp" flush="true"/><!--动态包含-->
<div class="container">
    <div class="panel panel-info">
        <div class="panel-heading">
            基本信息
        </div>
        <div class="panel-body">
            <div class="col-xs-2">
                <img src="${pageContext.request.getContextPath()}/${user.imagepath}"
                     alt="..." class="img-circle" style="width: 150px; height: 150px;">
                    <c:if test="${sessionScope.Flag == '1'}">
                        <button style="margin-left: 35px" onclick="return updateImage()">上传头像</button>
                    </c:if>
            </div>
            <div class="col-xs-10" style="padding-top: 30px">
                <div class="col-xs-3">
                    <p>姓名: &nbsp; ${user.username}</p>
                    <p>学号: &nbsp; ${user.studentNo}</p>
                    <p>性别: &nbsp; <c:if test="${user.sex == '1'}">男</c:if> <c:if test="${user.sex == '0'}">女</c:if></p>
                </div>
                <div class="col-xs-3">
                    <p>职位: &nbsp; <c:if test="${user.position != null}">${user.position}</c:if><c:if test="${user.position == null}">无</c:if></p>
                    <p>学历: &nbsp; <c:if test="${user.education != null}">${user.education}</c:if><c:if test="${user.education == null}">无</c:if></p>
                    <p>是否毕业: &nbsp; <c:if test="${user.isFinish != 0}">是</c:if> <c:if test="${user.isFinish == 0}">否</c:if></p>
                </div>
                <div class="col-xs-4">
                    <p>邮箱: &nbsp; <c:if test="${user.email != null}">${user.email}</c:if><c:if test="${user.email == null}">无</c:if></p>
                    <p>年级: &nbsp; <c:if test="${user.grade != null}">${user.grade}</c:if><c:if test="${user.grade == null}">无</c:if></p>
                    <c:if test="${sessionScope.Flag == '1'}">
                        <a href="${pageContext.request.getContextPath()}/user/passwordSet">重新设置密码</a>
                    </c:if>
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
                    <span>
                        <c:if test="${user.introduce == null}">无</c:if>
                        <c:if test="${user.introduce != null}">${user.introduce}</c:if>
                    </span>
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
                    <span>
                        <c:if test="${user.researchResult == null}">无</c:if>
                        <c:if test="${user.researchResult != null}">${user.researchResult}</c:if>
                    </span>
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
                <div class="col-md-10">
                   <span>
                        <c:if test="${user.skills == null}">无</c:if>
                        <c:if test="${user.skills != null}">${user.skills}</c:if>
                    </span>
                </div>
            </div>
        </div>
    </div>

    <div class="btn-group">
        <c:if test="${sessionScope.Flag == '1'}">
            <button type="button" class="btn btn-info" style="left: 500px">
             <a href="updateProfilePage?studentNo=${user.studentNo}">编辑</a>
            </button>
        </c:if>
    </div>



</div>


</body>
</html>
