<!DOCTYPE html>
<html>
<head>
<title>商品详情</title>
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
<!-- //animation-effect -->
</head>
	
<body>
<!-- header -->
	<div class="header">
	<div class="container">
		<div class="logo-nav">
			<div class="logo-nav-left animated wow zoomIn" data-wow-delay=".5s">
				<h1><a href="index.html">GoodsWill <span>Shop anywhere</span></a></h1>
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
							<li class="active"><a href="index.html" class="act">主页</a></li>
							<!-- Mega Menu -->
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">商品分类 <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<div class="row">
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6>图书书籍</h6>
												<li><a href="books.html">教材</a></li>
												<li><a href="tests.html.html">考试</a></li>
												<li><a href="literature.html">艺术文学</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6>日用百货</h6>
												<li><a href="sports.html">运动类</a></li>
												<li><a href="stationery.html">文具类</a></li>
												<li><a href="life.html">生活类</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6>娱乐</h6>
												<li><a href="products.html">美妆</a></li>
												<li><a href="products.html">电子产品</a></li>
												<li><a href="products.html">Girl's Clothing</a></li>
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul>
							</li>
							<li class="dropdown">
							<li ><a href="index.html">管理中心</a></li> <!--管里中心连接到 “管里中心页面”，能够修改商品状态-->
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
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>主页</a></li>
				<li class="active">商品详情页面</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- single -->
	<div class="single">
		<div class="container">
			<div class="col-md-4 products-left">
				<div class="filter-price animated wow slideInUp" data-wow-delay=".5s">
					<h3>点击量</h3>
					<ul class="dropdown-menu1">
							<li><a href="">								               
							<div id="slider-range"></div>							
							<input type="text" id="amount" style="border: 0" />
							</a></li>	
					</ul>
						<script type='text/javascript'>//<![CDATA[ 
						$(window).load(function(){
						 $( "#slider-range" ).slider({
								range: true,
								min: 0,
								max: 100000,
								values: [ 10000, 60000 ],
								slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
								}
					 });
					$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );


						});//]]>
						</script>
						<script type="text/javascript" src="${pageContext.request.getContextPath()}/static/js/jquery-ui.min.js"></script>
					 <!---->
				</div>

				<div class="categories animated wow slideInUp" data-wow-delay=".5s">
					<h3>商品分类</h3>
					<ul class="cate">
						<li><a href="${pageContext.request.contextPath}/views/products">图书书籍</a> <span>(33)</span></li>
						<ul>
							<li><a href="${pageContext.request.contextPath}/views/books">教材</a> <span>(15)</span></li>
							<li><a href="${pageContext.request.contextPath}/views/tests">考试</a> <span>(9)</span></li>
							<li><a href="${pageContext.request.contextPath}/views/literature">文学</a> <span>(9)</span></li>
						</ul>
						<li><a href="${pageContext.request.contextPath}/views/products">日用百货</a> <span>(36)</span></li>
						<ul>
							<li><a href="${pageContext.request.contextPath}/views/sports">运动类</a> <span>(12)</span></li>
							<li><a href="${pageContext.request.contextPath}/views/stationery">文具类</a> <span>(9)</span></li>
							<li><a href="${pageContext.request.contextPath}/views/life">生活类</a> <span>(15)</span></li>
						</ul>
						<li><a href="${pageContext.request.contextPath}/views/products">娱乐</a> <span>(24)</span></li>
						<ul>
							<li><a href="${pageContext.request.contextPath}/views/beautymakeup">美妆</a> <span>(15)</span></li>
							<li><a href="${pageContext.request.contextPath}/views/electronicproducts">电子产品</a> <span>(9)</span></li>
						</ul>
					</ul>
				</div>

				<!--<div class="men-position animated wow slideInUp" data-wow-delay=".5s">-->
					<!--<a href="single.html"><img src="images/29.jpg" alt=" " class="img-responsive" /></a>-->
					<!--<div class="men-position-pos">-->
						<!--<h4>上海师范大学</h4>-->
						<!--<h5><span>GoodsWill</span> </h5>-->
					<!--</div>-->
				<!--</div>-->
			</div>
			<div class="col-md-8 single-right">
				<div class="col-md-5 single-right-left animated wow slideInUp" data-wow-delay=".5s">
					<div class="flexslider">
						<ul class="slides">
							<li data-thumb="${pageContext.request.getContextPath()}/static/images/si.jpg">
								<div class="thumb-image"> <img src="${pageContext.request.getContextPath()}/static/images/si.jpg" data-imagezoom="true" class="img-responsive"> </div>
							</li>
							<li data-thumb="${pageContext.request.getContextPath()}/static/images/si1.jpg">
								<div class="thumb-image"> <img src="${pageContext.request.getContextPath()}/static/images/si1.jpg" data-imagezoom="true" class="img-responsive"> </div>
							</li>
							<li data-thumb="${pageContext.request.getContextPath()}/static/images/si2.jpg">
								<div class="thumb-image"> <img src="${pageContext.request.getContextPath()}/static/images/si2.jpg" data-imagezoom="true" class="img-responsive"> </div>
							</li>
						</ul>
					</div>
					<!-- flixslider -->
					<script defer src="${pageContext.request.getContextPath()}/static/js/jquery.flexslider.js"></script>
					<link rel="stylesheet" href="${pageContext.request.getContextPath()}/static/css/flexslider.css" type="text/css" media="screen" />
					<script>
                        // Can also be used with $(document).ready()
                        $(window).load(function() {
                            $('.flexslider').flexslider({
                                animation: "slide",
                                controlNav: "thumbnails"
                            });
                        });
					</script>
					<!-- flixslider -->
				</div>
				<div class="col-md-7 single-right-left simpleCart_shelfItem animated wow slideInRight" data-wow-delay=".5s">
					<h3>深度学习</h3>
					<h4><span class="item_price">&yen168.00</span></h4>
					<div class="rating1">
						<span class="starRating" >
							商品状态：（未出 / 已出）
						</span>
					</div>
					<div class="description">
						<h5><i>详情</i></h5>
						<p>这是一本教科书，又不只是一本教科书。任何对深度学习感兴趣的读者，本书在很长一段时间里，都将是你能够获得
							的最全面系统的资料，以及思考并真正推进深度学习产业应用、构建智能化社会框架的绝佳理论起点。</p>
					</div>
					<div class="color-quality">
						<div class="color-quality-left">
							<h5>新旧程度 :（只显示文字，填充程度百分数） </h5>
						</div>

						<div class="clearfix"> </div>
					</div>

					<div class="occasional">
						<h5>卖家联系方式 :</h5>
						<div class="clearfix"> </div>
					</div>
					<div class="occasion-cart">
						<a class="item_add" href="#">确认购买 </a>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //single -->
