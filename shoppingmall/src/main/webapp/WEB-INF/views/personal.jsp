<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <% String path=request.getContextPath(); %>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<meta name="keywords" content="">
		<meta name="description" content="">
		<link rel="stylesheet" href="${pageContext.request.contextPath }/res/static/css/css.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/res/static/css/common.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/res/static/css/ms-style.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/res/static/css/personal_member.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/res/static/css/Snaddress.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/res/static/css/sui.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/static/css/main.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/static/css/zsucai.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/static/css/select.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/layui/css/layui.css">
		<script type="text/javascript" src="${pageContext.request.contextPath }/res/static/js/jquery-1.11.1.min.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/res/static/js/sui.js" ></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/res/static/js/zsucai.js"></script>
		<style>
		body {
		    background: #f5f5f5;
		}
			.sui-table th{
		    padding: 16px 8px;
		    line-height: 18px;
		    text-align: center;
		    vertical-align: middle;
		    border-top: 1px solid #e6e6e6;
		    font-weight: normal;
		    font-size: 14px;
		    color: #333333;
		   }
		   .sui-table td {
		    padding: 16px 8px;
		    line-height: 18px;
		    text-align: center;
		    vertical-align: middle;
		    border-top: 1px solid #e6e6e6;
		    font-weight: normal;
		    font-size: 12px;
		    color: #333333;
		   }
	img {
	    max-width: 100%;
	    height: auto;
	    /*vertical-align: bottom;*/
	    border: 0;
	    -ms-interpolation-mode: bicubic;
	    margin-left: -10px;
	}
