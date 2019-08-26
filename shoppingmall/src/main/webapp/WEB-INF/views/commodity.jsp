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
  <script type="text/javascript" src="${pageContext.request.contextPath }/res/layui/layui.js"></script>
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
          <form action="" class="layui-form" style="border-color:#F30" novalidate method="post">
            <input type="text" name="keyword" id="keyword" required  lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入需要的商品">
            <button class="layui-btn" id="submit" style="background-color:#F30" lay-submit lay-filter="formDemo" onclick="return false">
                <i class="layui-icon layui-icon-search"></i>
            </button>
            <input type="hidden" name="" value="">
          </form>
        </div>
      </div>
    </div>
  </div>


  <div class="content content-nav-base commodity-content">
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
    <div class="commod-cont-wrap">
      <div class="commod-cont w1200 layui-clear">
        <div class="left-nav">
          <div class="title">所有分类</div>
          <div class="list-box">
            <dl>
             <dt>男装</dt>
             <dd><a href="javascript:;">韩潮</a></dd>
             <dd><a href="javascript:;">日系</a></dd>
             <dd><a href="javascript:;">国潮</a></dd>
            </dl>
            <dl>
             <dt>女装</dt>
             <dd><a href="javascript:;">内衣</a></dd>
             <dd><a href="javascript:;">裙子</a></dd>
             <dd><a href="javascript:;">裤子</a></dd>
             <dd><a href="javascript:;">cosPlay</a></dd>
             <dd><a href="javascript:;">小仙女</a></dd>
            </dl>
            <dl>
             <dt>儿童早教</dt>
             <dd><a href="javascript:;">儿童玩具</a></dd>
             <dd><a href="javascript:;">早教书籍</a></dd>
             <dd><a href="javascript:;">孕产育儿书</a></dd>
            </dl>
            <dl>
             <dt>电子产品</dt>
             <dd><a href="javascript:;">手机</a></dd>
             <dd><a href="javascript:;">电脑</a></dd>
             <dd><a href="javascript:;">电视</a></dd>
            </dl>
            <dl>
             <dt>漫画</dt>
             <dd><a href="javascript:;">海贼王</a></dd>
             <dd><a href="javascript:;">妖精的尾巴</a></dd>
             <dd><a href="javascript:;">进击的巨人</a></dd>
            </dl>
          </div>
        </div>
        <div class="right-cont-wrap">
          <div class="right-cont">
            <div class="sort layui-clear">
              <a class="active" href="javascript:;" event = 'volume'>销量</a>
              <a href="javascript:;" event = 'price'>价格</a>
              <a href="javascript:;" event = 'newprod'>新品</a>
              <a href="javascript:;" event = 'collection'>收藏</a>
            </div>
            <div class="prod-number">
              <span>${foudGoodsList.size()}</span>
            </div>
            <div class="cont-list layui-clear" id="list-cont">
            <c:forEach var="goods" varStatus="status" items="${foudGoodsList}">
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="${pageContext.request.contextPath }${goods.getImage() }" onclick="myFunction(${status.index});" style="width:100%;height:auto;"></a>
                </div>
                <div class="text">
                  <p class="title">${goods.getGoodsName()}</p>
                  <p class="price">
                    <span class="pri">${goods.getPrice() }</span>
                  </p>
                </div>
              </div>
            </c:forEach>
            <!--  
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img1.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img2.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img3.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img1.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img2.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img3.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img1.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img2.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img3.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img1.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img2.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img3.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img1.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img2.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img3.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>-->
            </div>
            <!-- 模版引擎导入 -->
            <!-- <script type="text/html" id="demo">
              {{# layui.each(d.menu.milk.content,function(index,item){}}    
                <div class="item">
                  <div class="img">
                    <a href="javascript:;"><img src="{{item.img}}"></a>
                  </div>
                  <div class="text">
                    <p class="title"></p>
                    <p class="price">
                      <span class="pri">{{item.pri}}</span>
                      <span class="nub">{{item.nub}}</span>
                    </p>
                  </div>
                </div>
              {{# }); }}
            </script> -->
            <div id="demo0" style="text-align: center;"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <script  src="${pageContext.request.contextPath }/res/jquery-1.9.1/jquery-1.9.1/jquery.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/res/static/js/zsucai.js"></script>
  
<script>

  layui.config({
    base: '../res/static/js/util/' //你存放新模块的目录，注意，不是layui的模块目录
  }).use(['mm','laypage','jquery'],function(){
      var laypage = layui.laypage,$ = layui.$,
     mm = layui.mm;
       laypage.render({
        elem: 'demo0'
        ,count: 100 //数据总数
      });


    // 模版引擎导入
    //  var html = demo.innerHTML;
    //  var listCont = document.getElementById('list-cont');
    //  // console.log(layui.router("#/about.html"))
    // mm.request({
    //     url: '../json/commodity.json',
    //     success : function(res){
    //       console.log(res)
    //       listCont.innerHTML = mm.renderHtml(html,res)
    //     },
    //     error: function(res){
    //       console.log(res);
    //     }
    //   })

    $('.sort a').on('click',function(){
      $(this).addClass('active').siblings().removeClass('active');
    })
    $('.list-box dt').on('click',function(){
      if($(this).attr('off')){
        $(this).removeClass('active').siblings('dd').show()
        $(this).attr('off','')
      }else{
        $(this).addClass('active').siblings('dd').hide()
        $(this).attr('off',true)
      }
    })

});
</script>

<script type="text/javascript">
  
  
  function myFunction(index){
	  alert("到这来了");
	  //alert(index);
	   var attImg=$("img")[index+1].src;
	  // alert("2");
	   var i=attImg.indexOf("/res");
	   //alert(i);
	   var imgUrl=attImg.substring(i,attImg.length);
	  
		
		alert(imgUrl);
	  $.ajax({
		  type:"POST",
		  url:"<%=path%>/loadGoods",
		  contentType:"application/json;charset=utf-8",
		  data:JSON.stringify({
			 url:imgUrl 
		  }),
		  success:function(result){
			  if(result!=null){
				  window.location.href="<%=path%>/details";
			  }
		  },
		  error:function(){
			  alert("没送过去");
			  window.location.href="#"
		  }
	   });
			   
		   
  } 
  
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
          


    
    })
  </script>


</body>
</html>