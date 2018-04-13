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
    <title>研究方向</title>
    <link rel="icon" href="${pageContext.request.getContextPath()}/static/images/favoricon.ico">
</head>
<body>

<jsp:include page="../../../base.jsp" flush="true"/><!--动态包含-->

<div class="container">

    <div class="centerinfo jumbotron" style="margin-top:5px;">
        <button type="button" class="btn btn-primary" >
            <span class="glyphicon glyphicon-credit-card"></span> 研究方向
        </button>
        <br>
        <br/>
        <div class="row st">
            <div class="col-md-3">
                <img src="${pageContext.request.getContextPath()}/static/images/centerinfor.jpg" alt="" class="imgfl">
            </div>
            <div class="col-md-9">
                <p class="spantitle"><strong>大数据和物联网实验室:</strong>&nbsp;&nbsp;主要关注以下三个方面</p>
            </div>
        </div>
        <br>
        <br>
        <hr style="margin-top: -10px">
        <span><strong>智能：</strong>研究大数据分析与机器学习系统相关的基础理论和方法，研究融合计算智能与群智知识的大规模分布式机器学习系统的优化
            方法，以及面向系统运维、人力资源、健康医疗、心理咨询、金融科技、精准推荐等领域的深度学习、增强学习、迁移学习等大数据分析技术和系统。</span>
        <br>
        <br>
        <span><strong>安全：</strong>研究大数据、云计算、物联网等新型分布式系统安全的基础理论、方法和关键技术，包括：访问控制、加密共享、
            隐私计算、隔离计算、可信计算和可信溯源等，以及面向大数据汇聚、交换、共享、分析等场景的安全多方计算、安全态势感知、安全可信评测等关键技术和系统。</span>
        <br>
        <br>
        <span><strong>服务：</strong>研究情境感知计算和智能服务的基础理论和方法，包括：情境元模型、基于大数据的情境模型演化、情境推理、
            服务发现、服务组合、服务推荐等，以及面向健康养老、生产性服务、互联网教育、公共安全等领域的情境感知计算、智能服务等关键技术和系统。</span>
        <br>
        <br>

    </div>




</div>
<jsp:include page="../../../footer.jsp" flush="true"/>
</div>

</body>
</html>
