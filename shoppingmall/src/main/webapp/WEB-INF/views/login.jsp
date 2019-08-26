<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String path=request.getContextPath(); %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/static/css/main.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/layui/css/layui.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<body>

  <div class="site-nav-bg">
    <div class="site-nav w1200">
      <p class="sn-back-home">
        <i class="layui-icon layui-icon-home"></i>
        <a href="<c:url value="/homePage"/>">首页</a>
      </p>
      <div class="sn-quick-menu">
        <div class="login"><a href="<c:url value="/login"/>">登录</a></div>
        <div class="sp-cart"><a href="<c:url value="/shoppingcart"/>">购物车</a><span>0</span></div>
      </div>
    </div>
  </div>



  <div class="header">
    <div class="headerLayout w1200">
      <div class="headerCon">
        <h1 class="mallLogo">
          <a href="#" title="TIMA商城">
            <img src="${pageContext.request.contextPath }/res/static/img/TIMA.png">
          </a>
        </h1>
         <div class="mallSearch">
          <form action="" class="layui-form" style="border-color:#F30" novalidate>
            <input type="text" name="title" required  lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入需要的商品">
            <button class="layui-btn" style="background-color:#F30" lay-submit lay-filter="formDemo">
                <i class="layui-icon layui-icon-search"></i>
            </button>
            <input type="hidden" name="" value="">
          </form>
        </div>
      </div>
    </div>
  </div>


  <div class="content content-nav-base  login-content">
    <div class="main-nav">
      <div class="inner-cont0">
        <div class="inner-cont1 w1200">
          <div class="inner-cont2">
            <a href="commodity.html" class="active">所有商品</a>
            <a href="buytoday.html">今日团购</a>
            <a href="information.html">潮流资讯2</a>
            <a href="about.html">关于我们</a>
          </div>
        </div>
      </div>
    </div>
    <div class="login-bg">
      <div class="login-cont w1200">
        <div class="form-box">
          <form class="layui-form" action="/login/validate" method="post">
            <legend>用户登录</legend>
            <div class="layui-form-item">
              <div class="layui-inline iphone">
                <div class="layui-input-inline">
                  <i class="layui-icon layui-icon-cellphone iphone-icon"></i>
                  <input type="text" name="username" id="username"  placeholder="请输入用户名" autocomplete="off" class="layui-input">
                </div>
              </div>
              <div class="layui-inline veri-code">
                <div class="layui-input-inline">
                  <input id="password" type="text" name="password" placeholder="请输入密码" autocomplete="off" class="layui-input">
                </div>
              </div>
            </div>
            <div class="layui-form-item login-btn">
              <div class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="demo1" id="submit" onclick="return false">登录</button>
              </div>
            </div>
            <div class="layui-form-item login-btn">
              <div class="layui-input-block" style="margin-top:-20px;">
                <button class="layui-btn" id="regedit" onclick="return false">注册</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <div class="footer">
    <div class="ng-promise-box">
      <div class="ng-promise w1200">
        <p class="text">
          <a class="icon1" href="javascript:;">7天无理由退换货</a>
          <a class="icon2" href="javascript:;">满99元全场免邮</a>
          <a class="icon3" style="margin-right: 0" href="javascript:;">100%品质保证</a>
        </p>
      </div>
    </div>
    <div class="mod_help w1200">                                     
      <p>
        <a href="javascript:;">关于我们</a>
        <span>|</span>
        <a href="javascript:;">帮助中心</a>
        <span>|</span>
        <a href="javascript:;">售后服务</a>
        <span>|</span>
        <a href="javascript:;">潮流资讯</a>
        <span>|</span>
        <a href="javascript:;">关于货源</a>
      </p>
      <p class="coty">TIMA商城版权所有 &copy; 2012-2020</p>
    </div>
  </div>
   <script type="text/javascript" src="${pageContext.request.contextPath }/layui-v2.4.5/layui-v2.4.5/layui/layui.js"></script>
    <script  src="${pageContext.request.contextPath }/res/jquery-1.9.1/jquery-1.9.1/jquery.min.js"></script>
    
  <script type="text/javascript">
   layui.use(['jquery','form'],function(){
          var $ = layui.$,form = layui.form;
          
          var state=0;
          $(document).ready(
            function(){
            	$("#submit").click(function(){
              	  $.ajax({
              		  url:"login/validate",
              		  type:"POST",
              		  contentType:"application/json;charset=utf-8",
              		  data:JSON.stringify({
              			  username:$("#username").val(),
              			  password:$("#password").val(),
              		  }),
              		  success:function(result){
              			  if(result!=null && result!=""){
              				  var message=eval("("+result+")");
              				  var username=message.username;
              				  var password=message.password;
              				  console.log(username+" "+"password");
              				  if(username!=null && username!=""
              				     && password!=null && password!=""){
              					  layer.msg("登陆成功");
              					  window.location.href="login/findUser";
              				  }else{
              					  layer.msg("该用户不存在或者用户密码错误");
              				  }
              			  }
              			  else{
              				  layer.msg("该用户不存在或者用户密码错误");
              			  }
              		  },
              		  error:function(result){
              			  layer.msg("该用户不存在或者用户密码错误");
              		  }
              	  });
                });
            });
          


    
    })
  </script>
  <script type="text/javascript">
   $(document).ready(
	  function(){
		  $('#regedit').click(function(){
			  //alert("lai");
			  window.location.href="<%=path%>/regedit/regeditTurn" 
		  });
	  
   });
  </script>

</body>
</html>