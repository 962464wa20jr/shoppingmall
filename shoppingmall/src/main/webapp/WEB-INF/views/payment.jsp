<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <% String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>锡货超市</title>
<link href="${pageContext.request.contextPath }/res/static/css/public.css" type="text/css" rel="stylesheet"/>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/static/css/base.css"/>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/static/css/main.css"/>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/static/css/zsucai.css"/>
       <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/layui/css/layui.css"/>
        <script type="text/javascript" src="${pageContext.request.contextPath }/res/static/js/jquery_cart.js"></script>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/static/css/buyConfirm.css" />
		<script src="${pageContext.request.contextPath }/res/static/js/jquery-1.11.1.min.js" type="text/javascript"></script>
   		 <script src="${pageContext.request.contextPath }/res/static/js/unslider.min.js" type="text/javascript"></script>
  	     <script type="text/javascript" src="${pageContext.request.contextPath }/layui-v2.4.5/layui-v2.4.5/layui/layui.js"></script>
<script type="text/javascript">

window.onload = function(){
new tab('test4-input-input_tab1-input_tab2', '-');
}
function tab(o, s, cb, ev){ //tab换类
var $ = function(o){return document.getElementById(o)};
var css = o.split((s||'_'));
if(css.length!=4)return;
this.event = ev || 'onclick';
o = $(o);
if(o){
this.ITEM = [];
o.id = css[0];
var item = o.getElementsByTagName(css[1]);
var j=1;
for(var i=0;i<item.length;i++){
if(item[i].className.indexOf(css[2])>=0 || item[i].className.indexOf(css[3])>=0){
if(item[i].className == css[2])o['cur'] = item[i];
item[i].callBack = cb||function(){};
item[i]['css'] = css;
item[i]['link'] = o;
this.ITEM[j] = item[i];
item[i]['Index'] = j++;
item[i][this.event] = this.ACTIVE;
}
}
return o;
}
}
tab.prototype = {
ACTIVE:function(){
var $ = function(o){return document.getElementById(o)};
this['link']['cur'].className = this['css'][3];
this.className = this['css'][2];
try{
$(this['link']['id']+'_'+this['link']['cur']['Index']).style.display = 'none';
$(this['link']['id']+'_'+this['Index']).style.display = 'block';
}catch(e){}
this.callBack.call(this);
this['link']['cur'] = this;
}
}
</script>
</head>

<body onload="load();">
 <!--顶部快捷菜单-->
      <div class="site-nav-bg">
    <div class="site-nav w1200">
      <p class="sn-back-home">
        <i class="layui-icon layui-icon-home"></i>
        <a href="<c:url value="/homePage"/>">首页</a>
      </p>
      <div class="sn-quick-menu">
        <input type="hidden" value="${currentUser.getNickname() }" id="cuser"/>
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
            <img src="${pageContext.request.contextPath}/res/static/img/TIMA.png"/>
          </a>
        </h1>
        <div class="mallSearch">
          <form action="user" class="layui-form" style="border-color:#F30" novalidate method="get">
            <input type="text" name="title" required  lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入需要的商品"/>
            <button class="layui-btn" style="background-color:#F30" lay-submit lay-filter="formDemo">
                <i class="layui-icon layui-icon-search"></i>
            </button>
            <input type="hidden" name="" value=""/>
          </form>
        </div>
      </div>
    </div>
  </div>
    <!--顶部Logo及搜索-->
    
     <!--  导航条    start-->
 	<div class="yHeader">
		<div class="shop_Nav">
			<div class="pullDown">
				<h2 class="pullDownTitle"><i></i>全部商品分类</h2>
			</div>

			<ul class="Menu_box">
				<li><a href="" target="_blank" class="yMenua">首页</a></li>
				<li><a href="" target="_blank">大划算</a></li>
				<li><a href="" target="_blank">抢拍</a></li>
				<li><a href="" target="_blank">锡货专场</a></li>
				<li><a href="" target="_blank">锡货超市</a></li>
			</ul>
            <div class="fr r_icon"><i class="i01"></i><span>30天退货</span><i class="i02"></i><span>满59包邮</span></div>
		</div>
 	</div>
	<!--  导航条    end-->
    
    
    
   <div class="banner_red_top"> 
        

  </div>  
    
    
 <!--订单提交body部分开始-->  


