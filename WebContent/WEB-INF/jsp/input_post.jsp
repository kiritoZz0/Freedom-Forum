<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>layui</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css" />
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
          

 

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
  <legend>发帖</legend>
</fieldset>
<form class="layui-form layui-form-pane"   id="inputForm">
  <div class="layui-form-item">
    <label class="layui-form-label"  >标题</label>
    <div class="layui-input-block">
      <input type="text" name="title" id="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
    </div>
  </div>

  <div class="layui-form-item">
    <label class="layui-form-label">标签</label>
    <div class="layui-input-block">
      <select name="interest" lay-filter="aihao">
        <option value=""></option>
        <option value="0" selected="">IT</option>
        <option value="1" >美妆</option>
        <option value="2">游戏</option>
        <option value="3">音乐</option>
        <option value="4">旅行</option>
      </select>
    </div>
  </div>
  
 

  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">文本域</label>
    <div class="layui-input-block">
      <textarea placeholder="请输入内容" class="layui-textarea" id="content" name="content"></textarea>
    </div>
  </div>
  <div class="layui-form-item">
    <button type="button" class="layui-btn" onclick="postinput()" lay-filter="demo2">跳转式提交</button>
  </div>
</form>
          
<script type="text/javascript " src="${pageContext.request.contextPath}/plugins/jquery/jquery.min.js "></script>
<!--引入bootstrap.js-->
<script type="text/javascript " src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.js "></script>      
<script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
<script>
layui.use(['form', 'layedit', 'laydate'], function(){
  var form = layui.form
  ,layer = layui.layer
  ,layedit = layui.layedit
  ,laydate = layui.laydate;
  
  //日期
  laydate.render({
    elem: '#date'
  });
  laydate.render({
    elem: '#date1'
  });
  
  //创建一个编辑器
  var editIndex = layedit.build('LAY_demo_editor');
 
  //自定义验证规则
  form.verify({
    title: function(value){
      if(value.length < 5){
        return '标题至少得5个字符啊';
      }
    }
    ,pass: [
      /^[\S]{6,12}$/
      ,'密码必须6到12位，且不能出现空格'
    ]
    ,content: function(value){
      layedit.sync(editIndex);
    }
  });
  
  //监听指定开关
  form.on('switch(switchTest)', function(data){
    layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
      offset: '6px'
    });
    layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
  });
  
  //监听提交
  form.on('submit(demo1)', function(data){
    layer.alert(JSON.stringify(data.field), {
      title: '最终的提交信息'
    })
    return false;
  });
 
  //表单初始赋值
  form.val('example', {
    "username": "贤心" // "name": "value"
    ,"password": "123456"
    ,"interest": 1
    ,"like[write]": true //复选框选中状态
    ,"close": true //开关状态
    ,"sex": "女"
    ,"desc": "我爱 layui"
  })
  
  
});

function postinput(){
	 var form_obj = $("#inputForm");
	    //对表单进行序列化操作.
	    var formData = form_obj.serialize();

		       $.ajax({
		           type:'post',//get请求
		           url:'${pageContext.request.contextPath}/input.do',//请求的url
		           data:formData,
		           success:function(data){
		               //当后台成功返回之后执行.
		               //alert(data)
		               if(data == 1){
		            	   
		            	   layer.msg('发帖成功', {
		            		   icon: 1,
		            		   time: 8000 //2秒关闭（如果不配置，默认是3秒）
		            		 }, function(){
		            			 window.location.href="${pageContext.request.contextPath}/input_post.do";
		            		 });  
		            	
		               }else if(data==2){
		            	   layer.msg('标题不能为空');
		               }else{
		            	   layer.msg('发帖失败,请重试');
		               }
		               
		           }
		       })  

}

</script>

</body>
</html>