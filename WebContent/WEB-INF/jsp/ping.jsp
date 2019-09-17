<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>Java论坛- Layui</title>
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
        <div class="layui-tab" lay-unauto="" lay-allowclose="true" lay-filter="layadmin-layout-tabs">
          <ul class="layui-tab-title" id="LAY_app_tabsheader">
            <li lay-id="home/console.html" lay-attr="home/console.html" class="">
          <li lay-id="template/personalpage.html" lay-attr="template/personalpage.html" class="layui-this" style="">
          <span>我的评论</span>
        </div>  
        <p class="layadmin-homepage-about">
          关于我
        </p>
        <ul class="layadmin-homepage-list-group">
          <li class="list-group-item"><i class="layui-icon layui-icon-location"></i>中国上海</li>
        </ul>
        <div class="layadmin-homepage-pad-hor">
          <mdall>我喜欢摄影，也喜欢写字，我视角独特，充满着奇思妙想。同时有着极丰富的情感，和对生活的热情，我可以点燃观众心中爱的火焰；而且积极、乐观、坚强，脚踏实地地做好每一件事，真诚地对待身边每一个人。</mdall>
        </div>    
        <p class="layadmin-homepage-about">
         	<font size="5" color="green">我的评论：</font>
        </p>
    <table width="100%" border="1px solid black">
    <tr>
     	 <td>评论内容</td>
         <td>评论时间</td>      
    </tr>
    <c:forEach items="${gList}" var="p">
    <tr>
      <td><c:out value="${p.floorcontent}"></c:out></td>
      <td><c:out value="${p.floortime}"></c:out></td>
    </tr>
    </c:forEach>
</table>
      <div class="layadmin-homepage-panel layadmin-homepage-shadow">
        <div class="layui-card text-center">
          <div class="layui-card-body">
            
            <h4 class="layadmin-homepage-font">${user.username}</h4>
            <p class="layadmin-homepage-min-font">${user.power}</p>
            <div class="layadmin-homepage-pad-ver">
              <a href="javascript:;" class="layui-icon layui-icon-cellphone"></a>
              <a href="javascript:;" class="layui-icon layui-icon-vercode"></a>
              <a href="javascript:;" class="layui-icon layui-icon-login-wechat"></a>
              <a href="javascript:;" class="layui-icon layui-icon-login-qq"></a>
            </div>
            <li class="layui-nav-item"><a href="http://localhost:8080/BBSz/personal.do"><button class="layui-btn layui-btn-fluid">跟随</button></a></li>           
          </div>
        </div>
        
        <ul class="layadmin-homepage-list-inline">
          <a href="javascript:;" class="layui-btn layui-btn-primary">演员</a>
          <a href="javascript:;" class="layui-btn layui-btn-primary">主持人</a>
          <a href="javascript:;" class="layui-btn layui-btn-primary">摄影师</a>
          <a href="javascript:;" class="layui-btn layui-btn-primary">导演</a>
          <a href="javascript:;" class="layui-btn layui-btn-primary">公共人物</a>
        </ul>
      </div>
    
    <!-- 插图片 -->
   
    <div class ="banner-ad-long">
    <div id="kp_box_426" data-pid="426" data-track-click=""></div>
    </div>
<!--商家end-->
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    ©到底啦
  </div>
</div>
</body>
</html>
