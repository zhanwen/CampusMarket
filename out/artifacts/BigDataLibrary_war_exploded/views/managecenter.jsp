<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 2018/5/21
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>管理中心</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Best Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="${pageContext.request.getContextPath()}/static/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="${pageContext.request.getContextPath()}/static/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- js -->
    <script src="${pageContext.request.getContextPath()}/static/js/jquery.min.js"></script>
    <!-- //js -->
    <!-- cart -->
    <script src="${pageContext.request.getContextPath()}/static/js/simpleCart.min.js"> </script>
    <!-- cart -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.getContextPath()}/static/css/jquery-ui.css">
    <!-- for bootstrap working -->
    <script type="text/javascript" src="${pageContext.request.getContextPath()}/static/js/bootstrap-3.1.1.min.js"></script>
    <!-- //for bootstrap working -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <!-- animation-effect -->
    <link href="${pageContext.request.getContextPath()}/static/css/animate.min.css" rel="stylesheet">
    <script src="${pageContext.request.getContextPath()}/static/js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>


    <script language="JavaScript">
        $(document).ready(function() {
            //绑定下拉框change事件，当下来框改变时调用 SelectChange()方法
            $("#checkGoodsStatus").change(function() { SelectChange(); });
        })

        function SelectChange() {
            //获取下拉框选中项的value属性值
            var selectValue = $("#checkGoodsStatus").val();
            var twoText = selectValue.split(".");
            var status = twoText[0];
            var goodsId = twoText[1];
            $.ajax({
                type: "post",
                contentType:"application/string",
                dataType:"json",
                async:false,
                url : "/goodswill/goods/changeGoodsStatus?status="+status+"&goodsId="+goodsId,
                success: function (data) {
                    datas = data;
                },
            });

        }
    </script>

    <!-- //animation-effect -->
</head>

<body>
<!-- header -->
<div class="header">
    <div class="container">
        <div class="logo-nav">
            <div class="logo-nav-left animated wow zoomIn" data-wow-delay=".5s">
                <h1><a href="${pageContext.request.contextPath}/views/index">GoodsWill <span>Shop anywhere</span></a></h1>
            </div>
            <div class="logo-nav-left1">
                <nav class="navbar navbar-default">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header nav_2">
                        <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="${pageContext.request.contextPath}/views/index" class="act">主页</a></li>
                            <!-- Mega Menu -->
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">商品分类 <b class="caret"></b></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>图书书籍</h6>
                                                <li><a href="${pageContext.request.contextPath}/views/books">教材</a></li>
                                                <li><a href="${pageContext.request.contextPath}/views/tests">考试</a></li>
                                                <li><a href="${pageContext.request.contextPath}/views/literature">艺术文学</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>日用百货</h6>
                                                <li><a href="${pageContext.request.contextPath}/views/sports">运动类</a></li>
                                                <li><a href="${pageContext.request.contextPath}/views/stationery">文具类</a></li>
                                                <li><a href="${pageContext.request.contextPath}/views/life">生活类</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>娱乐</h6>
                                                <li><a href="${pageContext.request.contextPath}/views/products">美妆</a></li>
                                                <li><a href="${pageContext.request.contextPath}/views/products">电子产品</a></li>
                                                <li><a href="${pageContext.request.contextPath}/views/products">Girl's Clothing</a></li>
                                            </ul>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </ul>
                            </li>
                            <li>
                                <c:if test="${sessionScope.user == null}">
                                    <a href="${pageContext.request.contextPath}/views/login">管理中心</a>
                                </c:if>
                                <c:if test="${sessionScope.user != null}">
                                    <a href="${pageContext.request.contextPath}/views/managecenter">管理中心</a>
                                </c:if>

                            </li>
                            <!--<li><a href="short-codes.html">个人中心</a></li>-->
                        </ul>
                    </div>
                </nav>
            </div>

            <div class="logo-nav-right">
                <div class="search-box">
                    <div id="sb-search" class="sb-search">
                        <form>
                            <input class="sb-search-input" placeholder="输入你想搜索的商品" type="search" id="search">
                            <input class="sb-search-submit" type="submit" value="">
                            <span class="sb-icon-search"> </span>
                        </form>
                    </div>
                </div>
                <!-- search-scripts -->
                <script src="${pageContext.request.getContextPath()}/static/js/classie.js"></script>
                <script src="${pageContext.request.getContextPath()}/static/js/uisearch.js"></script>
                <script>
                    new UISearch( document.getElementById( 'sb-search' ) );
                </script>
                <!-- //search-scripts -->
            </div>
            <div class="header-right">
                <div class="cart box_1">
                    <a href="${pageContext.request.getContextPath()}/user/logout">
                        <li>
                            <i class="glyphicon glyphicon-log-in" aria-hidden="true"></i>
                            <c:if test="${sessionScope.user == null}">
                                <a href="${pageContext.request.contextPath}/views/login">登陆</a>
                            </c:if>
                            <c:if test="${sessionScope.user != null}">
                                <a href="${pageContext.request.contextPath}/views/managecenter">${sessionScope.user.username}</a>
                            </c:if>
                        </li>
                    </a>
                    <!--<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>-->
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //header -->
<!-- breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
            <li><a href="${pageContext.request.contextPath}/views/managecenter"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>主页</a></li>
            <li class="active">管理中心</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->

