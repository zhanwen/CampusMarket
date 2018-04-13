<%--
  Created by IntelliJ IDEA.
  User: zhanghanwen
  Date: 2018/4/7
  Time: 下午1:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>科研项目</title>
    <link rel="icon" href="${pageContext.request.getContextPath()}/static/images/favoricon.ico">
</head>
<body>
<jsp:include page="../../../base.jsp" flush="true"/><!--动态包含-->

<div class="container">

    <div class="centerinfo jumbotron" style="margin-top:5px;">
        <button type="button" class="btn btn-success" >
            <span class="glyphicon glyphicon glyphicon-globe"></span>科研项目
        </button>
    <hr style="margin-top: 5px"/>
    <div class="research">
        <span style="font-family: 微软雅黑;"><span style="font-size: 16px;"><strong>国家级课题：</strong></span></span>
        <br/><br/>
        <ol>
            <li><span style="font-size: 14px;">国家自然科学基金面上（61672062），构建高可信云操作系统的若干关键技术研究，2017.1-2020.12 </span></li>
            <li><span style="font-size: 14px;">国家自然科学基金重点（61232005），云存储的隐私保护与安全保障机制， 2013.1-2017.12</span></li>
            <li><span style="font-size: 14px;">国家863计划主题（2015AA016009），云安全的可信服务及在教育云的示范验证，2015.1-2017.12</span></li>
            <li><span style="font-size: 14px;">国家自然科学基金青年（61402020），适应用户兴趣漂移的知识结构组织和学习服务推荐方法， 2014.1-2016.12</span></li>
            <li><span style="font-size: 14px;">国家科技支撑计划（2012BAH06B01），移动互联网与宽带网融合的在线数据服务平台， 2012.1-2015.12</span></li>
            <li><span style="font-size: 14px;">国家自然基金面上项目（61170002），软件外包模型驱动开发方法中模型伪装与转换理论研究， 2012.1-2015.12</span></li>
            <li><span style="font-size: 14px;">国家自然科学基金重点（61033005），面向价值的软件服务方法论：理论、方法及应用，2011.1-2014.12</span></li>
            <li><span style="font-size: 14px;">国家科技支撑计划（2012BAH18B04），新媒体资源编解码关键技术研究及原型系统， 2012.1-2014.12</span></li>
            <li><span style="font-size: 14px;">国家科技支撑计划（2011BAH14B02），新型网络终端操作系统社区版本，2011.1-2013.12</span></li>
            <li><span style="font-size: 14px;">国家科技重大专项，基于解释型语言的移动应用安全，2012.1-2013.12</span></li>
            <li><span style="font-size: 14px;">国家自然基金面上（61073156），面向可信云服务的广义虚拟可信计算平台关键技术研究， 2011.1-2013.12</span></li>
            <li><span style="font-size: 14px;">国家自然科学基金面上（61070237），基于SOM神经网络模型的网络入侵检测方法研究， 2011.1-2013.12</span></li>
            <li><span style="font-size: 14px;">丹麦科技创新部重点（2106-08-0046），Services in Context， 2010.1-2013.12</span></li>
            <li><span style="font-size: 14px;">国家自然科学基金面上（60970135），可信操作系统的基本理论与关键技术研究， 2010.1-2012.12</span></li>
            <li><span style="font-size: 14px;">国家自然科学基金面上项目（60873238），以应用安全为核心的可信虚拟监控器安全机制研究，2009.1-2011.12</span></li>
            <li><span style="font-size: 14px;">国家科技重大专项（2009ZX01036-002），国产操作系统参考实现之7，2009.1-2011.12</span></li>
            <li><span style="font-size: 14px;">国家863计划（2009AA04Z120），面向服务的供应链协同管理系统，2009.1-2011.12 </span></li>
            <li><span style="font-size: 14px;">国家自然科学基金面上（60973001），基于互联网协同实时编辑软件的自动化测试技术， 2010.1-2012.12</span></li>
            <li><span style="font-size: 14px;">国家自然科学基金面上（60704027），面向服务的业务协同建模、运行和性能评价研究， 2008.1-2010.12</span></li>
            <li><span style="font-size: 14px;">国家科技重大专项（2009ZX01039-001）面向新型网络应用模式的网络化操作系统，，2009.1-2010.12</span></li>
            <li><span style="font-size: 14px;">国家863计划（2007AA04Z150），基于本体的集成服务系统，2007.1-2009.12</span></li>
            <li><span style="font-size: 14px;">国家科技支撑计划（2005BA115A03），国产基础软件平台体系之14，2005.1-2007.12</span></li>
            <li><span style="font-size: 14px;">国家863计划（306-ZD06-02-9），电视台数字化系统，1999.1-2001.12</span></li>
        </ol>
        <br/>
        <span style="font-size: 14px;"><strong><span style="font-size: 16px;"><span style="font-family: 微软雅黑;">省部级及产学研课题：</span></span></strong></span><br />
        <br/>
        <ol>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">腾讯科技合作，腾讯协同创新实验室，2017-2021</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">看准网合作，人力资源大数据实验室， 2015-2020</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">台达电子合作，情境建模关键技术研发，2015-2018</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">台达电子合作，Android移动终端安全加固技术，2015-2018</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">腾讯科技合作，企业级容器云管理平台， 2016-2017</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">深圳市科技攻关计划重点，大数据平台信息安全关键技术研发，2014-2016</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">教育部博士点基金，基于分数阶动力系统的IT 服务项目管理文化的混沌特性研究， 2014-2016</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">VMWare合作，基于Docker的虚拟桌面云，2015-2016</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">教育部博士点基金，基于自动机的情境感知服务主动提供方法研究，2013-2015</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">CCF-犀牛鸟基金，基于用户线上线下信息融合的信用评级研究，2014－2015</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">山东神思合作，Android智能警务终端安全加固技术研发，2014-2015</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">华为合作，支持下一代网络架构和协议的广义模型和转换技术，2013-2014</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">江苏省自然科学基金面上，面向服务的Skyline查询关键技术研究，2010-2013</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">Intel UPO项目，Virtualization Security Curriculum，2012-2013</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">华为合作，众核OS管理系统，2012-2013</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">IBM SUR项目，Security Services of Private Storage Cloud，2009-2011</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">教育部信息化专项，学分银行系统研制，2009-2010</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">电子信息发展基金，支持SaaS业务配置与服务协同的流程与规则引擎，2009-2010</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">顺义区政府委托，大学生心理测评系统，2009-2010</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">IBM合作，涉及Vendor的软件外包决策方法与工具，2009-2010</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">IBM合作，An investigation for hosted development platforms and tools, 2009-2010</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">华为高校科技基金，电信网络环境下云计算服务平台安全体系，2009-2010</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">华为高校科技基金，广义可信虚拟计算平台安全体系结构研究，2008-2009</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">华为合作，可信计算平台TPM在某系统中的应用，2008-2009</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">IBM SUR项目，Unit Testing Service and Platform，2008-2009</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">IBM 合作，Call-For-Testing ， 2008-2009</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">IBM合作，软件外包的方法与工具，2008-2009</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">北京市文化创意产业项目，对外汉语教学系列动画，2007-2009 </span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">微软亚洲研究院合作，P2P流媒体服务，2008-2009</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">微软亚洲研究院合作，儿童绘画中的人机交互技术，2007-2008</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">IBM合作，Call-for-Implementation, 2007-2008</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">英特尔公司合作，数字家庭及网关，2006-2008</span></span></li>
            <li><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">联想技术研究院开放课题，数字家庭版权保护技术，2005-2006 </span></span></li>
        </ol>
    </div>
    </div>

    <jsp:include page="../../../footer.jsp" flush="true"/>

</div>

</body>
</html>
