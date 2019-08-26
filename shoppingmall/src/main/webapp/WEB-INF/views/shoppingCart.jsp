<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%int cartCount=(int)session.getAttribute("cartCount"); %>
    <%@ page import="java.util.List" %>
    <%@ page import="com.weinan.mall.entities.Goods" %>
    <%List<Goods> goodList=(List<Goods>)request.getAttribute("goodList"); %>
    <% String path=request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/static/css/main.css">
  <!-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/layui/css/layui.css">-->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/layui-v2.4.5/layui-v2.4.5/layui/css/layui.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
  
  <style type="text/css">
  
  </style>
</head>
<body onload="load();">

  <div class="site-nav-bg"> 
    <div class="site-nav w1200">
      <p class="sn-back-home">
        <i class="layui-icon layui-icon-home"></i>
        <a href="#">首页</a>
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


  <div class="content content-nav-base shopcart-content">
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
    <div class="cart w1200">
      <div class="cart-table-th">
        <div class="th th-chk">
          <div class="select-all">
            <div class="cart-checkbox">
              <input class="check-all check" id="allCheckked" type="checkbox" value="true">
            </div>
          <label>&nbsp;&nbsp;全选</label>
          </div>
        </div>
        <div class="th th-item">
          <div class="th-inner">
            商品
          </div>
        </div>
        <div class="th th-price">
          <div class="th-inner">
            单价
          </div>
        </div>
        <div class="th th-amount">
          <div class="th-inner">
            数量
          </div>
        </div>
        <div class="th th-sum">
          <div class="th-inner">
            小计
          </div>
        </div>
        <div class="th th-op">
          <div class="th-inner">
            操作
          </div>
        </div>  
      </div>
      <div class="OrderList">
        <div class="order-content" id="list-cont">
        
        <c:forEach var="good" varStatus="goodStatus" items="${goodList }">
           <ul class="item-content layui-clear">
            <li class="th th-chk">
              <div class="select-all">
                <div class="cart-checkbox">
                  <input class="CheckBoxShop check" id="" type="checkbox" num="all" name="select-all" value="true">
                </div>
              </div>
            </li>
            <li class="th th-item">
              <div class="item-cont">
                <a href="javascript:;"><img src="${pageContext.request.contextPath}${good.getImage()}" alt=""></a>
                <div class="text">
                  <div class="title">
                 <input type="hidden" value="${good.getId() }" /> 
                  ${good.getGoodsName()}
                  </div>
                </div>
              </div>
            </li>
            <li class="th th-price">
              <span class="th-su">${good.getPrice()}</span>
            </li>
            <li class="th th-amount">
              <div class="box-btn layui-clear">
                <div class="less layui-btn">-</div>
                <input class="Quantity-input" type="" name="" value="${goodsAmount.get(good) }" disabled="disabled">
                <div class="add layui-btn">+</div>
              </div>
            </li>
            <li class="th th-sum">
              <span class="sum">${good.getPrice()}</span>
            </li>
            <li class="th th-op">
              <span class="dele-btn">删除</span> 
            </li>
          </ul>
        </c:forEach>
        <%if(goodList.size()==0){ %>
       <div class="OrderList" style="height:600px;">
        <img src="${pageContext.request.contextPath }/res/static/img/Nothing.jpg" style="width:100%;height:100%"/>
         </div>
        <%} %>
        
      
        </div>
      </div>


      


      <div class="FloatBarHolder layui-clear">
        <div class="th th-chk">
          <div class="select-all">
            <div class="cart-checkbox">
              <input class="check-all check" id="" name="select-all" type="checkbox"  value="true">
            </div>
            <label>&nbsp;&nbsp;已选<span class="Selected-pieces">0</span>件</label>
          </div>
        </div>
        <div class="th batch-deletion">
          <span class="batch-dele-btn">批量删除</span>
        </div>
        <div class="th Settlement">
          <button class="layui-btn" id="clear" onclick="tiao()">结算</button>
        </div>
        <div class="th total">
          <p>应付：<span class="pieces-total">0</span></p>
        </div>
      </div>
    </div>
  </div>
<!--<script type="text/javascript" src="${pageContext.request.contextPath }/layui-v2.4.5/layui-v2.4.5/layui/layui.js"></script>-->
<script type="text/javascript" src="${pageContext.request.contextPath }/res/jquery-1.9.1/jquery-1.9.1/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/layui-v2.4.5/layui-v2.4.5/layui/layui.all.js"></script>

<script type="text/javascript">
var layer = layui.layer;

