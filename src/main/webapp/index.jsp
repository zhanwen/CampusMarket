<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="cn.shnu.ssm.pojo.User" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>

    <title>大数据和物联网实验室</title>
    <link rel="icon" href="${pageContext.request.getContextPath()}/static/images/favoricon.ico">
</head>

<body>

<jsp:include page="base.jsp" flush="true"/><!--动态包含-->
<div class="container">

    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active" >
                <img src="${pageContext.request.getContextPath()}/static/images/xy.jpg" alt="..." style="width: 1150px; height: 400px;">
                <div class="carousel-caption">
                    <%--<p>大数据</p>--%>
                </div>
            </div>
            <div class="item">
                <img src="${pageContext.request.getContextPath()}/static/images/bigdata.png" alt="..." style="width: 1150px; height: 400px;">
                <div class="carousel-caption">
                    <%--<h3>.bbb..</h3>--%>
                    <p>大数据</p>
                </div>
            </div>
            <div class="item">
                <img src="${pageContext.request.getContextPath()}/static/images/iot.png" alt="..." style="width: 1150px; height: 400px;">
                <div class="carousel-caption">
                    <%--<h3>.bbb..</h3>--%>
                    <p>物联网</p>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <!-- Main component for a primary marketing message or call to action -->
    <div class="centerinfo jumbotron" style="margin-top:20px;">
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
        <p>
            <a class="btn btn-primary" href="${pageContext.request.getContextPath()}/team/researhchTeam" role="button">更多 &raquo;</a>
        </p>

    </div>

    <div class="jumbotron st" style="margin-top:20px;">
        <button type="button" class="btn btn-info">
            <span class="glyphicon glyphicon-credit-card"></span> 研究内容
        </button>
        <br>
        <br/>
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
        <p>
            <a class="btn  btn-info" href="${pageContext.request.getContextPath()}/research/researchDirection" role="button">更多 &raquo;</a>
        </p>

    </div>

    <div class="jumbotron" style="margin-top:20px;">
        <button type="button" class="btn btn-success">
            <span class="glyphicon glyphicon-globe"></span> 科研项目
        </button>
        <br>
        <br/>
        <ul class="st">
            <li>云存储的隐私保护与安全保障机制，国家自然科学基金重点，2013.1-2017.12</li>
            <li>适应用户兴趣漂移的知识结构组织和学习服务推荐方法，国家自然基金青年，2014.1-2016.12</li>
            <li>云安全的可信服务及示范应用，国家863计划重点，2015.1-2017.12</li>
            <li>大数据平台信息安全关键技术研发，深圳市科技攻关计划重点，2014.7-2016.12</li>
            <li>基于分数阶动力系统的IT 服务项目管理文化的混沌特性研究，教育部博士点基金，2014.1-2016.12</li>
        </ul>
        <p>
            <a class="btn btn-success" href="${pageContext.request.getContextPath()}/project/scienceProject" role="button">更多 &raquo;</a>
        </p>

    </div>

    <div class="jumbotron" style="margin-top:20px;">
        <button type="button" class="btn btn-warning">
            <span class="glyphicon glyphicon-pawn"></span> 专利
        </button>
       <br>
        <br>
        <ul class="st">
            <li>
                张旱文，基于问答网站知识的软件配置故障自动修复方法和系统，专利申请号：201610202074.2
            </li>
            <li>
                张旱文，电影上座率预测方法和系统，专利申请号：201610450944
            </li>
            <li>
                张旱文，云计算系统中高频次连续失效任务的在线识别方法和系统，专利申请号：CN 201510649451.2
            </li>
            <li>
                张旱文，基于互联网日志数据的软件缺陷故障识别方法和系统，专利申请号：CN 201510977321.1
            </li>
            <li>
                张旱文，基于多云存储的智能移动终端数据存储备份方法与系统，专利申请号：CN 201410219412.4
            </li>
        </ul>
        <p>
            <a class="btn btn-warning" href="${pageContext.request.getContextPath()}/school/schoolResult" role="button">更多 &raquo;</a>
        </p>
    </div>

    <div class="jumbotron" style="margin-top:20px;">
        <button type="button" class="btn btn-link btnwen">
            <span class="glyphicon glyphicon-book"></span>科普文章
        </button>
        <br>
        <ul class="st">
            <li>
                <a href="https://mp.weixin.qq.com/s?__biz=MzI0MzQzNDg0Ng==&mid=2247483984&idx=1&sn=84b318f96da1dade1b63b102c1ea5bd9&chksm=e96c5661de1bdf77e672387a1f0779d9f5fb32e753cdd92d00a9ff08784294ca28b505b5f85c&scene=0&key=feb9e9d59358cffb4a42c72035f7007e3664aee39df9e03d637304a862261ff30fff0dcf8c7f7167eaffc5d24194dfffe3ca58ff9caede1b6ff8da309d208322153acf3735263782bd35a7c4fe222d0b&ascene=0&uin=NzIwODE2MDAy&devicetype=iMac+MacBookPro12%2C1+OSX+OSX+10.11.6+build(15G1217)&version=12010310&nettype=WIFI&lang=zh_CN&fontScale=100&pass_ticket=5M4XzkMbI0ntQbfzB8ynrKd5A45krSk5%2FvD5aV9ibibUDOXCToNYqGOj8CNo%2FL5%2B"  target="_blank"> 加密，摘要，数字签名，CA证书与加密传输 （杨勇）</a>
            </li>
            <li>
                <a href="https://mp.weixin.qq.com/s?__biz=MzI0MzQzNDg0Ng==&mid=2247484007&idx=1&sn=95ed385860db7cce850006cdedb90340&chksm=e96c5656de1bdf4062bca5d2f94d0300421083bc0b7886dc69794ec0cbbecede906a4bab8a65&scene=0&key=b681b89c27acf295e1da1f6116012ab55cfc29a107c9842afd38fe1724197989aceebb3d3d0169ce182c81e6c7108e653dba93d29e03fa638e9d3db04d57ae72bb16b3db57c51054fc70e4d9066151d8&ascene=0&uin=NzIwODE2MDAy&devicetype=iMac+MacBookPro12%2C1+OSX+OSX+10.11.6+build(15G1217)&version=12010310&nettype=WIFI&lang=zh_CN&fontScale=100&pass_ticket=5M4XzkMbI0ntQbfzB8ynrKd5A45krSk5%2FvD5aV9ibibUDOXCToNYqGOj8CNo%2FL5%2B"  target="_blank"> 简析集成学习 （王帅）</a>
            </li>
            <li>
                <a href="https://mp.weixin.qq.com/s?__biz=MzAwMTg3OTIzNQ==&mid=2247483749&idx=1&sn=23ebe59e87c08f59327c9cd066559e5c&mpshare=1&scene=1&srcid=0313XJYvabUf3sQtX632KExa&key=2fc678a83cc64b6333828046f2b94f2adb67debb94e613afbe147c878aea97af9ba5afada52e5c173e7d74bd27aaabc46f907adc91b4cae6f0c0d4c7826b6f80fe54c8634ef7f4809d0aeddd4e5f4879&ascene=0&uin=NzIwODE2MDAy&devicetype=iMac+MacBookPro12%2C1+OSX+OSX+10.11.6+build(15G1217)&version=12010310&nettype=WIFI&lang=zh_CN&fontScale=100&pass_ticket=5M4XzkMbI0ntQbfzB8ynrKd5A45krSk5%2FvD5aV9ibibUDOXCToNYqGOj8CNo%2FL5%2B"  target="_blank"> 幻影移形之Docker【调研】 （王康瑾）</a>
            </li>

            <li>
                <a href="document/01.pdf"  target="_blank">  基于属性的加密中的若干关键技术研究 （张星）</a>
            </li>
            <li>
                <a href="document/02.pdf"  target="_blank">  基于ABAC的企业云存储访问控制研究与实现 （梁科）</a>
            </li>
            <li>
                <a href="document/03.pdf"  target="_blank">  基于HDFS的校园云存储系统的设计与实现 （于哲）</a>
            </li>
            <li>
                <a href="document/04.pdf"  target="_blank">  面向P2P社交网络的自主授权CP-ABE原型系统的设计与实现 （文子龙）</a>
            </li>

            <li>
                <a href="http://blog.csdn.net/hotqin888/article/details/78460385"  target="_blank">  beego利用casbin进行权限管理——第一节 起步、测试 （转载）</a>
            </li>
            <li>
                <a href="http://blog.csdn.net/hotqin888/article/details/78571240"  target="_blank">  beego利用casbin进行权限管理——第二节 策略存储 （转载）</a>
            </li>
            <li>
                <a href="http://blog.csdn.net/hotqin888/article/details/78992250"  target="_blank">  beego利用casbin进行权限管理——第三节 策略查询 （转载）</a>
            </li>
            <li>
                <a href="https://studygolang.com/articles/12323"  target="_blank">  在 Go 语言中使用 casbin 实现基于角色的 HTTP 权限控制 （转载）</a>
            </li>
            <li>
                <a href="https://www.v2ex.com/t/391872"  target="_blank">  Casbin: 强大的 Go 访问控制、权限管理框架，支持 ACL, RBAC, ABAC （转载）</a>
            </li>

            <li>
                <a href="http://www.sohu.com/a/144394875_609556"  target="_blank">  Casbin: 强大的 Go 支持MACRBACABAC多种模型的Golang访问控制框架Casbin （转载）</a>
            </li>
        </ul>

        <%--<p>--%>
            <%--<a class="btn btn-link btnwen" href="../../components/#navbar" role="button">更多 &raquo;</a>--%>
        <%--</p>--%>
    </div>

    <div class="plink">
        <button type="button" class="btn btn-link">
            <h3 class="glyphicon glyphicon-paperclip">合作伙伴</h3>
        </button>
        <div class="plinks">
            <a class="a1" href="http://pku.edu.cn/" target="_blank"><img src="${pageContext.request.getContextPath()}/static/images/flogo.jpg" alt="" /></a>
            <a href="http://www.bibdr.org/" target="_blank"><img src="${pageContext.request.getContextPath()}/static/images/flogo2.jpg" alt="" /></a>
            <a href="http://www.bibdr.org/" target="_blank"><img src="${pageContext.request.getContextPath()}/static/images/flogo2.jpg" alt="" /></a>
        </div>
    </div>
    <br>
</div> <!-- /container -->

<jsp:include page="footer.jsp" flush="true"/>
</body>
</html>