<div class="border_top_cart">

        <div class="container payment-con">
    <form  target="_blank" action="#" id="pay-form" method="post">
            <div class="order-info">
                <div class="msg">
                    <h3>您的订单已提交成功！付款咯～</h3>
                    <p></p>
                    
                                                                    <p class="post-date">成功付款后，7天发货</p>
                                    </div>
                <div class="info">
                    <p>
                        金额：<span class="pay-total">${s_payment }</span>
                    </p>
                    <p>
                        订单：${s_orderId}                   </p>
                    <p>
                        配送：${s_receiverName}                                 <span class="line">/</span>
                                    ${s_phoneNumber}                                  <span class="line">/</span>
                                    ${s_address}                                                         <span class="line">/</span>
                                                                    不限送货时间                                    <span class="line">/</span>
                                    个人电子发票                                                    </p>
                </div>
                <div class="icon-box">
                    <i class="iconfont"><img src="${pageContext.request.contextPath}/res/static/img/yes_ok.png"/></i>
                </div>
            </div>
            
            <div class="xm-plain-box">
                                                <!-- 选择支付方式 -->
                <div class="box-hd bank-title clearfix">
                    <div id="titleWrap" class="title-wrap">
                        <h2 class="title">选择支付方式</h2>
                        <h2 class="title hide " >你还需要继续支付 <em>49.00</em> 元</h2>
                        <span class="tip-tag"></span>
                    </div>
                </div>
                <div class="box-bd" id="bankList">
                    <div class="payment-bd">
                    <form name="ck">
                    <dl class="clearfix payment-box" >
                    <dt>
                                <strong>支付平台</strong>
                                <p>手机等大额支付推荐使用支付宝快捷支付</p>
                            </dt>
                            <dd>
                        <fieldset id="test4-input-input_tab1-input_tab2" style=" border:none;">
                        <ul class="payment-list clearfix" >
                           <li> <input class="input_tab1" name="myradio" id="r1" type="radio" checked="checked"/><label for="r1" ><img src="${pageContext.request.contextPath}/res/static/img/xhw.png" alt=""/></label></label></li>
                            <li><input class="input_tab2" name="myradio" id="r2" type="radio" /><label for="r2" ><img src="${pageContext.request.contextPath}/res/static/img/zfb.png" alt=""/></label></li>
                            <li> <input class="input_tab2" name="myradio" id="r2" type="radio" /><label for="r2" ><img src="${pageContext.request.contextPath}/res/static/img/yck.png" alt=""/></label></li>
                           <li>  <input class="input_tab2" name="myradio" id="r2" type="radio" /><label for="r2" ><img src="${pageContext.request.contextPath}/res/static/img/zxzf.png" alt=""/></label></li>
                             </ul>
                        <div >
                        <div id="test4_1">
                        	<ul class="payment-list clearfix"  style="background-color:#f3f3f3;   ">
                                        <div class="xhw">
                                                <div class="whx_banner">
                                                    <div style="clear:both"><p class="p1">请选择锡货卡：</p><p class="p2">对不起，没有可用的锡货卡！</p><a class="a3" href="#">立即去充值</a></div>
                                                     <div style="clear:both"><p class="p1">已绑定手机号：</p><p class="a3">15011925037</p></div>
                                                    <div style="clear:both"> <p class="p1">短信效验码</p><input id="mobileCode" name="mobileCode" type="text" value=""/><input id="send" type="button" style="cursor:hand" value="点击获取手机验证码" onclick="sendMobileCode()"/></div>
                                                </div>
                                        </div>
                                </ul>
                        </div>
                        <div  id="test4_2" style="display:none;">
                        	
                        </div>
                        <div  id="test4_3" style="display:none;">
                        	
                        </div>
                        <div  id="test4_4" style="display:none;">
                        	
                        </div>

                       

                        </div>
                        </fieldset>
                        </dd>
                        </dl>
                        </form>

                        <dl class="clearfix payment-box" >
                            <dt>
                                <strong>银行网银</strong>
                                <p>支持以下各银行借记卡及信用卡</p>
                                
                            </dt>
                            <dd>
                                                                <ul class="payment-list clearfix">
                                    <li><label  for="CMB"><input type="radio" name="payOnlineBank" id="CMB" value="CMB" /> <img src="http://s1.mi.com/images/payOnline_zsyh.gif" alt=""/></label></li>
                                    <li><label  for="ICBCB2C"><input type="radio" name="payOnlineBank" id="ICBCB2C" value="ICBCB2C" /> <img src="http://s1.mi.com/images/payOnline_gsyh.gif" alt=""/></label></li>
                                    <li><label  for="CCB"><input type="radio" name="payOnlineBank" id="CCB" value="CCB" /> <img src="http://s1.mi.com/images/payOnline_jsyh.gif" alt=""/></label></li>
                                    <li><label  for="ABC"><input type="radio" name="payOnlineBank" id="ABC" value="ABC" /> <img src="http://s1.mi.com/images/payOnline_nyyh.gif" alt=""/></label></li>
                                    <li><label  for="BOCB2C"><input type="radio" name="payOnlineBank" id="BOCB2C" value="BOCB2C" /> <img src="http://s1.mi.com/images/payOnline_zgyh.gif" alt=""/></label></li>
                                    <li><label  for="COMM"><input type="radio" name="payOnlineBank" id="COMM" value="COMM" /> <img src="http://s1.mi.com/images/payOnline_jtyh.gif" alt=""/></label></li>
                                    <li><label  for="PSBC-DEBIT"><input type="radio" name="payOnlineBank" id="PSBC-DEBIT" value="PSBC-DEBIT" /> <img src="http://s1.mi.com/images/payOnline_youzheng.gif" alt=""/></label></li>
                                    <li><label  for="GDB"><input type="radio" name="payOnlineBank" id="GDB" value="GDB" /> <img src="http://s1.mi.com/images/payOnline_gfyh.gif" alt=""/></label></li>
                                    <li><label  for="SPDB"><input type="radio" name="payOnlineBank" id="SPDB" value="SPDB" /> <img src="http://s1.mi.com/images/payOnline_pufa.gif" alt=""/></label></li>
                                    <li><label  for="CEBBANK"><input type="radio" name="payOnlineBank" id="CEBBANK" value="CEBBANK" /> <img src="http://s1.mi.com/images/payOnline_gdyh.gif" alt=""/></label></li>
                                    <li><label  for="SPABANK"><input type="radio" name="payOnlineBank" id="SPABANK" value="SPABANK" /> <img src="http://s1.mi.com/images/payOnline_payh.gif" alt=""/></label></li>
                                    <li><label  for="CIB"><input type="radio" name="payOnlineBank" id="CIB" value="CIB" /> <img src="http://s1.mi.com/images/payOnline_xyyh.gif" alt=""/></label></li>
                                    <li><label  for="CMBC"><input type="radio" name="payOnlineBank" id="CMBC" value="CMBC" /> <img src="http://s1.mi.com/images/payOnline_msyh.gif" alt=""/></label></li>
                                    <li><label  for="BOB"><input type="radio" name="payOnlineBank" id="BOB" value="BOB" /> <img src="http://s1.mi.com/images/payOnline_bjyh.gif" alt=""/></label></li>
                                    <li><label  for="CITIC"><input type="radio" name="payOnlineBank" id="CITIC" value="CITIC" /> <img src="http://s1.mi.com/images/payOnline_zxyh.gif" alt=""/></label></li>
                                    <li><label  for="SDB"><input type="radio" name="payOnlineBank" id="SDB" value="SDB" /> <img src="http://s1.mi.com/images/payOnline_sfyh.gif" alt=""/></label></li>
                                    <li><label  for="SHBANK"><input type="radio" name="payOnlineBank" id="SHBANK" value="SHBANK" /> <img src="http://s1.mi.com/images/payOnline_shyh.gif" alt=""/></label></li>
                                    <li><label  for="BJRCB"><input type="radio" name="payOnlineBank" id="BJRCB" value="BJRCB" /> <img src="http://s1.mi.com/images/payOnline_bjnsyh.gif" alt=""/></label></li>
                                    <li><label  for="NBBANK"><input type="radio" name="payOnlineBank" id="NBBANK" value="NBBANK" /> <img src="http://s1.mi.com/images/payOnline_nbyh.gif" alt=""/></label></li>
                                    <li><label  for="HZCBB2C"><input type="radio" name="payOnlineBank" id="HZCBB2C" value="HZCBB2C" /> <img src="http://s1.mi.com/images/payOnline_hzyh.gif" alt=""/></label></li>
                                    <li><label  for="SHRCB"><input type="radio" name="payOnlineBank" id="SHRCB" value="SHRCB" /> <img src="http://s1.mi.com/images/payOnline_shnsyh.gif" alt=""/></label></li>
                                    <li><label  for="FDB"><input type="radio" name="payOnlineBank" id="FDB" value="FDB" /> <img src="http://s1.mi.com/images/payOnline_fcyh.gif" alt=""/></label></li>                                </ul>
                            </dd>
                        </dl>
                        

                                                
                                                
                    </div>
                            </div>
            <div class="box-ft clearfix">
                    <input type="submit" class="btn btn-primary" value="下一步" id="payBtn" onclick="javascript:window.location.href='<%=path%>/order/receive'"/>
                    <span class="tip"></span>
                </div>
            </div>