var car = {
  init : function(){
  		var uls = document.getElementById('list-cont').getElementsByTagName('ul');//每一行
  		var checkInputs = document.getElementsByClassName('check'); // 所有勾选框
      var checkAll = document.getElementsByClassName('check-all'); //全选框
      var SelectedPieces = document.getElementsByClassName('Selected-pieces')[0];//总件数
      var piecesTotal = document.getElementsByClassName('pieces-total')[0];//总价
      var batchdeletion = document.getElementsByClassName('batch-deletion')[0]//批量删除按钮
      //计算
      function getTotal(){
          var seleted = 0,price = 0;
          for(var i = 0; i < uls.length;i++){
        			if(uls[i].getElementsByTagName('input')[0].checked){
                seleted += parseInt(uls[i].getElementsByClassName('Quantity-input')[0].value);
                price += parseFloat(uls[i].getElementsByClassName('sum')[0].innerHTML);
              }
      		}
          SelectedPieces.innerHTML = seleted;
          piecesTotal.innerHTML = '￥' + price.toFixed(2);
      }

      function fn1(){
        alert(1)
      }
      // 小计
      function getSubTotal(ul){
        var unitprice = parseFloat(ul.getElementsByClassName('th-su')[0].innerHTML);
        var count = parseInt(ul.getElementsByClassName('Quantity-input')[0].value);
        var SubTotal = parseFloat(unitprice*count)
        ul.getElementsByClassName('sum')[0].innerHTML = SubTotal.toFixed(2);
      }

      for(var i = 0;i < checkInputs.length;i++){
        checkInputs[i].onclick = function(){
          if(this.className === 'check-all check'){
            for(var j = 0;j < checkInputs.length; j++){
              checkInputs[j].checked = this.checked;
            }
          }
          if(this.checked == false){
            for(var k = 0;k < checkAll.length;k++){
              checkAll[k].checked = false;
            } 
          }
          getTotal()
        }
      }
  

      for(var i = 0; i < uls.length;i++){
        uls[i].onclick = function(e){
          e = e || window.event;
          var el = e.srcElement;
          var cls = el.className;
          var input = this.getElementsByClassName('Quantity-input')[0];
          var less = this.getElementsByClassName('less')[0];
          var val = parseInt(input.value);
          var that = this;
          switch(cls){
            case 'add layui-btn':
              input.value = val + 1;
              getSubTotal(this)
              break;
            case 'less layui-btn':
              if(val > 1){
                input.value = val - 1;
              }
              getSubTotal(this)
              break; 
            case 'dele-btn':
              layer.confirm('你确定要删除吗',{
                yes:function(index,layero){ 
                  layer.close(index)
                  that.parentNode.removeChild(that);
                }
              }) 
              break;
          }
          getTotal();
        }
      }
      batchdeletion.onclick = function(){
        if(SelectedPieces.innerHTML != 0){
          layer.confirm('你确定要删除吗',{
            yes:function(index,layero){
              layer.close(index)
              for(var i = 0;i < uls.length;i++){
                var input = uls[i].getElementsByTagName('input')[0];
                if(input.checked){
                  uls[i].parentNode.removeChild(uls[i]); 
                  i--;
                }
              }
              getTotal() 
            }

          })
        }else{
          layer.msg('请选择商品') 
        }
        
      }
        checkAll[0].checked = true;
        checkAll[0].onclick();
  	  }  	

  }
  car.init();


</script>
<script type="text/javascript">
  
  function load(){
	  var result=document.getElementById("cuser").value;
	  var Count=${cartCount};
	  if(result!=""){
		  document.getElementById("isLogin").innerHTML="你好,"+result;
		  document.getElementById("count").innerHTML=Count;
	  }else{
		  document.getElementById("isLogin").innerHTML="登录";
		  document.getElementById("count").innerHTML=Count;
	  }
	  
	 
  }
  
  
  
   
  </script>
  <script type="text/javascript"> 
  
  function sendToController(sureClearId){
	  var userid=${currentUser.getId()};
	 // alert(userid);
	  $.ajax({
		  type:"POST",
		  url:"<%=path%>/shoppingcart/clear",
		  traditional:true,
		  data:{
			  userID:userid,
			  ids:sureClearId
		  },
		  success:function(result){
			  if(result!=null){
				  window.location.href="<%=path%>/shoppingcart/turnToClear";
			  }
		  },
		  error:function(){
			  alert("没送过去");
		  }
	   });
  }
   
   function tiao(){
	  // alert("这里是可以的");
	   var uls = document.getElementById('list-cont').getElementsByTagName('ul');//每一行
	   alert(uls.length);
	   var sureClearId=new Array();
	   for(var i=0;i<uls.length;i++){
		   //alert("3");
		   if(uls[i].getElementsByTagName('input')[0].checked){
			 //  alert("4");
			   sureClearId.push(uls[i].getElementsByTagName('input')[1].value);
			   
			   
		   }
	   }
	   
	   sendToController(sureClearId);
   }
     
  
  </script>


</body>
</html>