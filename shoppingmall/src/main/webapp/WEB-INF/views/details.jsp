<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%String path=request.getContextPath(); %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/static/css/main.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/layui/css/layui.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<body onload="load();">

  <div class="site-nav-bg">
    <div class="site-nav w1200">
      <p class="sn-back-home">
        <i class="layui-icon layui-icon-home"></i>
        <a href="<c:url value="/homePage"/>">首页</a>
      </p>
       <div class="sn-quick-menu">
        <input type="hidden" value="${currentUser.getNickname() }" id="cuser">
        <input type="hidden" value="${currentUser.getId() }" id="cuser_id">
        <input type="hidden" value="${goods.getId() }" id="goods_id">
        <div class="login"><a id="isLogin" href="<c:url value="/login"/>"></a></div>
        <div class="sp-cart"><a href="<c:url value="/shoppingcart/${ currentUser.getId()}"/>">购物车</a><span id="count"></span></div>
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
          <form action="" class="layui-form" novalidate>
            <input type="text" name="title" required  lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入需要的商品">
            <button class="layui-btn" lay-submit lay-filter="formDemo">
                <i class="layui-icon layui-icon-search"></i>
            </button>
            <input type="hidden" name="" value="">
          </form>
        </div>
      </div>
    </div>
  </div>


  <div class="content content-nav-base datails-content">
    <div class="main-nav">
      <div class="inner-cont0">
        <div class="inner-cont1 w1200">
          <div class="inner-cont2">
            <a href="commodity.html" class="active">所有商品</a>
            <a href="buytoday.html">今日团购</a>
            <a href="information.html">潮流资讯</a>
            <a href="about.html">关于我们</a>
          </div>
        </div>
      </div>
    </div>
    <div class="data-cont-wrap w1200">
      <div class="crumb">
        <a href="<c:url value="/homePage"/>">首页</a>
        <span>></span>
        <a href="javascript:;">所有商品</a>
        <span>></span>
        <a href="javascript:;">产品详情</a>
      </div>
      <div class="product-intro layui-clear">
        <div class="preview-wrap">
          <a href="javascript:;"><img style="width:100%;height:auto;" src="${pageContext.request.contextPath}${goods.getImage()}"></a>
        </div>
        <div class="itemInfo-wrap">
          <div class="itemInfo">
            <div class="title">
              <h4>${goods.getDescription() } </h4>
              <span><i class="layui-icon layui-icon-rate-solid"></i>收藏</span>
            </div>
            <div class="summary">
              <p class="reference"><span>参考价</span> <del>￥9999.00</del></p>
              <p class="activity"><span>活动价</span><strong class="price"><i>￥</i>${goods.getPrice() }</strong></p>
              <p class="address-box"><span>送&nbsp;&nbsp;&nbsp;&nbsp;至</span><strong class="address">广东&nbsp;&nbsp;广州&nbsp;&nbsp;天河区</strong></p>
            </div>
            <div class="choose-attrs">
              <div class="color layui-clear"><span class="title">颜&nbsp;&nbsp;&nbsp;&nbsp;色</span> <div class="color-cont"><span class="btn">白色</span> <span class="btn active">粉丝</span></div></div>
              <div class="number layui-clear"><span class="title">数&nbsp;&nbsp;&nbsp;&nbsp;量</span><div class="number-cont"><span class="cut btn">-</span><input onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" maxlength="4" type="" name="" value="1"><span class="add btn">+</span></div></div>
            </div>
            <div class="choose-btns">
              <button id="buyNow" class="layui-btn layui-btn-primary purchase-btn">立刻购买</button>
              <button id="addInCart" class="layui-btn  layui-btn-danger car-btn"><i class="layui-icon layui-icon-cart-simple"></i>加入购物车</button>  
            </div>
          </div>
        </div>
      </div>
      <div class="layui-clear">
        <div class="aside">
          <h4>热销推荐</h4>
          <div class="item-list">
            <div class="item">
              <img style="width:100%;height:auto;" src="${pageContext.request.contextPath}/res/static/img/hot1(2).jpg">
              <p><span>Adidas EQT</span><span class="pric">￥1099.00</span></p>
            </div>
            <div class="item">
              <img style="width:100%;height:auto;" src="${pageContext.request.contextPath}/res/static/img/hot2.jpg">
              <p><span>男士手表</span><span class="pric">￥299.00</span></p>
            </div>
            <div class="item">
              <img style="width:100%;height:auto;" src="${pageContext.request.contextPath}/res/static/img/hot5.jpg">
              <p><span>时尚宝宝鞋</span><span class="pric">￥179.00</span></p>
            </div>
            <div class="item">
              <img style="width:100%;height:auto;" src="${pageContext.request.contextPath}/res/static/img/hot4.jpg">
              <p><span>男士夹克</span><span class="pric">￥429.00</span></p>
            </div>
            <div class="item">
              <img style="width:100%;height:auto;" src="${pageContext.request.contextPath}/res/static/img/hot6(2).jpg">
              <p><span>蕾丝内衣</span><span class="pric">￥160.00</span></p>
            </div>
            <div class="item">
              <img style="width:100%;height:auto;" src="${pageContext.request.contextPath}/res/static/img/hot7(2).jpg">
              <p><span>学生宿舍床帘</span><span class="pric">￥180.00</span></p>
            </div>
          </div>
        </div>
        <div class="detail">
          <h4>详情</h4>
          <div class="item">
            <img src="${pageContext.request.contextPath}/res/static/img/details_imgbig.jpg">
          </div>
        </div>
      </div>
    </div>
  </div>
  <script type="text/javascript" src="${pageContext.request.contextPath }/layui-v2.4.5/layui-v2.4.5/layui/layui.js"></script>
    <script  src="${pageContext.request.contextPath }/res/jquery-1.9.1/jquery-1.9.1/jquery.min.js"></script>