<!-->
<div class="single">
    <div class="container">
        <div class="col-md-4 products-left">
            <div class="categories animated wow slideInUp" data-wow-delay=".5s">
                <h3>管理中心</h3>
                <ul class="cate">
                    <li><a href="#">基本信息</a> <span></span></li>
                    <li><a href="insert">添加商品</a> <span></span></li>
                    <li><a href="${pageContext.request.getContextPath()}/views/managecenter?status=0">待审核</a> <span></span></li>
                    <li><a href="${pageContext.request.getContextPath()}/views/managecenter?status=1">已审核</a> <span></span></li>
                </ul>
            </div>
        </div>
        <div class="col-md-7 single-right">
            <div class="col-md-10 single-right-left simpleCart_shelfItem animated wow slideInRight" data-wow-delay=".5s">
                <h4><span class="item_price">基本信息</span></h4>
                <div class="color-quality">
                    <div class="color-quality-left">
                        <p>学号：${sessionScope.user.studentNo}</p><h5></h5>
                        <p>昵称：${sessionScope.user.username}</p><h5></h5>
                        <p>微信号：${sessionScope.user.weixin}</p><h5></h5>
                        <p>手机号：${sessionScope.user.phone}</p><h5></h5>
                        <p>邮箱：${sessionScope.user.email}</p><h5></h5>
                    </div>
                    <div class="clearfix"> </div>
                </div>

                <div class="occasional">
                    <div class="clearfix"> </div>
                </div>
                <%--<div class="occasion-cart">--%>
                    <%--<a class="correct" href="register.html">修改 </a>--%>
                <%--</div>--%>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-->

