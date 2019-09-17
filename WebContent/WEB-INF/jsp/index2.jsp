<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  
  <!-- gai -------------------------------------->
  <title>layout Java论坛 - Layui</title>
  <!-- gai -------------------------------------->
  
  <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
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
<body class="layui-layout-body">

<%@ include file="common/index.jsp"%>

  <div class="layui-body">
    <!-- 内容主体区域 -->
    
    <!-- 插图片 -->
    <div class ="banner-ad-long">
    <div id="kp_box_426" data-pid="426" data-track-click=""></div>
    </div>
    
    
        <div class="layui-tab" lay-unauto="" lay-allowclose="true" lay-filter="layadmin-layout-tabs">
          <ul class="layui-tab-title" id="LAY_app_tabsheader">
            <li lay-id="home/console.html" lay-attr="home/console.html" class="layui-this"><i class="layui-icon layui-icon-home"></i><i class="layui-icon layui-unselect layui-tab-close">ဆ</i></li>
          </ul>
        </div>
      
      
              <div class="layui-card-header"><font size="5" color="blue"><a href="http://localhost:8080/BBSz/personal.do">文章</a></font></div>
              <div class="layui-card-body">
                
                <div class="layui-carousel layadmin-carousel layadmin-shortcut" style="width: 100%; height: 280px;" lay-anim="" lay-indicator="inside" lay-arrow="none">
                  <div carousel-item="">
                    <ul class="layui-row layui-col-space10 layui-this">
                      <li class="layui-col-xs3">
                        <a lay-href="user/user/list.html">
                          <i class="layui-icon layui-icon-user"></i>
                          <cite><a href="http://localhost:8080/BBSz/personal.do">精选文章</a></cite>
                          <a href="http://localhost:8080/BBSz/personal.do"><img src="${pageContext.request.contextPath}/img/2.jpg" width="300" height="200" /></a>
                        </a>
                      </li>
                 	  <li class="layui-col-xs3">
                        <a lay-href="user/user/list.html">
                          <i class="layui-icon layui-icon-user"></i>
                          <cite><a href="http://localhost:8080/BBSz/personal.do">热门文章</a></cite>
                          <a href="http://localhost:8080/BBSz/personal.do"><img src="${pageContext.request.contextPath}/img/3.jpg" width="300" height="200" /></a>
                        </a>
                      </li> 
                      <li class="layui-col-xs3">
                        <a lay-href="user/user/list.html">
                          <i class="layui-icon layui-icon-user"></i>
                          <cite><a href="http://localhost:8080/BBSz/personal.do">最新文章</a></cite>
                          <a href="http://localhost:8080/BBSz/personal.do"><img src="${pageContext.request.contextPath}/img/4.jpg" width="300" height="200" /></a>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="user/user/list.html">
                          <i class="layui-icon layui-icon-user"></i>
                          <cite><a href="http://localhost:8080/BBSz/personal.do">热评文章</a></cite>
                          <a href="http://localhost:8080/BBSz/personal.do"><img src="${pageContext.request.contextPath}/img/p.jpg" width="300" height="200" /></a>
                        </a>
                      </li>
                    </ul>        
                  </div>
                <div class="layui-carousel-ind"><ul><li class="layui-this"></li><li></li></ul></div><button class="layui-icon layui-carousel-arrow" lay-type="sub"></button><button class="layui-icon layui-carousel-arrow" lay-type="add"></button></div>
                
              </div>

     <div class="layui-card-header"><font size="5" color="blue"><a href="http://localhost:8080/BBSz/personal.do">大家都在看</a></font></div>
              <div class="layui-card-body">
                
                <div class="layui-carousel layadmin-carousel layadmin-shortcut" style="width: 100%; height: 280px;" lay-anim="" lay-indicator="inside" lay-arrow="none">
                  <div carousel-item="">
                    <ul class="layui-row layui-col-space10 layui-this">
                      <li class="layui-col-xs3">
                        <a lay-href="user/user/list.html">
                          <i class="layui-icon layui-icon-user"></i>
                          <cite><a href="http://localhost:8080/BBSz/personal.do">新闻</a></cite>
                          <a href="http://localhost:8080/BBSz/personal.do"><img src="${pageContext.request.contextPath}/img/news3.jpg" width="300" height="200" /></a>
                        </a>
                      </li>
                 	  <li class="layui-col-xs3">
                        <a lay-href="user/user/list.html">
                          <i class="layui-icon layui-icon-user"></i>
                          <cite><a href="http://localhost:8080/BBSz/personal.do">科技</a></cite>
                          <a href="http://localhost:8080/BBSz/personal.do"><img src="${pageContext.request.contextPath}/img/news1.jpg" width="300" height="200" /></a>
                        </a>
                      </li> 
                      <li class="layui-col-xs3">
                        <a lay-href="user/user/list.html">
                          <i class="layui-icon layui-icon-user"></i>
                          <cite><a href="http://localhost:8080/BBSz/personal.do">人文</a></cite>
                          <a href="http://localhost:8080/BBSz/personal.do"><img src="${pageContext.request.contextPath}/img/news.jpg" width="300" height="200" /></a>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="user/user/list.html">
                          <i class="layui-icon layui-icon-user"></i>
                          <cite><a href="http://localhost:8080/BBSz/personal.do">历史</a></cite>
                          <a href="http://localhost:8080/BBSz/personal.do"><img src="${pageContext.request.contextPath}/img/news2.jpg" width="300" height="200" /></a>
                        </a>
                      </li>
                    </ul>        
                  </div>
                <div class="layui-carousel-ind"><ul><li class="layui-this"></li><li></li></ul></div><button class="layui-icon layui-carousel-arrow" lay-type="sub"></button><button class="layui-icon layui-carousel-arrow" lay-type="add"></button></div>
                
              </div>


<!--商家end-->
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    ©到底啦<font align="center"></font>  
  </div>
</div>
<script type="text/javascript " src="${pageContext.request.contextPath}/plugins/jquery/jquery.min.js "></script>
<!--引入bootstrap.js-->
<script type="text/javascript " src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.js "></script>      
<script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>
</body>
</html>
