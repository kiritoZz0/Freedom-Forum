<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css" />
   <link href="${pageContext.request.contextPath}/css/register.css" rel="stylesheet" type="text/css" />
   <link href="${pageContext.request.contextPath}/css/register.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div class="layui-row layui-col-md7 " style="margin-left: 15%;">
  <h3>用户注册</h3>
  <div class="layui-main" style="margin-top: 10%;">
<form class="layui-form"  id="registForm">
  <div class="layui-form-item">
    <label class="layui-form-label layui-col-md2 " >用户名:</label>
    <div class="layui-col-md4">
      <input type="text" name="username" id="username"    required  lay-verify="required" placeholder="输入用户名" autocomplete="off" class="layui-input form-control">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label layui-col-md2" >密码:&nbsp;&nbsp;</label>
    <div class="layui-input-inline layui-col-md6">
      <input type="password"  name="password" id="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input form-control">
    </div>
    <div class="layui-form-mid layui-word-aux  text">请输入6~12位密码</div>
  </div>
  <div class="layui-form-item ">
    <label class="layui-form-label layui-col-md2" >邮箱:</label>
    <div class=" layui-col-md4">
      <input type="text" name="email"  id="email" required  lay-verify="required" placeholder="输入邮箱" autocomplete="off" class="layui-input form-control text">
    </div>
  </div>

<div class="layui-form">
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">生日</label>
      <div class="layui-input-inline">
        <input type="text"  name="birthdate"   class="layui-input form-control requiredField" id="birthdate" placeholder="yyyy-MM-dd">
      </div>
    </div>
    
    <div class="layui-form-item">
    <label class="layui-form-label">性别</label>
    <div class="layui-input-block" name="sex"  id="sex">
      <input type="radio" name="sex" value="男" title="男">
      <input type="radio" name="sex" value="女" title="女" checked>
    </div>
  </div>
    
  <div class="layui-form-item">
    <label class=" layui-col-md1">选择感兴趣的模块</label>
     <div class="layui-input-block">
      <input type="checkbox" name="like[write]" title="IT">
      <input type="checkbox" name="like[read]" title="游戏" checked>
      <input type="checkbox" name="like[dai]" title="美妆">
      <input type="checkbox" name="like[sport]" title="体育">
    </div>
  </div>

           <div class="layui-form-item">
				<th class="layui-col-md2 requiredField"><span class="requiredField ">*</span>验证码:</th>
					<td class="layui-col-md4">
					<span class="fieldSet"> 
					<input type="text" id="captcha" name="checkImg" class="text captcha" maxlength="4" autocomplete="off"
					required  lay-verify="required" placeholder="输入验证码" autocomplete="off" class="layui-input form-control">
					<img id="checkImg" class="captchaImage" src="${pageContext.request.contextPath}/checkImg.do"
						title="点击更换验证码" onclick="change()">
						</span>
						</td>
			</div>

    <div class="layui-form-item" style="margin-top: 5%;margin-left: 5%; ">
    <div class="layui-input-block">
      <button type="button" class="layui-btn" onclick="userregist()" lay-submit lay-filter="formDemo">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>


</form>
  </div>
</div>

 
<script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script> 
<script type="text/javascript " src="${pageContext.request.contextPath}/plugins/jquery/jquery.min.js "></script>
<script type="text/javascript " src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.js "></script>      

<script>
layui.use('form', function(){
	  var form = layui.form;
	  
	  //监听提交
	  form.on('submit(formDemo)', function(data){
	    layer.msg(JSON.stringify(data.field));
	    return false;
	  });
	});

function change(){
      // response.sendRedirect("${pageContext.request.contextPath}/checkImg.do?"+Math.random());
      var img = document.getElementById("checkImg");
		img.src="${pageContext.request.contextPath}/checkImg.do?"+Math.random();
      // layer.msg('成功');
}



layui.use('laydate', function(){
	  var laydate = layui.laydate;

	  laydate.render({
	    elem: '#birthdate'
	  });
	  
});


function userregist(){
	 var form_obj = $("#registForm");
	    //对表单进行序列化操作.
	    var formData = form_obj.serialize();
	    
	layui.use('form', function(){
		  var form = layui.form;
		  //监听提交
		  form.on('submit(formDemo)', function(data){
		       $.ajax({
		           type:'post',//get请求
		           url:'${pageContext.request.contextPath}/userregist.do',//请求的url
		           data:formData,
		           success:function(data){
		               //当后台成功返回之后执行.
		               //alert(data)
		               if(data == 0){
		            	   
		            	   layer.msg('注册成功', {
		            		   icon: 1,
		            		   time: 3000 //2秒关闭（如果不配置，默认是3秒）
		            		 }, function(){
		            			 window.location.href="${pageContext.request.contextPath}/index.do";
		            		 });  
		            	
		               
		               }else if(data == 1){
		               	layer.msg('注册失败,请重试');
		               }else if(data == 2){
		                   //get请求...
		               	layer.msg('验证码错误');
		               }else{
		               	 window.location.href="${pageContext.request.contextPath}/regist.do";
		               }
		               
		           }
		       })  
		    return false;
		  });
		  
		});

    
}
</script>
</body>
</html>