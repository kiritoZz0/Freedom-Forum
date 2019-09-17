<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>后台管理</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css" />
      <script>
   function del()
   {
	   alert("确认删除？");
   }
   </script>
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
<div class="layui-layout layui-layout-admin">
<!-- 最上方 -->
  <div class="layui-header">
    <div class="layui-logo">Java论坛后台管理-评论管理</div>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item"><a href="http://localhost:8080/BBSz/index.do">退出后台管理</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a href="http://localhost:8080/BBSz/Boardsmanage.do">板块管理</a>
        </li>
        <li class="layui-nav-item">
          <a href="http://localhost:8080/BBSz/postsmanage.do">帖子管理</a>
        </li>
        <li class="layui-nav-item">
          <a href="http://localhost:8080/BBSz/floorsmanage.do">评论管理</a>
        </li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
<table width="100%" border="1px solid black">
<!-- 显示 -->
    <tr>
         <td><p style="text-align:center">帖子ID</p></td>
         <td><p style="text-align:center">发帖人ID</p></td>
         <td><p style="text-align:center">回帖人ID</p></td>
         <td><p style="text-align:center">回复所在楼层</p></td>
         <td><p style="text-align:center">回帖内容</p></td>
         <td><p style="text-align:center">回帖时间</p></td>
         <td><p style="text-align:center">可进行操作</p></td>
    </tr>
    <c:forEach items="${fList}" var="f">
      <tr id="floors">
         <td><p style="text-align:center"><c:out value="${f.fid}"></p></c:out></td>
         <td><p style="text-align:center"><c:out value="${f.user_id}"></p></c:out></td>
         <td><p style="text-align:center"><c:out value="${f.post_id}"></p></c:out></td>
         <td><p style="text-align:center"><c:out value="${f.floornum}"></c:out></p></td>
         <td><p style="text-align:center"><c:out value="${f.floortime}"></p></c:out></td>
         <td><p style="text-align:center"><c:out value="${f.floorcontent}"></p></c:out></td>
		<td><p style="text-align:center" onclick="del()"><a href="http://localhost:8080/BBSz/delete2.do?fid=${f.fid}">删除</a></p></td>
        </tr>              
    </c:forEach>

</table>
<!--end-->
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © layui.com - 底部固定区域
  </div>
</div>
</div>
<script type="text/javascript " src="${pageContext.request.contextPath}/plugins/jquery/jquery.min.js "></script>
<!--引入bootstrap.js-->
<script type="text/javascript " src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.js "></script>      
<script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
</body>
</html>
