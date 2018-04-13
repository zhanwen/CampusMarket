<%--
  Created by IntelliJ IDEA.
  User: zhanghanwen
  Date: 2018/4/7
  Time: 下午2:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>学位论文</title>
    <link rel="icon" href="${pageContext.request.getContextPath()}/static/images/favoricon.ico">
</head>
<body>
<%
    String pages = (String)session.getAttribute("pages");
%>
<jsp:include page="../../../base.jsp" flush="true"/><!--动态包含-->

    <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
        <div class="list-group">
            <a href="${pageContext.request.getContextPath()}/school/schoolResult" class="list-group-item <c:if test='${link == "patent"}'>active</c:if>">发名专利</a>
            <a href="${pageContext.request.getContextPath()}/school/software" class="list-group-item <c:if test='${link == "software"}'>active</c:if>">软件著作权</a>
            <a href="${pageContext.request.getContextPath()}/school/researchPages" class="list-group-item <c:if test='${link == "research"}'>active</c:if>">学术论文</a>
            <a href="${pageContext.request.getContextPath()}/school/academicPages" class="list-group-item <c:if test='${link == "academic"}'>active</c:if>">学位论文</a>
            <div style="margin-left: 30px">
                <li class="active"><a style="color: red" href="${pageContext.request.getContextPath()}/school/academicPages">2017年</a></li>
                <li class="third"><a  href="${pageContext.request.getContextPath()}/school/academicPages/2016">2016年</a></li>
                <li class="third"><a  href="${pageContext.request.getContextPath()}/school/academicPages/2015">2015年</a></li>
                <li class="third"><a  href="${pageContext.request.getContextPath()}/school/academicPages/2014">2014年</a></li>
                <li class="third"><a  href="${pageContext.request.getContextPath()}/school/academicPages/2013">2013年</a></li>
            </div>
        </div>
    </div>

    <div class="container" style="width: 940px; margin-left: 300px">
         <div class="centerinfo jumbotron" style="margin-top:5px;">
             <div class="list_xueshu_content">
                 <span><strong>2017年</strong></span>
                 <br>
                 <br>
                 <ol>
                     <li>Zhengshen Jiang, Hongzhi Liu*, Bin Fu, Zhonghai Wu*. Generalized Ambiguity Decompositions for Classification with Applications in Active Learning and Unsupervised Ensemble Pruning, Thirty-First AAAI Conference on Artificial Intelligence (AAAI 2017), February 4-9, 2017, San Francisco, California, USA.（CCF A类） </li>
                     <li>Lian Yue,Wei-Tek Tsai,  Test-Case Generation for Boolean Expressions by Cell Covering,  IEEE Transactions on Software Engineering（TSE）, Feb 2017 . （CCF A类） </li>
                     <li>Jie Jiang, Jiawei Jiang, Bin Cui and Ce Zhang, TencentBoost: A Gradient Boosting Tree System with Parameter Server, IEEE International Conference on Data Engineering (ICDE2017), April 19-22, 2017,San Diego, California, USA.
                         （CCF A类） </li>
                 </ol>
        </div>
    </div>
</div>

</body>
</html>
