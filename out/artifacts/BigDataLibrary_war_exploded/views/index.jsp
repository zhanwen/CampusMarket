<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 2018/5/4
  Time: 21:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
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
    <script src="${pageContext.request.getContextPath()}/static/js/simpleCart.min.js"></script>
    <!-- cart -->
    <!-- for bootstrap working -->
    <script type="text/javascript" src="${pageContext.request.getContextPath()}/static/js/bootstrap-3.1.1.min.js"></script>
    <!-- //for bootstrap working -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <!-- timer -->
    <link rel="stylesheet" href="${pageContext.request.getContextPath()}/static/css/jquery.countdown.css" />
    <!-- //timer -->
    <!-- animation-effect -->
    <link href="${pageContext.request.getContextPath()}/static/css/animate.min.css" rel="stylesheet">
    <script src="${pageContext.request.getContextPath()}/static/js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <!-- //animation-effect -->
</head>

<body>
<!-- header -->
<div class="header">
    <div class="container">
        <div class="logo-nav">
            <div class="logo-nav-left animated wow zoomIn" data-wow-delay=".5s">
                <h1><a href="${pageContext.request.getContextPath()}/views/index">GoodsWill <span>Shop anywhere</span></a></h1>
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
                                                <li><a href="${pageContext.request.contextPath}/views/beautymakeup">美妆</a></li>
                                                <li><a href="${pageContext.request.contextPath}/views/electronicproducts">电子产品</a></li>
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
                                <a href="${pageContext.request.getContextPath()}/views/login">登陆</a>
                            </c:if>
                            <c:if test="${sessionScope.user != null}">
                                <a href="${pageContext.request.getContextPath()}/views/managecenter">${sessionScope.user.username}</a>
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

<!-- banner -->
<div class="banner">
    <div class="container">
        <div class="banner-info animated wow zoomIn" data-wow-delay=".5s">
            <h3>Free Online Shopping</h3>
            <h4>Up to <span>50% <i>Off/-</i></span></h4>
            <div class="wmuSlider example1">
                <div class="wmuSliderWrapper">
                    <article style="position: absolute; width: 100%; opacity: 0;">
                        <div class="banner-wrap">
                            <div class="banner-info1">
                                <p>T-Shirts + Formal Pants + Jewellery + Cosmetics</p>
                            </div>
                        </div>
                    </article>
                    <article style="position: absolute; width: 100%; opacity: 0;">
                        <div class="banner-wrap">
                            <div class="banner-info1">
                                <p>Toys + Furniture + Lighting + Watches</p>
                            </div>
                        </div>
                    </article>
                    <article style="position: absolute; width: 100%; opacity: 0;">
                        <div class="banner-wrap">
                            <div class="banner-info1">
                                <p>Tops + Books & Media + Sports</p>
                            </div>
                        </div>
                    </article>
                </div>
            </div>
            <script src="${pageContext.request.getContextPath()}/static/js/jquery.wmuSlider.js"></script>
            <script>
                $('.example1').wmuSlider();
            </script>
        </div>
    </div>
</div>
<!-- //banner -->
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
                            <p></p>
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
                            <p>2018 Collection</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //banner-bottom -->
<!-- collections -->

