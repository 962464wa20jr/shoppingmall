<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String path=request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>注册界面</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/res/static/css/reset.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/res/static/css/common.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/res/static/css/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/static/css/main.css">
       <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/layui/css/layui.css">
	</head>
	<body>
		<div class="wrap login_wrap">
			<div class="content">
				
				<div class="logo"></div>
				
				<div class="login_box">	
					
					<div class="login_form">
						<div class="login_title">
							注册
						</div>
						<form action="#" method="post">
							
							<div class="form_text_ipt">
								<input id="userName"name="username" type="text" placeholder="用户名(姓名)">
							</div>
							<div class="ececk_warning"><span>用户名不能为空</span></div>
							<div class="form_text_ipt">
								<input id="password" name="password" type="password" placeholder="密码">
							</div>
							<div class="ececk_warning"><span>密码不能为空</span></div>
							<div class="form_text_ipt">
								<input id="rePassword" name="repassword" type="password" placeholder="重复密码">
							</div>
							<div class="ececk_warning"><span>密码不能为空</span></div>
							<div style="margin-left:30px;margin-top:20px;">
								<input name="sex" type="radio" checked="checked" style="margin-right:5px;" value="1"/>男
								<input name="sex" type="radio" style="margin-left:10px;margin-right:5px;" value="0">女
							</div>
							<div class="form_text_ipt">
								<input id="nickName" name="code" type="text" placeholder="昵称">
							</div>
							<div class="ececk_warning"><span>昵称不能为空</span></div>
							<div class="form_text_ipt">
								<input id="email" name="email" type="text" placeholder="邮箱">
							</div>
							<div class="ececk_warning"><span>邮箱不能为空</span></div>
							
							<div class="form_btn">
								<button type="button" id="register">注册</button>
							</div>
							<div class="form_reg_btn">
								<span>已有帐号？</span><a href="index.html">马上登录</a>
							</div>
						</form>
						<div>
						 &nbsp;
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="${pageContext.request.contextPath }/res/static/js/jquery-1.11.1.min.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/res/static/js/common.js" ></script>
		<div style="text-align:center;">
<p>更多模板：<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath }/layui-v2.4.5/layui-v2.4.5/layui/layui.js"></script>
    <script  src="${pageContext.request.contextPath }/res/jquery-1.9.1/jquery-1.9.1/jquery.min.js"></script>
<script type="text/javascript">
   layui.use(['jquery','form'],function(){
          var $ = layui.$,form = layui.form;
          
          var state=0;
          $(document).ready(
            function(){
            	$("#register").click(function(){
            		if($('#userName').val()==""){
            			layer.msg("用户名不能为空");
            			return false;
            		}
            		else if($('#password').val()==""){
            			layer.msg("密码不能为空");
            			return false;
            		}
            		else if(!$('#password').val()==$('#rePassword').val()){
            			layer.msg("两次密码不相同");
            			return false;
            		}
            		else if($('#nickName').val()==""){
            			layer.msg("昵称不能为空");
            			return false;
            		}
            		else if($('#email').val()==""){
            			layer.msg("邮箱不能为空");
            			return false;
            		}
            		alert($('input:radio:checked').val());
            		
            		var regex=/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/
            		if(!regex.test($('#email').val())){
            			layer.msg("邮箱格式错误,应为244823584@qq.com的形式");
            			return false;
            		}
            		
              	  $.ajax({
              		  url:"<%=path%>/regedit/addUser",
              		  type:"POST",
              		  contentType:"application/json;charset=utf-8",
              		  data:JSON.stringify({
              			  username:$("#userName").val(),
              			  password:$("#password").val(),
              			  email:$('#email').val(),
              			  nickname:$('#nickName').val(),
              			  sex:$('input:radio:checked').val()
              			  
              		  }),
              		  success:function(result){
              			  if(result!=null && result=="true"){
              				 
              					  layer.msg("注册成功");
              					  window.location.href="<%=path%>/login";
              				  }else{
              					  layer.msg("注册失败");
              				  }
              			 
              		  },
              		  error:function(result){
              			  layer.msg("哎呀，出错了");
              		  }
              	  });
                });
            });
          


    
    })
  </script>
	</body>
</html>