<script type="text/javascript">
layui.config({
    base: '<%=path%>/res/static/js/util/' //你存放新模块的目录，注意，不是layui的模块目录
  }).use(['mm','jquery'],function(){
      var mm = layui.mm,$ = layui.$;
      var cur = $('.number-cont input').val();
      $('.number-cont .btn').on('click',function(){
        if($(this).hasClass('add')){
          cur++;
         
        }else{
          if(cur > 1){
            cur--;
          }  
        }
        $('.number-cont input').val(cur)
      })
      
  });
</script>
 <script type="text/javascript">
  
  function load(){
	  var result=document.getElementById("cuser").value;
	  var Count=${cartCount};
	  if(result!=""){
		  if(Count!=null){
			  document.getElementById("count").innerHTML=Count;
		  }
		  document.getElementById("isLogin").innerHTML="你好,"+result;
	  }else{
		  document.getElementById("count").innerHTML="0";
		  document.getElementById("isLogin").innerHTML="登录";
	  }
	 
  }
  
  
   
  </script>


  <script type="text/javascript">
   layui.use(['jquery','form'],function(){
          var $ = layui.$,form = layui.form;
          
          
          
          var state=0;
          $(document).ready(
            function(){
            	$("#addInCart").click(function(){
            		//var isLogin=$("#cuser_id").val();
            		if($("#cuser_id").val()==""){
            			layer.msg("您还未登录");
            			var t=setTimeout("window.location.href='login'",1000);
            		}
            		else{
            			 $.ajax({
                     		  url:"shoppingcart/addInCart",
                     		  type:"POST",
                     		  contentType:"application/json;charset=utf-8",
                     		  data:JSON.stringify({
                     			user_id:$("#cuser_id").val(),
           					goods_id:$("#goods_id").val(),
           					amount:$('.number-cont input').val()
                     		  }),
                     		  success:function(result){
                     			  if(result!=null && result==1){
             						//var count=${cartCount};
           						//alert(count);
           						var newcount=${cartCount};
           						$('#count').html(newcount.toString());
           						layer.msg("添加成功");
           						var t=setTimeout("window.location.reload()",500); //因为如果先刷新页面即执行windows.location.reload(),layer.msg()不执行，所以先执行layer.msg(),再通过js的计时函数刷新页面
           						                                                  //刷新页面的目的是为了使购物车的数量实时改变
           						//layer.msg("添加成功");
                     				
           					}
           					else{
           						layer.msg="添加失败";
           					}
                     		  },
                     		  error:function(result){
                     			layer.msg="添加失败";
                     		  }
                     	  });
            		}
              	 
                });
            });
   
          


    
    })
  </script>
  
  

</body>
</html>