<div class="new-collections">
    <div class="container">
        <h3 class="animated wow zoomIn" data-wow-delay=".5s">商品</h3>
        <p class="est animated wow zoomIn" data-wow-delay=".5s">你想要的商品都在这里，你喜欢的商品在这里都能找到。</p>

        <div class="new-collections-grids">
            <h2 class="animated wow zoomIn" data-wow-delay=".5s">
                <em>图书书籍</em>
                <a class="header-grid-right" href="${pageContext.request.contextPath}/views/books">更多 >></a>
            </h2>


            <c:forEach items="${bookList}" var="goods">
                <div class="col-md-3 new-collections-grid">
                    <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a href="${pageContext.request.getContextPath()}/views/single?goodsId=${goods.id}" class="product-image"><img src="${pageContext.request.getContextPath()}/static/upload/file/${goods.imagepath}" alt=" " class="img-responsive" height="400"/></a>
                            <div class="new-collections-grid1-image-pos">
                                <a href="${pageContext.request.getContextPath()}/views/single?goodsId=${goods.id}">Quick View</a>
                            </div>
                            <div class="new-collections-grid1-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="${pageContext.request.getContextPath()}/views/single?goodsId=${goods.id}">${goods.goodsName}</a></h4>
                        <p>教材类</p>
                        <div class="new-collections-grid1-left simpleCart_shelfItem">
                            <p><span class="item_price">￥${goods.price}</span><a class="item_add" href="${pageContext.request.getContextPath()}/views/single?goodsId=${goods.id}">立即查看 </a></p>
                        </div>
                    </div>
                </div>
            </c:forEach>


            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="${pageContext.request.getContextPath()}/views/single?goodsId=5" class="product-image"><img src="${pageContext.request.getContextPath()}/static/images/jc2.jpg" alt=" " class="img-responsive" /></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="${pageContext.request.getContextPath()}/views/single?goodsId=5">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="${pageContext.request.getContextPath()}/views/single?goodsId=5">动态网页设计与制作</a></h4>
                    <p>教材类</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><span class="item_price">￥22</span><a class="item_add" href="${pageContext.request.getContextPath()}/views/single?goodsId=5">立即查看 </a></p>
                    </div>
                </div>

            </div>

            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="${pageContext.request.getContextPath()}/views/single?goodsId=5" class="product-image"><img src="${pageContext.request.getContextPath()}/static/images/jc3.jpg" alt=" " class="img-responsive" /></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="${pageContext.request.getContextPath()}/views/single?goodsId=5">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="${pageContext.request.getContextPath()}/views/single?goodsId=5">Deep Learning</a></h4>
                    <p>教材类</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><span class="item_price">￥35</span><a class="item_add" href="${pageContext.request.getContextPath()}/views/single?goodsId=5">立即查看 </a></p>
                    </div>
                </div>
            </div>

            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="${pageContext.request.getContextPath()}/views/single?goodsId=5" class="product-image"><img src="${pageContext.request.getContextPath()}/static/images/jc4.jpg" alt=" " class="img-responsive" /></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="${pageContext.request.getContextPath()}/views/single?goodsId=5">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="${pageContext.request.getContextPath()}/views/single?goodsId=5">市场营销学</a></h4>
                    <p>教材类</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p> <span class="item_price">￥12</span><a class="item_add" href="${pageContext.request.getContextPath()}/views/single?goodsId=5">立即查看 </a></p>
                    </div>
                </div>

            </div>

            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="${pageContext.request.getContextPath()}/views/single?goodsId=5" class="product-image"><img src="${pageContext.request.getContextPath()}/static/images/ks1.jpg" alt=" " class="img-responsive" /></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="${pageContext.request.getContextPath()}/views/single?goodsId=5">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="${pageContext.request.getContextPath()}/views/single?goodsId=5">CIA</a></h4>
                    <p>考试类</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p> <span class="item_price">￥50</span><a class="item_add" href="${pageContext.request.getContextPath()}/views/single?goodsId=5">立即查看 </a></p>
                    </div>
                </div>

            </div>

            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="${pageContext.request.getContextPath()}/views/single?goodsId=5" class="product-image"><img src="${pageContext.request.getContextPath()}/static/images/ks2.jpg" alt=" " class="img-responsive" /></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="${pageContext.request.getContextPath()}/views/single?goodsId=5">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="${pageContext.request.getContextPath()}/views/single?goodsId=5">初级会计实务</a></h4>
                    <p>考试类</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><span class="item_price">￥10</span><a class="item_add" href="${pageContext.request.getContextPath()}/views/single?goodsId=5">立即查看 </a></p>
                    </div>
                </div>
            </div>


            <div class="clearfix"> </div>
        </div>



        <div class="new-collections-grids">
            <h2 class="animated wow zoomIn" data-wow-delay=".5s">
                <em>日用百货</em>
                <a class="header-grid-right" href="${pageContext.request.contextPath}/views/sports">更多 >></a>
            </h2>
            <c:forEach items="${storeList}" var="goods">
            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="${pageContext.request.getContextPath()}/views/single?goodsId=${goods.id}" class="product-image"><img src="${pageContext.request.getContextPath()}/static/upload/file/${goods.imagepath}" alt=" " class="img-responsive" /></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="${pageContext.request.getContextPath()}/views/single?goodsId=${goods.id}">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="${pageContext.request.getContextPath()}/views/single?goodsId=${goods.id}">${goods.goodsName}</a></h4>
                    <p>生活类</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><span class="item_price">￥${goods.price}</span><a class="item_add" href="${pageContext.request.getContextPath()}/views/single?goodsId=${goods.id}">立即查看 </a></p>
                    </div>
                </div>
            </div>

            </c:forEach>
            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="${pageContext.request.getContextPath()}/views/single?goodsId=5" class="product-image"><img src="${pageContext.request.getContextPath()}/static/images/sh12.jpg" alt=" " class="img-responsive" /></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="${pageContext.request.getContextPath()}/views/single?goodsId=5">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="${pageContext.request.getContextPath()}/views/single?goodsId=5">台灯</a></h4>
                    <p>生活类</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><span class="item_price">￥35</span><a class="item_add" href="${pageContext.request.getContextPath()}/views/single?goodsId=5">立即查看 </a></p>
                    </div>
                </div>

            </div>

            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="${pageContext.request.getContextPath()}/views/single?goodsId=5" class="product-image"><img src="${pageContext.request.getContextPath()}/static/images/sh2.jpg" alt=" " class="img-responsive" /></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="${pageContext.request.getContextPath()}/views/single?goodsId=5">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="${pageContext.request.getContextPath()}/views/single?goodsId=5">电风扇</a></h4>
                    <p>生活类</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p></i> <span class="item_price">￥35</span><a class="item_add" href="${pageContext.request.getContextPath()}/views/single?goodsId=5">立即查看 </a></p>
                    </div>
                </div>

            </div>

            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="${pageContext.request.getContextPath()}/views/single?goodsId=5" class="product-image"><img src="${pageContext.request.getContextPath()}/static/images/sh9.jpg" alt=" " class="img-responsive" /></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="${pageContext.request.getContextPath()}/views/single?goodsId=5">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="${pageContext.request.getContextPath()}/views/single?goodsId=5">脸盆</a></h4>
                    <p>生活类</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><span class="item_price">￥10</span><a class="item_add" href="${pageContext.request.getContextPath()}/views/single?goodsId=5">立即查看 </a></p>
                    </div>
                </div>

            </div>

            <div class="clearfix"> </div>
        </div>

        <div class="new-collections-grids">
            <h2 class="animated wow zoomIn" data-wow-delay=".5s">
                <em>娱乐</em>
                <a class="header-grid-right" href="${pageContext.request.contextPath}/views/beautymakeup.jsp">更多 >></a>
            </h2>
            <c:forEach items="${amazeList}" var="goods">
            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="${pageContext.request.getContextPath()}/views/single?goodsId=${goods.id}" class="product-image"><img src="${pageContext.request.getContextPath()}/static/upload/file/${goods.imagepath}" alt=" " class="img-responsive" /></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="${pageContext.request.getContextPath()}/views/single?goodsId=${goods.id}">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="${pageContext.request.getContextPath()}/views/single?goodsId=${goods.id}">${goods.goodsName}</a></h4>
                    <p>运动类</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><span class="item_price">￥${goods.price}</span><a class="item_add" href="${pageContext.request.getContextPath()}/views/single?goodsId=${goods.id}">立即查看 </a></p>
                    </div>
                </div>
            </div>
            </c:forEach>

            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="${pageContext.request.getContextPath()}/views/single?goodsId=5" class="product-image"><img src="${pageContext.request.getContextPath()}/static/images/yd13.jpg" alt=" " class="img-responsive" /></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="${pageContext.request.getContextPath()}/views/single?goodsId=5">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="${pageContext.request.getContextPath()}/views/single?goodsId=5">瑜伽垫</a></h4>
                    <p>运动类</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><span class="item_price">￥30</span><a class="item_add" href="${pageContext.request.getContextPath()}/views/single?goodsId=5">立即查看 </a></p>
                    </div>
                </div>

            </div>

            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="${pageContext.request.getContextPath()}/views/single?goodsId=5" class="product-image"><img src="${pageContext.request.getContextPath()}/static/images/mz15.jpg" alt=" " class="img-responsive" /></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="${pageContext.request.getContextPath()}/views/single?goodsId=5">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="${pageContext.request.getContextPath()}/views/single?goodsId=5">口红</a></h4>
                    <p>美妆类</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><span class="item_price">￥100</span><a class="item_add" href="${pageContext.request.getContextPath()}/views/single?goodsId=5">立即查看 </a></p>
                    </div>
                </div>

            </div>

            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="${pageContext.request.getContextPath()}/views/single?goodsId=5" class="product-image"><img src="${pageContext.request.getContextPath()}/static/images/mz19.jpg" alt=" " class="img-responsive" /></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="${pageContext.request.getContextPath()}/views/single?goodsId=5">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="${pageContext.request.getContextPath()}/views/single?goodsId=5">纪梵希</a></h4>
                    <p>美妆类</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><span class="item_price">￥200</span><a class="item_add" href="${pageContext.request.getContextPath()}/views/single?goodsId=5">立即查看 </a></p>
                    </div>
                </div>

            </div>

            <div class="clearfix"> </div>
        </div>

    </div>
