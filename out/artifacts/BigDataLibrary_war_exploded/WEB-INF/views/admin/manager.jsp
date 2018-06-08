<%--
  Created by IntelliJ IDEA.
  User: zhanghanwen
  Date: 2018/4/7
  Time: 下午4:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${pageContext.request.getContextPath()}/static/images/favoricon.ico">

    <title>后台管理</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.getContextPath()}/static/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="${pageContext.request.getContextPath()}/static/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <script src="${pageContext.request.getContextPath()}/static/js/jquery.min.js"></script>
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.getContextPath()}/static/css/dashboard.css" rel="stylesheet">
    <script src="${pageContext.request.getContextPath()}/static/js/ie8-responsive-file-warning.js"></script>
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><![endif]-->
    <script src="${pageContext.request.getContextPath()}/static/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script language="JavaScript">

        function SelectChange(selectId) {
            //获取下拉框选中项的value属性值
            var selectValue = $("#"+selectId).val();

            var twoText = selectValue.split(".");
            var status = twoText[0];
            var goodsId = twoText[1];
            $.ajax({
                type: "post",
                contentType:"application/string",
                dataType:"json",
                async:false,
                url : "/goodswill/admin/changeGoodsStatus?status="+status+"&goodsId="+goodsId,
                success: function (data) {
                    datas = data;
                },
            });

        }
    </script>
</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.getContextPath()}/admin/status">GoodsWill 管理后台</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="${pageContext.request.getContextPath()}/admin/logout">登出</a></li>
            </ul>

        </div>


    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li <c:if test="${sessionScope.active == '0'}">class="active"</c:if>>
                    <a href="${pageContext.request.getContextPath()}/admin/status?status=0">待审核<span class="sr-only">(current)</span></a></li>
                <li <c:if test="${sessionScope.active == '1'}">class="active"</c:if>><a href="${pageContext.request.getContextPath()}/admin/status?status=1">已审核</a></li>
            </ul>
            <ul class="nav nav-sidebar">
            </ul>

        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>商品名称</th>
                        <th>商品分类</th>
                        <th>价格</th>
                        <th>状态</th>
                    </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${goodsList}" var="goods" varStatus="vs">
                            <tr>
                                <td>${vs.index + 1}</td>
                                <td>${goods.goodsName}</td>
                                <td>
                                    <c:if test="${goods.cate == '1'}">图书书籍</c:if>
                                    <c:if test="${goods.cate == '2'}">日用百货</c:if>
                                    <c:if test="${goods.cate == '3'}">娱乐</c:if>
                                </td>
                                <td>¥ ${goods.price}</td>
                                <td>
                                    <select id="checkGoodsStatus${vs.index+1}" name="checkGoodsStatus${vs.index+1}" onchange="SelectChange('checkGoodsStatus${vs.index+1}')">
                                        <option value="0.${goods.id}" <c:if test="${goods.status == 0}">selected</c:if>>待审核</option>
                                        <option value="1.${goods.id}" <c:if test="${goods.status == 1}">selected</c:if>>已审核</option>
                                    </select>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

                <%--<nav aria-label="Page navigation" style="margin-left: 350px">--%>
                    <%--<ul class="pagination">--%>
                        <%--<li>--%>
                            <%--<a href="#" aria-label="Previous">--%>
                                <%--<span aria-hidden="true">&laquo;</span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li><a href="#">1</a></li>--%>
                        <%--<li><a href="#">2</a></li>--%>
                        <%--<li><a href="#">3</a></li>--%>
                        <%--<li><a href="#">4</a></li>--%>
                        <%--<li><a href="#">5</a></li>--%>
                        <%--<li>--%>
                            <%--<a href="#" aria-label="Next">--%>
                                <%--<span aria-hidden="true">&raquo;</span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                <%--</nav>--%>

            </div>


        </div>



    </div>



</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="${pageContext.request.getContextPath()}/static/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.getContextPath()}/static/js/bootstrap.min.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<script src="${pageContext.request.getContextPath()}/static/js/holder.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="${pageContext.request.getContextPath()}/static/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
