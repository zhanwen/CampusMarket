<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zhanghanwen
  Date: 2018/4/7
  Time: 上午8:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>研究团队</title>
    <link href="${pageContext.request.getContextPath()}/static/css/team.css" rel="stylesheet">
    <link rel="icon" href="${pageContext.request.getContextPath()}/static/images/favoricon.ico">
</head>
<body>

<jsp:include page="../../../base.jsp" flush="true"/><!--动态包含-->

<div class="container-fluid">
    <!-- Main component for a primary marketing message or call to action -->
    <div class="centerinfo jumbotron" style="margin-top:5px;">
        <button type="button" class="btn btn-primary" >
            <span class="glyphicon glyphicon glyphicon-home"></span> 实验室简介
        </button>
        <br>
        <br/>

        <div class="row st">
            <div class="col-md-3">
                <img src="${pageContext.request.getContextPath()}/static/images/centerinfor.jpg" alt="" class="imgfl">
            </div>
            <div class="col-md-9">
                <p class="spantitle">上海师范大学大数据和物联网实验室成立于200x年，经过多年的发展，已经成长为上海师范大学计算机学科建设的一支重要力量。
                    研究室现有教授1名，副教授x名，讲师x名，在校硕士生 x 名</p>
            </div>

        </div>
        <br/>

        <h2 class="team">
            <span class="glyphicon glyphicon glyphicon-user icon" style="font-size: 21px;"></span>
            <strong class="teamTitle">团队介绍</strong>
        </h2>
        <%--<hr class="hr4" style="margin-top: -5px; border:0;background-color:#1e98db;height:1px;"/>--%>

        <div class="team-info">
            <div class="teacher clr">
                <h4>教师:</h4>
                <hr style=" margin-top: -5px; height:1px;border:none;border-top:1px dashed #9e7e8e;"/>
                <p style="margin-top: -14px">
                    <c:forEach items="${teachers}" var="teacher" varStatus="sta">
                        <a style="margin-right: 150px" href="${teacher.url}">${teacher.username}</a>
                        <c:if test="${sta.count % 5 == 0}"><br/></c:if>
                    </c:forEach>
                </p>
            </div>

            <div class="master">
                <div>
                    <h4 >硕士生:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        毕业硕士生:</h4>
                </div>
                <hr style=" margin-top: -5px; height:1px;border:none;border-top:1px dashed #9e7e8e;"/>
                <div class="row master">
                    <div class="col-md-6"  style="height:300px; width:500px; border-right:#808080 solid 0.5px">
                        <c:forEach items="${notFinishStudents}" var="map">
                            <span class="grade2">${map.key}</span>
                            <c:forEach items="${map.value}" var="students" varStatus="vs">
                                <a href="${pageContext.request.getContextPath()}/user/profile?studentNo=${students.studentNo}">${students.username}</a>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <c:if test="${vs.count % 5 == 0}"><br/></c:if>
                            </c:forEach>
                        </c:forEach>

                    </div>

                    <div class="col-md-6">
                        <c:forEach items="${finishStudents}" var="map">
                            <span class="grade2">${map.key}</span>
                            <c:forEach items="${map.value}" var="finsihstudents" varStatus="vs">
                                <a href="${pageContext.request.getContextPath()}/user/profile?studentNo=${finsihstudents.studentNo}">${finsihstudents.username}</a>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <c:if test="${vs.count % 5 == 0}"><br/></c:if>
                            </c:forEach>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>



</div>
</div>
<jsp:include page="../../../footer.jsp" flush="true"/>
</body>
</html>
