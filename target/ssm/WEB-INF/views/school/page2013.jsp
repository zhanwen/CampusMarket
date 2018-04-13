<%--
  Created by IntelliJ IDEA.
  User: zhanghanwen
  Date: 2018/4/7
  Time: 下午3:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>学术论文</title>
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
        <div style="margin-left: 30px">
            <li class="active"><a href="${pageContext.request.getContextPath()}/school/researchPages">2017年</a></li>
            <li class="third"><a <c:if test="${pages == '2016'}">style="color: red" </c:if> href="${pageContext.request.getContextPath()}/school/researchPages/2016">2016年</a></li>
            <li class="third"><a <c:if test="${pages == '2015'}">style="color: red" </c:if> href="${pageContext.request.getContextPath()}/school/researchPages/2015">2015年</a></li>
            <li class="third"><a <c:if test="${pages == '2014'}">style="color: red" </c:if> href="${pageContext.request.getContextPath()}/school/researchPages/2014">2014年</a></li>
            <li class="third"><a <c:if test="${pages == '2013'}">style="color: red" </c:if> href="${pageContext.request.getContextPath()}/school/researchPages/2013">2013年</a></li>
        </div>
        <a href="${pageContext.request.getContextPath()}/school/academicPages" class="list-group-item">学位论文</a>
    </div>
</div>

<div class="container" style="width: 940px; margin-left: 300px">
    <div class="centerinfo jumbotron" style="margin-top:5px;">
        <div class="list_xueshu_content">
            <span><strong>2013年</strong></span>
            <br>
            <br>
            <ol>
                <li>Yang Luo, Hongbo Zhou, Qingni Shen, Anbang Ruan, Zhonghai Wu*. RestPL: Towards a Request-Oriented Policy Language for Arbitrary RESTful APIs[C], the 23rd International Conference on Web Services (ICWS 2016), June 27 - July 2, 2016, San Francisco, USA. IEEE, pp.666-671, 2016   (CCF B类) </li>
                <li>Zhengshen Jiang, Hongzhi Liu*, Bin Fu, Zhonghai Wu*. A Novel Bayesian Ensemble Pruning Method, the 16th IEEE International Conference on Data Mining (ICDM 2016), December 12-15, 2016, Barcelona, Spain.  (CCF B类) </li>
                <li>Tang Hongyan, Li Ying*, Jia Tong, Wu Zhonghai, Hunting Killer Tasks for Cloud System Through Behavior Pattern Learning[C], the 46th Annual IEEE/IFIP International Conference on Dependable Systems and Networks Workshops (DSN 2016), Toulouse, FRANCE, June 28-July 1, 2016. IEEE, pp.83-88,2016. (CCF B类) </li>
            </ol>
        </div>
    </div>
</body>
</html>