<!-- checkout -->
<div class="checkout">
    <div class="container">
        <h3 class="animated wow slideInLeft" data-wow-delay=".5s">
            <c:if test="${status == 1}">已审核: </c:if>
            <c:if test="${status == 0}">待审核: </c:if>
            <span>${goodsList.size()} 件商品</span></h3>
        <div class="checkout-right animated wow slideInUp" data-wow-delay=".5s">
            <table class="timetable_sub">
                <thead>
                <tr>
                    <th>序号</th>
                    <th>商品名称</th>
                    <!--<th>速度快放假</th>-->
                    <th>商品分类</th>
                    <th>价格</th>
                    <th>状态</th>
                    <th>商品状态</th>
                    <!--<th>Remove</th>-->
                </tr>
                </thead>

                <c:forEach items="${goodsList}" var="goods" varStatus="vs">
                    <tr class="rem1">
                        <td class="invert">${vs.index + 1}</td>
                        <td class="invert-image"><a href="${pageContext.request.getContextPath()}/views/single?goodsId=${goods.id}">${goods.goodsName}</a></td>
                        <td class="invert">
                            <c:if test="${goods.cate == '1'}">图书书籍</c:if>
                            <c:if test="${goods.cate == '2'}">日用百货</c:if>
                            <c:if test="${goods.cate == '3'}">娱乐</c:if>
                        </td>
                        <td class="invert">&yen${goods.price}</td>
                        <td class="invert">
                            <c:if test="${goods.status == 0}">待审核</c:if>
                            <c:if test="${goods.status == 1}">已审核</c:if>
                        </td>
                        <td class="invert">
                            <select <c:if test="${goods.status == 0}">disabled</c:if> id="checkGoodsStatus" name="checkGoodsStatus">
                                <option value="0.${goods.id}" <c:if test="${goods.goodsStatus == 0}">selected</c:if>>未出售</option>
                                <option value="1.${goods.id}" <c:if test="${goods.goodsStatus == 1}">selected</c:if>>已出售</option>
                            </select>


                        </td>
                    </tr>
                </c:forEach>


                <%--<tr class="rem1">--%>
                    <%--<td class="invert">1</td>--%>
                    <%--<td class="invert-image"><a href="single.html">深度学习</a></td>--%>
                    <%--<td class="invert">图书书籍</td>--%>
                    <%--<td class="invert">&yen168.00</td>--%>
                    <%--<td class="invert">已审核</td>--%>
                <%--</tr>--%>
                <%--<tr class="rem2">--%>
                    <%--<td class="invert">2</td>--%>
                    <%--<td class="invert-image"><a href="single.html">羽毛球拍</a></td>--%>
                    <%--<td class="invert">日用百货：运动类</td>--%>
                    <%--<td class="invert">&yen128.00</td>--%>
                    <%--<td class="invert">已审核</td>--%>
                <%--</tr>--%>
                <%--<tr class="rem3">--%>
                    <%--<td class="invert">3</td>--%>
                    <%--<td class="invert-image"><a href="single.html">小米头戴式耳机</a></td>--%>
                    <%--<td class="invert">娱乐：电子产品</td>--%>
                    <%--<td class="invert">&yen499.00</td>--%>
                    <%--<td class="invert">已审核 </td>--%>
                <%--</tr>--%>
                <%--<tr class="rem1">--%>
                    <%--<td class="invert">4</td>--%>
                    <%--<td class="invert-image"><a href="single.html">深度学习</a></td>--%>
                    <%--<td class="invert">图书书籍</td>--%>
                    <%--<td class="invert">&yen168.00</td>--%>
                    <%--<td class="invert">已审核</td>--%>
                <%--</tr>--%>
                <%--<tr class="rem1">--%>
                    <%--<td class="invert">5</td>--%>
                    <%--<td class="invert-image"><a href="single.html">深度学习</a></td>--%>
                    <%--<td class="invert">图书书籍</td>--%>
                    <%--<td class="invert">&yen168.00</td>--%>
                    <%--<td class="invert">已审核</td>--%>
                <%--</tr>--%>
                <%--<tr class="rem1">--%>
                    <%--<td class="invert">6</td>--%>
                    <%--<td class="invert-image"><a href="single.html">深度学习</a></td>--%>
                    <%--<td class="invert">图书书籍</td>--%>
                    <%--<td class="invert">&yen168.00</td>--%>
                    <%--<td class="invert">已审核</td>--%>
                <%--</tr>--%>
                <%--<tr class="rem1">--%>
                    <%--<td class="invert">7</td>--%>
                    <%--<td class="invert-image"><a href="single.html">深度学习</a></td>--%>
                    <%--<td class="invert">图书书籍</td>--%>
                    <%--<td class="invert">&yen168.00</td>--%>
                    <%--<td class="invert">已审核</td>--%>
                <%--</tr>--%>
            </table>
        </div>
    </div>
</div>
<!-- //checkout -->

<!--&lt;!&ndash; banner-bottom &ndash;&gt;-->
<div class="banner-bottom">
    <div class="container">
        <h3 class="animated wow zoomIn" data-wow-delay=".5s">热门商品</h3>
        <div class="banner-bottom-grids">
            <div class="banner-bottom-grid-left animated wow slideInLeft" data-wow-delay=".5s">
                <div class="grid">
                    <figure class="effect-julia">
                        <img src="${pageContext.request.getContextPath()}/static/images/rmsp1.jpg" alt=" " class="img-responsive" />
                    </figure>
                    <div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">
                        <div class="banner-bottom-grid-left-grid1">
                            <img src="${pageContext.request.getContextPath()}/static/images/rmsp2.jpg" alt=" " class="img-responsive" />
                        </div>
                        <div class="banner-bottom-grid-left1-position">
                            <div class="banner-bottom-grid-left1-pos1">
                                <p>Latest New Collections</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="banner-bottom-grid-left1 animated wow slideInUp" data-wow-delay=".5s">
                <div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">
                    <div class="banner-bottom-grid-left-grid1">
                        <img src="${pageContext.request.getContextPath()}/static/images/rmsp3.jpg" alt=" " class="img-responsive" />
                    </div>
                    <div class="banner-bottom-grid-left1-pos">
                        <p>Discount 45%</p>
                    </div>
                </div>
                <div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">
                    <div class="banner-bottom-grid-left-grid1">
                        <img src="${pageContext.request.getContextPath()}/static/images/rmsp4.jpg" alt=" " class="img-responsive" />
                    </div>
                    <div class="banner-bottom-grid-left1-position">
                        <div class="banner-bottom-grid-left1-pos1">
                            <p>Latest New Collections</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="banner-bottom-grid-right animated wow slideInRight" data-wow-delay=".5s">
                <div class="banner-bottom-grid-left-grid grid-left-grid1">
                    <div class="banner-bottom-grid-left-grid1">
                        <img src="${pageContext.request.getContextPath()}/static/images/rmsp5.jpg" alt=" " class="img-responsive" />
                        <!--<img src="images/3.jpg" alt=" " class="img-responsive" />-->
                    </div>
                    <div class="grid-left-grid1-pos">
                        <p>top and classic designs </p>
                    </div>
                </div>
                <div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">
                    <div class="banner-bottom-grid-left-grid1">
                        <img src="${pageContext.request.getContextPath()}/static/images/rmsp6.jpg" alt=" " class="img-responsive" />
                    </div>
                    <div class="banner-bottom-grid-left1-position">
                        <div class="banner-bottom-grid-left1-pos1">
                            <p>2016 Collection</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //banner-bottom -->