<!-- single-related-products -->
	<div class="single-related-products">
		<div class="container">
			<h3 class="animated wow slideInUp" data-wow-delay=".5s">相关商品</h3>
			<p class="est animated wow slideInUp" data-wow-delay=".5s">或许你会对这些商品感兴趣... ...</p>
			<div class="new-collections-grids">
				<div class="col-md-3 new-collections-grid">
					<div class="new-collections-grid1 animated wow slideInLeft" data-wow-delay=".5s">
						<div class="new-collections-grid1-image">
							<a href="single.html" class="product-image"><img src="${pageContext.request.getContextPath()}/static/images/8.jpg" alt=" " class="img-responsive"></a>
							<div class="new-collections-grid1-image-pos">
								<a href="single.html">Quick View</a>
							</div>
							<div class="new-collections-grid1-right">
								<div class="rating">
									<div class="rating-left">
										<img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive">
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</div>
						<h4><a href="single.html">Running Shoes</a></h4>
						<p>Vel illum qui dolorem eum fugiat.</p>
						<div class="new-collections-grid1-left simpleCart_shelfItem">
							<p> <span class="item_price">&yen150</span></p>
						</div>
					</div>
				</div>

				<div class="col-md-6 new-collections-grid">
					<div class="new-collections-grid1-sub">
						<div class="new-collections-grid1 animated wow slideInLeft" data-wow-delay=".6s">
							<div class="new-collections-grid1-image">
								<a href="single.html" class="product-image"><img src="${pageContext.request.getContextPath()}/static/images/6.jpg" alt=" " class="img-responsive"></a>
								<div class="new-collections-grid1-image-pos">
									<a href="single.html">Quick View</a>
								</div>
								<div class="new-collections-grid1-right">
									<div class="rating">
										<div class="rating-left">
											<img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive">
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
							</div>
							<h4><a href="single.html">Wall Lamp</a></h4>
							<p>Vel illum qui dolorem eum fugiat.</p>
							<div class="new-collections-grid1-left simpleCart_shelfItem">
								<p> <span class="item_price">&yen400</span></p>
							</div>
						</div>
					</div>
					<div class="new-collections-grid1-sub">
						<div class="new-collections-grid1 animated wow slideInLeft" data-wow-delay=".7s">
							<div class="new-collections-grid1-image">
								<a href="single.html" class="product-image"><img src="${pageContext.request.getContextPath()}/static/images/9.jpg" alt=" " class="img-responsive"></a>
								<div class="new-collections-grid1-image-pos">
									<a href="single.html">Quick View</a>
								</div>
								<div class="new-collections-grid1-right">
									<div class="rating">
										<div class="rating-left">
											<img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive">
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
							</div>
							<h4><a href="single.html">Wall Lamp</a></h4>
							<p>Vel illum qui dolorem eum fugiat.</p>
							<div class="new-collections-grid1-left simpleCart_shelfItem">
								<p><span class="item_price">&yen150</span></p>
							</div>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>

				<div class="col-md-3 new-collections-grid">
					<div class="new-collections-grid1 animated wow slideInLeft" data-wow-delay=".8s">
						<div class="new-collections-grid1-image">
							<a href="single.html" class="product-image"><img src="${pageContext.request.getContextPath()}/static/images/11.jpg" alt=" " class="img-responsive"></a>
							<div class="new-collections-grid1-image-pos">
								<a href="single.html">Quick View</a>
							</div>
							<div class="new-collections-grid1-right">
								<div class="rating">
									<div class="rating-left">
										<img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="${pageContext.request.getContextPath()}/static/images/2.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="${pageContext.request.getContextPath()}/static/images/1.png" alt=" " class="img-responsive">
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</div>
						<h4><a href="single.html">Stones Bangles</a></h4>
						<p>Vel illum qui dolorem eum fugiat.</p>
						<div class="new-collections-grid1-left simpleCart_shelfItem">
							<p><span class="item_price">&yen257</span></p>
						</div>
					</div>
				</div>

				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //single-related-products -->
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
					<a href="single.html"><img src="${pageContext.request.getContextPath()}/static/images/13.png" alt=" " class="img-responsive" /></a>
				</div>
				<div class="footer-grid-left">
					<a href="single.html"><img src="${pageContext.request.getContextPath()}/static/images/13.png" alt=" " class="img-responsive" /></a>
				</div>
				<div class="footer-grid-left">
					<a href="single.html"><img src="${pageContext.request.getContextPath()}/static/images/13.png" alt=" " class="img-responsive" /></a>
				</div>
				<div class="footer-grid-left">
					<a href="single.html"><img src="${pageContext.request.getContextPath()}/static/images/13.png" alt=" " class="img-responsive" /></a>
				</div>
				<div class="footer-grid-left">
					<a href="single.html"><img src="${pageContext.request.getContextPath()}/static/images/13.png" alt=" " class="img-responsive" /></a>
				</div>
				<div class="footer-grid-left">
					<a href="single.html"><img src="${pageContext.request.getContextPath()}/static/images/13.png" alt=" " class="img-responsive" /></a>
				</div>



				<div class="clearfix"> </div>
			</div>

			<div class="clearfix"> </div>
		</div>
		<div class="footer-logo animated wow slideInUp" data-wow-delay=".5s">
			<h2><a href="index.html">GoodsWill <span>shop anywhere</span></a></h2>
		</div>
		<div class="copy-right animated wow slideInUp" data-wow-delay=".5s">
			<p>Copyright &copy; 2016.Company name All rights reserved.
				<a href="index.html" target="_blank" title="">GoodsWill</a>
		</div>
	</div>
</div>
<!-- //footer -->
<!-- zooming-effect -->
	<script src="${pageContext.request.getContextPath()}/static/js/imagezoom.js"></script>
<!-- //zooming-effect -->
</body>
</html>