a{
	color: #000000;
}
		</style>
	</head>

	<body class="ms-body" onload="load();">
	<div class="site-nav-bg">
    <div class="site-nav w1200">
      <p class="sn-back-home">
        <i class="layui-icon layui-icon-home"></i>
        <a href="<c:url value="/homePage"/>">首页</a>
      </p>
      <div class="sn-quick-menu">
        <input type="hidden" value="${currentUser.getNickname() }" id="cuser">
        <div class="login">
        <ul class="sul">
        <li class="sli dropdown">
        <a id="isLogin" class="dropbtn" onmouseover="showList();"  href="<c:url value="/login"/>" ></a>
         <div class="dropdown-content" id="dropdown-a">
                    <a href="<c:url value="/personal/${currentUser.getId() }"/>" id="personId" style="margin-bottom:3px;">个人中心</a>
                    <a href="<%=path %>/logout" style="margin-bottom:3px;">退出登录</a>
                </div>
         
        </li>
        </ul>
        </div>
        <div class="sp-cart"><a href="<c:url value="/shoppingcart/${currentUser.getId() }"/>">购物车</a><span id="count"></span></div>
      </div>
    </div>
  </div>


  
		<div id="" class="ng-top-banner"></div>
	
		<div id="ms-center" class="personal-member">
			<div class="cont">
				<div class="cont-side">
					<div class="side-neck" style="margin-top: 20px;">
						<i></i>
					</div>
					<div class="ms-side" style="margin-top: 20px;">
						<article class="side-menu side-menu-off">
							<dl class="side-menu-tree" style="padding-left: 50px;">
								<dt><img src="${pageContext.request.contextPath }/res/static/img/p_cart .png"  style="margin-right: 10px;margin-left: -20px;"/>我的购物车</dt>
								<dt><img src="${pageContext.request.contextPath }/res/static/img/file.png"  style="margin-right: 10px;margin-left: -20px;"/>订单管理</dt>
								<dd>
									<a>我的订单</a>

								</dd>
								<dd>
									<a>我的收藏</a>

								</dd>
								<dd>
									<a >我的评价</a>

								</dd>
								<dd>
									<a >我的足迹</a>

								</dd>
								<dd>
									<a >我的拍卖</a>

								</dd>
								<dd>
									<a>我的优惠券</a>

								</dd>
								<dt><img src="${pageContext.request.contextPath }/res/static/img/mypay.png"  style="margin-right: 10px;margin-left: -20px;"/>我的买啦</dt>
								<dd>
									<a>我的推荐</a>

								</dd>
								<dd>
									<a>我的钱包</a>

								</dd>
								<dd>
									<a>我要提现</a>

								</dd>
								<dd>
									<a>我的买豆</a>

								</dd>
								<dd>
									<a >邀请管理</a>

								</dd>
								<dt><img src="${pageContext.request.contextPath }/res/static/img/v_card.png"  style="margin-right: 10px;margin-left: -20px;"/>售后服务</dt>
								<dd>
									<a >退换货</a>

								</dd>
								<dd>
									<a>意见/投诉</a>

								</dd>
							</dl>

							<a ison="on" class="switch-side-menu icon-up-side"><i></i></a>
						</article>
					</div>
				</div>
				<div class="cont-main">
					<div class="main-wrap mt15" style="border: 0px;">
						<!--<h3>
	                        <strong>我的会员等级</strong>
	                    </h3>-->
						<div class="server-wrapper">
							<div class="server-tab" style="margin-top: 26px;">
								<div style=" float: left;vertical-align: bottom;text-align: center;">
								<div style="width: 680px;padding: 10px;float: left;background-color: #fff;height: 19px;">
								
								
								
								
								
								
								
								<div style="position: absolute;font-size: 14px;color: #686868;float: left;width:680px;">
									<span style="margin-left: 20px;">待付款</span>
									<font style="color: #CF2D27;">0</font>
									<span style="margin-left: 40px;margin-right: 40px;">|</span>
									<span >待发货</span>
									<font style="color: #CF2D27;">${orderList.size() }</font>
									<span style="margin-left: 40px;margin-right: 40px;">|</span>
									<span>待收货</span>
									<font style="color: #CF2D27;">0</font>
									<span style="margin-left: 40px;margin-right: 40px;">|</span>
									<span>待评价</span>
									<font style="color: #CF2D27;">0</font>
									<span style="margin-left: 40px;margin-right: 40px;">|</span>
									<span>退款</span>
									
								</div>
								</div>	
								
								
								
								<div style="width: 680px;padding:10px;display: inline-block; float: left;margin-top: 20px;background-color: #fff;">
									<div style="border-bottom: 1px #ccc solid;">
										<p style="font-size: 20px;text-align: left;">我的物流</p>
									</div>
									<c:forEach var="order" varStatus="orderStatus" items="${orderList }">
									  <div style="padding: 20px 20px;border-bottom: 1px #F5F5F5 solid;height: 150px;">
										<div style="float: left;margin-top: 10px;">
											<img src="${pageContext.request.contextPath }${order.get('image')}" style="width:50px;height:50px;"/>
										</div>
										<div style="float: left;margin-top: 20px;">
											<p>订单号: ${order.get('id')}&nbsp;${order.get('goods_name')}</p>
											<p>${order.get('c_time')}  <strong>查看物流信息</strong> </p>
										</div>
										<div style="float: right;margin-right: 20px;margin-top: 50px;">
											<button style="border: 1px #ccc solid;padding: 5px;background-color: #fff;">确认收货</button>
										</div>
										
									</div>
									</c:forEach>
									<!-- <div style="padding: 20px 20px;border-bottom: 1px #F5F5F5 solid;height: 150px;">
										<div style="float: left;margin-top: 10px;">
											<img src="img/宝贝收藏/组-58.png" />
										</div>
										<div style="float: left;margin-top: 20px;">
											<p>在浙江临安市公司市区北方扫描，快件已被签收</p>
											<p>2016-04-10 12:20:30  <strong>查看物流信息</strong> </p>
										</div>
										<div style="float: right;margin-right: 20px;margin-top: 50px;">
											<button style="border: 1px #ccc solid;padding: 5px;background-color: #fff;">确认收货</button>
										</div>
										
									</div>
									<div style="padding: 20px 20px;border-bottom: 1px #F5F5F5 solid;height: 150px;">
										<div style="float: left;margin-top: 10px;">
											<img src="img/宝贝收藏/组-56.png" />
										</div>
										<div style="float: left;margin-top: 20px;">
											<p>在浙江临安市公司市区北方扫描，快件已被签收</p>
											<p>2016-04-10 12:20:30  <strong>查看物流信息</strong> </p>
										</div>
										<div style="float: right;margin-right: 20px;margin-top: 50px;">
											<button style="border: 1px #ccc solid;padding: 5px;background-color: #fff;">确认收货</button>
										</div>
										
									</div>
									<div style="padding: 20px 20px;border-bottom: 1px #F5F5F5 solid;height: 150px;">
										<div style="float: left;margin-top: 10px;">
											<img src="img/宝贝收藏/组-57.png" />
										</div>
										<div style="float: left;margin-top: 20px;">
											<p>在浙江临安市公司市区北方扫描，快件已被签收</p>
											<p>2016-04-10 12:20:30  <strong>查看物流信息</strong> </p>
										</div>
										<div style="float: right;margin-right: 20px;margin-top: 50px;">
											<button style="border: 1px #ccc solid;padding: 5px;background-color: #fff;">确认收货</button>
										</div>
										
									</div>
									-->
									<p style="text-align: center;margin-top: 30px;">展开全部信息</p>
									 <!--<div style="float:left;display: inline;border: 1px #ccc solid;display: inline-block;background-color: #f5f5f5;height: 25px;width: 150px;"> 
                                        <input type="text" placeholder="搜索会员编号"  style="padding-left:5px;width:130px;border: 0px;background-color: #fff;line-height: 25px;border-right: 0px #ccc solid;" />
									    <img src="img/搜索.png"  style="height: 10px;width: 10px;  margin-left: 2px; margin-bottom: 5px;" />
                                        </div> -->
								</div>
								
								
								
								
							
						</div>
					</div>
				</div>
				
			</div>
		</div>
		</div>
		</div>
		<div class="clear "></div>
		<div class="ng-footer ">

			<textarea class="footer-dom " id="footer-dom-02 ">
			</textarea>
			<div class="ng-fix-bar "></div>
		</div>
		<style type="text/css ">
		
			.ng-footer {
				height: 130px;
				margin-top: 0;
			}
		
			
			.ng-s-footer {
				height: 130px;
				background: none;
				text-align: center;
			}
			
			.ng-s-footer p.ng-url-list {
				height: 25px;
				line-height: 25px;
			}
			
			.ng-s-footer p.ng-url-list a {
				color: #666666;
			}
			
			.ng-s-footer p.ng-url-list a:hover {
				color: #f60;
			}
			
			.ng-s-footer .ng-authentication {
				float: none;
				margin: 0 auto;
				height: 25px;
				width: 990px;
				margin-top: 5px;
			}
			
			.ng-s-footer p.ng-copyright {
				float: none;
				width: 100%;
			}
			
			.root1200 .ng-s-footer p.ng-copyright {
				width: 100%;
			}
		</style>
		<script type="text/javascript " src="${pageContext.request.contextPath }/res/static/js/ms_common.min.js "></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/layui-v2.4.5/layui-v2.4.5/layui/layui.js"></script>
		<script type="text/javascript">
   layui.use(['jquery','form'],function(){
          var $ = layui.$,form = layui.form;
          
          var state=0;
          $(document).ready(
            function(){
            	$("#submit").click(function(){
            	var keyword=$('#keyword').val();
            	if(keyword==""){
            		layer.msg("搜索关键字不能为空");
            		return false;
            	}
              	  $.ajax({
              		  url:"<%=path%>/search/searchGoods",
              		  type:"POST",
              		  contentType:"application/json;charset=utf-8",
              		  data:JSON.stringify({
              			  keyword:$("#keyword").val()
              		  }),
              		  success:function(result){
              			if(result!=null){
        				      //alert("到这来了");
        					  //layer.msg("登陆成功");
        					  jsonData=JSON.parse(result);
        					  if(jsonData.length>0){
        						window.location.href="<%=path%>/search/found";
        					  }
        					  else{
        						 layer.msg("不存在此商品或商品分类");
        					  }
        			  }
              		  },
              		  error:function(result){
              			  alert("出错");
              			  layer.msg("哎呀，出错了");
              		  }
              	  });
                });
            });
          
          $(document).ready(
           function(){
        	   $('#personId').click(function(){
        		   var result=$('#cuser').val();
        		   if(result==""){
        			   $(this).attr("href","#");
        			   layer.msg("您还未登录");
        		   }
        	   });
           });
          


    
    })
  </script>
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
  
  function showList() {
	    hideList();
	    document.getElementById("dropdown-a").classList.toggle("show");
	}
	 
	 
	function hideList() {
	    var dropdowns = document.getElementsByClassName("dropdown-content");
	     
	    for (var i = 0; i < dropdowns.length; i++) {
	        var openDropdown = dropdowns[i];
	        
	            if (openDropdown.classList.contains('show')) {
	                openDropdown.classList.remove('show');
	            }
	        
	    }
	}
	 
	 
	window.onclick = function(e) {
	    if (!e.target.matches('.dropbtn')) {
	        hideList();
	    }
	}
	
	function person(){
		var result=document.getElementById("cuser").value;
		if(result==""){
			
		}
	}
  
  
   
  </script>
 
	</body>

</html>