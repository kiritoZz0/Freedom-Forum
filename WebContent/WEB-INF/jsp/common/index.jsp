<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>layout 后台大布局 - Layui</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css" />
<style type="text/css">
        .myBanner img {
            width: 100%;
        }

        /*.books_c1 {*/
            /*display: none;*/
        /*}*/

        /*.books_c2 {*/
            /*display: block;*/
        /*}*/

        .pwdLab{
            display: none;
        }

        .unameLab{
            display: none;
        }

        .pwdLab2{
            display: block;
        }

        .unameLab2{
            display: block;
        }
    </style>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
  <!-- ----------------------------- -->
    <div class="layui-logo">Java论坛</div>
   <!-- ----------------------------- -->
    
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="http://localhost:8080/BBSz/index.do">首页</a></li>
      
      <li class="layui-nav-item"><a href="">热搜榜</a></li>
      <li class="layui-nav-item"><a href="">消息</a></li>
      <li class="layui-nav-item">
        <a href="javascript:;">精选版块</a>
        <dl class="layui-nav-child">
          <dd><a href="">邮件管理</a></dd>
          <dd><a href="">消息管理</a></dd>
          <dd><a href="">授权管理</a></dd>
        </dl>
      </li>
      <!-- 后台管理 -->
      <c:choose>
        <c:when test="${sessionScope.user.getPower() == 2}">
       <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/backstage.do">后台管理</a></li>
       </c:when>
         <c:when test="${sessionScope.user.getPower() != 2}">
       <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/input_post.do">我要发帖</a></li>
       </c:when>
       </c:choose>
    </ul>
    
    
    <ul class="layui-nav layui-layout-right">
                  <c:choose>
                       <c:when test="${sessionScope.user == null}">
                            <li>
                                 <li class="layui-nav-item"><a href="#" data-toggle="modal" data-target="#sellerLogin">登录/注册</a></li>
                            </li>
                        </c:when>
                            <c:when test="${sessionScope.user != null}">
                               <li class="layui-nav-item">
					        <a href="javascript:;">
					          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
					         ${user.username}
					        </a>
        
						        <dl class="layui-nav-child">
						          <dd><a href="">基本资料</a></dd>
						          <dd><a href="">安全设置</a></dd>
						        </dl>
						      </li>
						       <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/exit.do">安全退出</a></li>
                            </c:when>
                            </c:choose>
    </ul>
  </div>
  
    <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
       <c:choose>
                       <c:when test="${sessionScope.user == null}">
                           <li class="layui-nav-item"><a href="#" data-toggle="modal" data-target="#sellerLogin">我的帖子</a></li>
					        <li class="layui-nav-item"><a href="#" data-toggle="modal" data-target="#sellerLogin">我的评论</a></li>
					        <li class="layui-nav-item"><a href="#" data-toggle="modal" data-target="#sellerLogin">我的论坛</a></li>
                        </c:when>
                        
                          <c:when test="${sessionScope.user != null}">
                           <li class="layui-nav-item"><a href="http://localhost:8080/BBSz/tie.do?id=${user.username}">我的帖子</a></li>
					        <li class="layui-nav-item"><a href="http://localhost:8080/BBSz/ping.do">我的评论</a></li>
					        <li class="layui-nav-item"><a href="http://localhost:8080/BBSz/personal.do">我的论坛</a></li>
                        </c:when>
        </c:choose>
      
     
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;"></div>
  </div>
  <!-- 模态框（Modal） -->
<!--用户登录begin-->
<div class="modal fade" id="sellerLogin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h2>用户登录</h2>
                <ul class="nav nav-tabs" style="padding-left: 35%;">
                    <li class="active"><a data-toggle="tab" href="#home2" style="color: black;" >账号登录</a></li>
                    <li><a data-toggle="tab" href="#menu12" style="color: black;">扫码登录</a></li>

                </ul>

                <div class="tab-content">
                    <div id="home2" class="tab-pane fade in active">

                        <!--form表单位置-->
                        <form class="form-horizontal" role="form" style="margin-top: 10%; " id="loginForm">
                            <div class="form-group has-feedback">
                                <label for="sellername" class="col-sm-2 control-label">账户:</label>
                                <div class="col-md-6">
                                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                                    <input type="text" class="form-control" name="username" id="username"   placeholder="邮箱/用户名">
                                    <label class="label label-danger unameLab pull-right rol-md-2"  id="unameLab">用户不存在</label>
                                </div>

                            </div>
                            <div class="form-group has-feedback">
                                <label for="sellerpsd" class="col-sm-2 control-label">密码:</label>
                                <div class="col-md-6">
                                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                                    <input type="password" class="form-control" name="password"  id="password" placeholder="请输入密码">
                                    <label class="label label-danger pwdLab" id="pwdLab">密码不正确</label>
                                   
                                </div>
                                 <li><a  style="margin-top: 5%;margin-left: 70%;color: red;" href="${pageContext.request.contextPath}/regist.do"  >没有账号现在注册</a></li>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10" style="margin-left: 55%;">
                                    <div class="checkbox" >
                                        <label>
                                            <input type="checkbox">请记住我
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10 " style="margin-left: 60%;">
                                    <button type="button" onclick="userlogin()" class="btn btn-default" >登录</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div id="menu12" class="tab-pane fade">
                        <img src="${pageContext.request.contextPath}/img/ma.JPG" style="width: 36%; height: 36%; margin-left: 30%;"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--商家end-->
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © 到底啦
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


<script>
    function userlogin(){
        //用ajax的方式将表单数据提交到后台.
//        var uname = document.getElementById("username").value;
//        alert(uname);
//
//        var v = $("#password").val();
//        alert(v)

        //通过id获取登录表单的对象
        //坑 - 一定要给表单中的控件提供一个name属性 值
        // 那么才会形成key=value
        var form_obj = $("#loginForm");
        //对表单进行序列化操作.
        var formData = form_obj.serialize();

        //jquery
        $.ajax({
            type:'post',//get请求
            url:'${pageContext.request.contextPath}/login.do',//请求的url
            data:formData,
            success:function(data){
                //当后台成功返回之后执行.
                //alert(data)
                var v = document.getElementById("pwdLab");
                var un = document.getElementById("unameLab");

                if(data == 0){
                    un.className = "label label-danger unameLab2";
                    v.className = "label label-danger pwdLab";
                }else if(data == 1){
                    un.className = "label label-danger unameLab";
                    v.className = "label label-danger pwdLab2";
                }else{
                    //get请求...
                    window.location.href="${pageContext.request.contextPath}/index.do";
                }


            }
        })
    }
</script>
</body>
</html>