<!-- footer -->
<div class="footer">
    <div class="container">
        <div class="footer-grids">
            <!--banner-bottom-grid-left-->
            <div class="col-md-4 footer-grid animated wow slideInLeft" data-wow-delay=".5s">
                <h3>关于我们</h3>
                <p>足不出户获得最全的商品信息，</p>
                <p>在这里找寻你急需要的商品，</p>
                <p>在这里找寻你最喜欢的商品，</p>
                <p>这里有你想要的，这里有你喜欢的，</p>
                <p>还在等什么，赶快行动起来吧！</p>
            </div>

            <div class="col-md-4 footer-grid animated wow slideInLeft" data-wow-delay=".6s">
                <h3>联系我们</h3>
                <ul>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">张旱文 123456789@qq.com</a></li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">徐孟达 dxxmda@126.com</a></li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">许多 13817717084@163.com</a></li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">熊凯丽 65356789011@qq.com</a></li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">张乐乐 lelesunshine614@gmail.com</a></li>
                </ul>
            </div>

            <div class="col-md-4 footer-grid animated wow slideInLeft" data-wow-delay=".7s">
                <h3>Partners</h3>
                <div class="footer-grid-left">
                    <a href="http://www.shnu.edu.cn/"><img src="${pageContext.request.getContextPath()}/static/images/13.png" alt=" " class="img-responsive" /></a>
                </div>
                <div class="footer-grid-left">
                    <a href="http://www.shnu.edu.cn/"><img src="${pageContext.request.getContextPath()}/static/images/13.png" alt=" " class="img-responsive" /></a>
                </div>
                <div class="footer-grid-left">
                    <a href="http://www.shnu.edu.cn/"><img src="${pageContext.request.getContextPath()}/static/images/13.png" alt=" " class="img-responsive" /></a>
                </div>
                <div class="footer-grid-left">
                    <a href="http://www.shnu.edu.cn/"><img src="${pageContext.request.getContextPath()}/static/images/13.png" alt=" " class="img-responsive" /></a>
                </div>
                <div class="footer-grid-left">
                    <a href="http://www.shnu.edu.cn/"><img src="${pageContext.request.getContextPath()}/static/images/13.png" alt=" " class="img-responsive" /></a>
                </div>
                <div class="footer-grid-left">
                    <a href="http://www.shnu.edu.cn/"><img src="${pageContext.request.getContextPath()}/static/images/13.png" alt=" " class="img-responsive" /></a>
                </div>



                <div class="clearfix"> </div>
            </div>

            <div class="clearfix"> </div>
        </div>
        <div class="footer-logo animated wow slideInUp" data-wow-delay=".5s">
            <h2><a href="${pageContext.request.getContextPath()}/views/index">GoodsWill <span>shop anywhere</span></a></h2>
        </div>
        <div class="copy-right animated wow slideInUp" data-wow-delay=".5s">
            <p>Copyright &copy; 2018.Company name All rights reserved.
                <a href="${pageContext.request.getContextPath()}/views/index" target="_blank" >GoodsWill</a>
        </div>
    </div>
</div>
<!-- //footer -->
</body>
</html>