</div>





<!-- //new-timer -->
<!-- collections-bottom -->
<div class="collections-bottom">
    <div class="container">
        <div class="collections-bottom-grids">
            <div class="collections-bottom-grid animated wow slideInLeft" data-wow-delay=".5s">
                <h3>45% Offer For <span>Women & Children's</span></h3>
            </div>
        </div>
        <div class="newsletter animated wow slideInUp" data-wow-delay=".5s">
            <h3>Newsletter</h3>
            <p>Join us now to get all news and special offers.</p>
            <form>
                <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                <input type="email" value="Enter your email address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter your email address';}" required="">
                <input type="submit" value="Join Us" >
            </form>
        </div>
    </div>
</div>
<!-- //collections-bottom -->
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
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">张旱文 12345678900@example.com</a></li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">徐孟达 dxxmda@126.com</a></li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">许多 13817717084@163.com</a></li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">熊凯丽 65356789011@example.com</a></li>
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
            <h2><a href="index.jsp">GoodsWill <span>shop anywhere</span></a></h2>
        </div>
        <div class="copy-right animated wow slideInUp" data-wow-delay=".5s">
            <p>Copyright &copy; 2017.Company name All rights reserved.
                <a href="index.jsp" target="_blank" title="GoodsPass">GoodsWill</a>
        </div>
    </div>
</div>
<!-- //footer -->
</body>
</html>