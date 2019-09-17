<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/1/21 0021
  Time: 下午 12:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
    <meta charset="UTF-8">
    <title>图书管理</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css" />
    <style type="text/css">
        .myLink li:hover {
            color: cornflowerblue;
            background-color: white;
        }

        #booklist img {
            width: 80px;
            height: 90px;
        }

        .login_form1 {
            display: none;
        }

        .login_form2 {
            display: block;
        }

        .nonestyle {}
    </style>
</head>

<body>

<div class="container-fluid" style="margin-top: 2%;">
    <div class="row">
        <ul class="breadcrumb">
            <li>
                <a href="#">Home</a>
            </li>
            <li>
                <a href="#">商家服务</a>
            </li>
            <li>
                <a href="#">后台管理</a>
            </li>
            <li class="active">图书管理</li>
        </ul>
    </div>
</div>
<!--面包屑导航end-->
<!--附加导航-->
<div style="margin-top: 5%;">

    <div class="container-fluid">

        <ul class="nav nav-tabs">
            <li>
                <a data-toggle="tab" href="#home">首页</a>
            </li>
            <li class="active">
                <a data-toggle="tab" href="#menu1">图书管理</a>
            </li>
            <li>
                <a data-toggle="tab" href="#menu2">供应商</a>
            </li>
            <li>
                <a data-toggle="tab" href="#menu3">帮助</a>
            </li>
        </ul>

        <div class="tab-content">
            <div id="home" class="tab-pane fade">
                <h3>首页</h3>

            </div>

            <!-- 侧边导航  -->
            <div id="menu1" class="tab-pane fade  in active">
                <div class="container-fluid pull-left col-md-1 col-sm-1 col-lg-1 col-xs-1" style="margin-top:12%;">
                    <div class="row">
                        <div class="panel-group" id="accordion">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion"
                                           href="#collapseOne">
                                            订单中心
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <a href="#">出库订单</a>
                                    </div>
                                    <div class="panel-body">
                                        <a href="#">采购订单</a>
                                    </div>
                                </div>

                            </div>
                            <div class="panel panel-success" style="margin-top: 20%;">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion"
                                           href="#collapseTwo">
                                            销售情况
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <a href="#">图书销售情况表</a>
                                    </div>
                                    <div class="panel-body">
                                        <a href="#">月营销额统计</a>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-info" style="margin-top: 20%;">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion"
                                           href="#collapseThree">
                                            图书上架
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <a href="#">新书上架</a>
                                    </div>
                                    <div class="panel-body">
                                        <a href="#">图书下架</a>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>

                </div>
                <!--表格begin-->
                <div class="container pull-right col-md-10 col-lg-10 col-sm-10 col-xs-10" id="booklist" style="margin-right: 2%;margin-top: 5%;">
                    <div class="row">
                        <table class="table table-hover col-md-6 table-responsive">
                            <caption>图书管理</caption>
                            <thead>
                            <tr>
                                <th>书籍信息</th>
                                <th>价格</th>
                                <th>库存(本)</th>
                                <th>热销等级</th>
                                <th>上架日期</th>
                                <th>操作</th>

                            </tr>
                            </thead>
                            <tbody>

                                     <c:forEach items="${booksList}" var="b" varStatus="vs">
                                         <tr>
                                     <td class="col-md-4"><input type="checkbox" /><img class="lazy"   data-original="${path}${b.imgUrl}"    alt="通用的占位符缩略图" /><span class="col-md-6 pull-right" style="color: red;">${b.bookname}</span></td>
                                     <td>￥${b.price}</td>
                                     <td>${b.num}</td>
                                         <c:if test="${b.salegrade == 1}">
                                     <td class="col-md-2">
                                     <p style="background-color: #FFFFBB;"> &nbsp;</p>
                                     </td>
                                         </c:if>
                                         <c:if test="${b.salegrade == 2}">
                                             <td class="col-md-2">
                                                 <p style="background-color: #FFDD55;"> &nbsp;</p>
                                             </td>
                                         </c:if>
                                         <c:if test="${b.salegrade == 3}">
                                             <td class="col-md-2">
                                                 <p style="background-color: #FFAA33;"> &nbsp;</p>
                                             </td>
                                         </c:if>
                                         <c:if test="${b.salegrade == 4}">
                                             <td class="col-md-2">
                                                 <p style="background-color: #FF7744;"> &nbsp;</p>
                                             </td>
                                         </c:if>
                                         <c:if test="${b.salegrade == 5}">
                                             <td class="col-md-2">
                                                 <p style="background-color: #FF0000;"> &nbsp;</p>
                                             </td>
                                         </c:if>
                                         <td>${b.createDate}</td>
                                     <td>
                                     <p class="pull-right">
                                     <a href="${path}/book/operate?id=${b.id}" class="text-danger">
                                     <span class="glyphicon glyphicon-trash"></span>
                                     </a>
                                     </p>
                                     <p>
                                     <a href="#" class="text-warning">
                                     <span class="glyphicon glyphicon-edit"></span>
                                     </a>
                                     </p>
                                     </td>

                            </tr>

                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="container" style="margin-top: 3%;">

                        <a href="#" class="text-danger">
                            <span class="glyphicon glyphicon-trash"></span>
                        </a>
                        <button class="btn-danger">	批量删除</button>
                    </div>
                    <div class="container" style="text-align: center;">
                        <ul class=" pager">
                            <li>
                                <a href="#">Previous</a>
                            </li>
                            <li class="active">
                                <a href="#">1</a>
                            </li>
                            <li class="disabled">
                                <a href="#">2</a>
                            </li>
                            <li>
                                <a href="#">3</a>
                            </li>
                            <li>
                                <a href="#">4</a>
                            </li>
                            <li>
                                <a href="#">5</a>
                            </li>
                            <li>
                                <a href="#">Next</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--表格end-->
            </div>
            <div id="menu2" class="tab-pane fade">
                <h3>供应商</h3>
            </div>
            <div id="menu3" class="tab-pane fade">
                <h3>帮助列表</h3>

            </div>
        </div>
    </div>
</div>
<!--列表end-->

<!--引入jquery-->
<script type="text/javascript " src="${pageContext.request.contextPath}/plugins/jquery/jquery.min.js "></script>
<!--引入bootstrap.js-->
<script type="text/javascript " src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.js "></script>
<!--引入延迟加载js-->
<script type="text/javascript " src="${pageContext.request.contextPath}/plugins/lazyload/jquery-lazyload.min.js "></script>

<script type="text/javascript " >

    $(function() {
        $('#myCarousel').carousel({
            interval: 2000
        })
    });

    $(function() {
        $("img.lazy").lazyload({
            effect: "fadeIn"
        });
    });
    $(function (){
        $("[data-toggle='popover' ] ").popover();
    });

</script>
</body>

</html>
