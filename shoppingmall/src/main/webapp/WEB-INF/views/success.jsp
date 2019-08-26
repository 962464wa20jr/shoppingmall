<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/static/css/main.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/static/css/zsucai.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/layui/css/layui.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>付款成功</title>
</head>
<body id="list-cont" onload="load();">
  <div class="site-nav-bg">
    <div class="site-nav w1200">
      <p class="sn-back-home">
        <i class="layui-icon layui-icon-home"></i>
        <a href="<c:url value="/homePage"/>">首页</a>
      </p>
      <div class="sn-quick-menu">
        <input type="hidden" value="${currentUser.getNickname() }" id="cuser">
        <div class="login"><a id="isLogin"  href="<c:url value="/login"/>"></a></div>
        <div class="sp-cart"><a href="<c:url value="/shoppingcart/${currentUser.getId() }"/>">购物车</a><span id="count"></span></div>
      </div>
    </div>
  </div>


  <div class="header">
    <div class="headerLayout w1200">
      <div class="headerCon">
        <h1 class="mallLogo">
          <a href="#" title="TIMA商城">
            <img src="${pageContext.request.contextPath}/res/static/img/TIMA.png">
          </a>
        </h1>
        <div class="mallSearch">
          <form action="user" class="layui-form" style="border-color:#F30" novalidate method="get">
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
  
  <div style="width:1200px;height:600px;margin-left:380px;">
  <center>
  <img alt="付款码" src="${pageContext.request.contextPath }/res/static/img/paycode_weixin.jpg" style="width:300px;height:500px;margin-right:200px;margin-top:100px;">
   <img alt="付款码" src="${pageContext.request.contextPath }/res/static/img/paycode_zfb.jpg" style="width:300px;height:500px;margin-bottom:100px;">
   </center>
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
      <p class="coty">TIMA商城版权所有 &copy; 2019-2029  - Collect from X.WeiNan</p>
    </div>
  </div>
  
  <script type="text/javascript" src="${pageContext.request.contextPath }/layui-v2.4.5/layui-v2.4.5/layui/layui.js"></script>
  <script  src="${pageContext.request.contextPath }/res/jquery-1.9.1/jquery-1.9.1/jquery.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/res/static/js/zsucai.js"></script>
  
  <script type="text/javascript">
  
  function load(){
	  var result=document.getElementById("cuser").value;
	  var Count=${cartCount};
	  if(result!=""){
		  document.getElementById("isLogin").innerHTML="你好,"+result;
		  document.getElementById("count").innerHTML=Count;
	 }
	  else{
		  document.getElementById("isLogin").innerHTML="登录";
		  document.getElementById("count").innerHTML=Count;
	  }

	 
  }
  
  
   
  </script>

</body>
</html>