</form>  
</div>





    <script src="${pageContext.request.contextPath }/res/static/js/base.min.js"></script>

        <script type="text/javascript" src="${pageContext.request.contextPath }/res/static/js/buyConfirm.js"></script>
   
</div>

 
 <!--订单提交body部分结束-->
    
    
    
    <!-- 底部 -->
    <div class="promise_box">
    	<div class="w">
    		<ul>
        		<li><img src="${pageContext.request.contextPath}/res/static/img/promise_img01.jpg"/><span>365天不打烊</span></li>
        		<li><img src="${pageContext.request.contextPath}/res/static/img/promise_img02.jpg"/><span>无理由退换货</span></li>
        		<li><img src="${pageContext.request.contextPath}/res/static/img/promise_img03.jpg"/><span>担保交易</span></li>
        		<li><img src="${pageContext.request.contextPath}/res/static/img/promise_img04.jpg"/><span>先行赔付</span></li>
        		<li><img src="${pageContext.request.contextPath}/res/static/img/promise_img05.jpg"/><span>支持定制</span></li>
        	</ul>
    	</div>
    </div>
 
    <!-- 底部 -->
    <div class="fixed-buttons">
        <ul>
            <li><a href="#" class="fixed-weixin"><img src="${pageContext.request.contextPath}/res/static/img/fixed_weixin.png" /><div class="weixin-pic"><img src="${pageContext.request.contextPath}/res/static/img/weixin_big.jpg"/></div></a></li>
            <li><img id="imgBtn-to-top" src="${pageContext.request.contextPath }/res/static/img/back_top.png" /></li>
        </ul>
    </div>
    
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
    
    function turn(){
    	
    }
    </script>

</body>
</html>
