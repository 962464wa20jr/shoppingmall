<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.weinan.mall.entities.User" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/static/css/main.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/static/css/zsucai.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/layui/css/layui.css">
  <script type="text/javascript" src="${pageContext.request.contextPath }/res/jquery-1.9.1/jquery-1.9.1/jquery.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<body id="list-cont">
  <div class="site-nav-bg">
    <div class="site-nav w1200">
      <p class="sn-back-home">
        <i class="layui-icon layui-icon-home"></i>
        <a href="#">首页</a>
      </p>
      <div class="sn-quick-menu">
        <div class="login"><a href="<c:url value="/login"/>">你好，${currentUser.getNickname() }</a></div>
        <div class="sp-cart"><a href="<c:url value="/shoppingcart"/>">购物车</a><span>2</span></div>
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


  <div class="content">
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
    <div class="category-con">
      <div class="category-inner-con w1200">
        <div class="category-type">
          <h3>全部分类</h3>
        </div>
        <div class="category-tab-content">
          <div class="nav-con">
            <ul class="normal-nav layui-clear">
              <li class="nav-item">
                <div class="title">女装/内衣</div>
                <p><a href="#"></a><a href="#">上衣</a><a href="#">裤子</a></p>
                <i class="layui-icon layui-icon-right"></i>
              </li>
              <li class="nav-item">
                <div class="title">男装/户外运动</div>
                <p><a href="#">外套</a><a href="#">裤装</a></p>
                <i class="layui-icon layui-icon-right"></i>
              </li>
              <li class="nav-item">
                <div class="title">女鞋/男鞋/箱包</div>
                <p><a href="#">潮流女鞋</a><a href="#">潮流男鞋</a></p>
                <i class="layui-icon layui-icon-right"></i>
              </li>
              <li class="nav-item">
                <div class="title">美妆/个人护理</div>
                <p><a href="#">彩妆</a><a href="#">男士洗面奶</a><a href="#">美发护发</a></p>
                <i class="layui-icon layui-icon-right"></i>
              </li>
              <li class="nav-item">
                <div class="title">腕表/眼镜/珠宝饰品</div>
                <p><a href="#">黄金首饰</a><a href="#">珍珠玉翠</a></p>
                <i class="layui-icon layui-icon-right"></i>
              </li>
              <li class="nav-item">
                <div class="title">手机/数码/电脑办公</div>
                <p><a href="#">热门手机</a><a href="#">笔记本电脑</a><a href="#">摄影摄像</a></p>
                <i class="layui-icon layui-icon-right"></i>
              </li>
              <li class="nav-item">
                <div class="title">零食/茶酒/进口食品</div>
                <p><a href="#">进口食品</a><a href="#">酒类</a><a href="#">茶叶</a></p>
                <i class="layui-icon layui-icon-right"></i>
              </li>
              <li class="nav-item nobor">
                <div class="title">生鲜蔬果</div>
                <p><a href="#">新鲜蔬菜</a><a href="#">肉类</a><a href="#">海鲜水产</a></p>
                <i class="layui-icon layui-icon-right"></i>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="category-banner">
        <div class="w1200">
          <img src="${pageContext.request.contextPath}/res/static/img/banner.jpg">
        </div>
      </div>
    </div>
    <div class="floors">
    <div class="sk">
        <div class="sk_inner w1200">
          <div class="sk_hd">
            <a href="javascript:;">
              <img src="${pageContext.request.contextPath}/res/static/img/s_img1.jpg">
            </a>
          </div>
         <!-- <div class="sk_bd">
            <div class="layui-carousel" id="test1">
              <div carousel-item>
                <div class="item-box">
                  <div class="item">
                    <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/s_img2.jpg"></a>
                    <div class="title">正品Dior/迪奥口红</div>
                    <div class="price">
                      <span>￥319</span>
                      <del>￥319</del>
                    </div>
                  </div>
                  <div class="item">
                    <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/s_img3.jpg"></a>
                    <div class="title">新款四核i3本</div>
                    <div class="price">
                      <span>￥1688</span>
                      <del>￥1999</del>
                    </div>
                  </div>
                  <div class="item">
                    <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/s_img4.jpg"></a>
                    <div class="title">Adidas EQT</div>
                    <div class="price">
                      <span>￥919</span>
                      <del>￥1299</del>
                    </div>
                  </div>
                  <div class="item">
                    <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/s_img5.jpg"></a>
                    <div class="title">杜蕾斯避孕套</div>
                    <div class="price">
                      <span>￥44</span>
                      <del>￥69</del>
                    </div>
                  </div>
                </div>
                <div class="item-box">
                  <div class="item">
                    <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/s_img12.jpg"></a>
                    <div class="title">sk-iisk2skii</div>
                    <div class="price">
                      <span>￥1450</span>
                      <del>￥1850</del>
                    </div>
                  </div>
                  <div class="item">
                    <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/s_img13.jpg"></a>
                    <div class="title">飞科电动剃须刀</div>
                    <div class="price">
                      <span>￥129</span>
                      <del>￥499</del>
                    </div>
                  </div>
                  <div class="item">
                    <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/s_img14.jpg"></a>
                    <div class="title">小型手机照片打印机</div>
                    <div class="price">
                      <span>￥699</span>
                      <del>￥1899</del>
                    </div>
                  </div>
                  <div class="item">
                    <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/s_img15.jpg"></a>
                    <div class="title">【三只松鼠_巨型零食大礼包】</div>
                    <div class="price">
                      <span>￥49</span>
                      <del>￥99</del>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>-->
        <div class="wrapper top-main clearfix" >
	<div class="main tab mt15">
		<!--切换图片-->
		<div class="slide">
			<ul id="bigSlideUl" class="slide-ul clearfix">
				<li>
				<a  class="picimglink"  href="javascript:;">
				<img width="230" height="200" src="${pageContext.request.contextPath}/res/static/img/s_img2.jpg" alt="正品Dior/迪奥口红" onclick="myFunction(3);"/>
				<span class="pic-txt">正品Dior/迪奥口红</span> </a></li>
				<li>
				<a target="_blank" class="picimglink" href="http://www.lanrentuku.com/">
				<img width="230" height="200" src="${pageContext.request.contextPath}/res/static/img/s_img3.jpg" alt="新款四核i3本" />
				<span class="pic-txt">新款四核i3本</span> </a></li>
				<li>
				<a target="_blank" class="picimglink" href="http://www.lanrentuku.com/">
				<img width="230" height="200" src="${pageContext.request.contextPath}/res/static/img/s_img4.jpg" alt="Adidas EQT" />
				<span class="pic-txt">Adidas EQT</span> </a></li>
				<li>
				<a target="_blank" class="picimglink" href="http://www.lanrentuku.com/">
				<img width="230" height="200" src="${pageContext.request.contextPath}/res/static/img/s_img5.jpg" alt="杜蕾斯避孕套" />
				<span class="pic-txt">杜蕾斯避孕套</span> </a></li>
				<li>
				<a target="_blank" class="picimglink" href="http://www.lanrentuku.com/">
				<img width="230" height="200" src="${pageContext.request.contextPath}/res/static/img/s_img12.jpg" alt="sk-iisk2skii" />
				<span class="pic-txt">sk-iisk2skii</span> </a></li>
				<li>
				<a target="_blank" class="picimglink" href="http://www.lanrentuku.com/">
				<img width="230" height="200" src="${pageContext.request.contextPath}/res/static/img/s_img13.jpg" alt="飞科电动剃须刀" />
				<span class="pic-txt">飞科电动剃须刀</span> </a></li>
				<li>
				<a target="_blank" class="picimglink" href="http://www.lanrentuku.com/">
				<img width="230" height="200" src="${pageContext.request.contextPath}/res/static/img/s_img14.jpg" alt="小型手机照片打印机" />
				<span class="pic-txt">小型手机照片打印机</span> </a></li>
				<li>
				<a target="_blank" class="picimglink" href="http://www.lanrentuku.com/">
				<img width="230" height="200" src="${pageContext.request.contextPath}/res/static/img/s_img15.jpg" alt="【三只松鼠_巨型零食大礼包】" />
				<span class="pic-txt">【三只松鼠_巨型零食大礼包】</span> </a></li>
			</ul>
		</div>
		<!--slide 切换按钮-->
		<ul id="smallSlideUl" class="info-btn clearfix">
			<li class="info-cur" id="mypic0" sid="0"><span>1</span></li>
			<li id="mypic1" sid="1"><span>2</span></li>
		</ul>
		</div>

</div>       
   </div>    
      </div>
    </div>

  <script type="text/javascript" src="${pageContext.request.contextPath }/res/static/js/zsucai.js"></script>




    <div class="hot-recommend-con">
      <div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >网页模板</a></div>
       <div class="hot-con1 w1200 layui-clear">
          <div class="item">
            <h4>热销推荐</h4>
            <div class="big-img">
              <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/hot1(2).jpg"></a>
            </div>
            <div class="small-img">
              <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/hot3.jpg" alt=""></a>
            </div>
          </div>
          <div class="item">
            <div class="top-img">
              <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/hot5.jpg"></a>
            </div>
            <div class="bottom-img">
              <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/hot4.jpg"></a>
              <a class="baby-cream" href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/hot6(2).jpg"></a>
            </div>
          </div>
          <div class="item item1 margin0 padding0">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/hot2.jpg"></a>
            <a href="javascript:;"><img class="btm-img" src="${pageContext.request.contextPath}/res/static/img/hot7(2).jpg"></a>
          </div>
      </div>
    </div>
    


    <div class="product-cont w1200" id="product-cont">
      <div class="product-item product-item1 layui-clear">
        <div class="left-title">
          <h4><i>1F</i></h4>
          <img src="${pageContext.request.contextPath}/res/static/img/icon_gou.png">
          <h5>女装会场</h5>
        </div>
        <div class="right-cont">
          <a href="javascript:;" class="top-img"><img src="${pageContext.request.contextPath}/res/static/img/img12(3).jpg" alt=""></a>
          <div class="img-box">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/s_img7(2).jpg"></a>
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/s_img8(2).jpg"></a>
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/s_img9(2).jpg"></a>
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/s_img10(2).jpg"></a>
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/s_img11(2).jpg"></a>
          </div>
        </div>
      </div>
      <div class="product-item product-item2 layui-clear">
        <div class="left-title">
          <h4><i>2F</i></h4>
          <img src="${pageContext.request.contextPath}/res/static/img/icon_gou.png">
          <h5>潮流男装</h5>
        </div>
        <div class="right-cont">
          <a href="javascript:;" class="top-img"><img src="${pageContext.request.contextPath}/res/static/img/img12(4).jpg" alt=""></a>
          <div class="img-box">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/s_img12(2).jpg"></a>
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/s_img13(2).jpg"></a>
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/s_img14(2).jpg"></a>
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/s_img15(2).jpg"></a>
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/s_img16.jpg"></a>
          </div>
        </div>
      </div>
      <div class="product-item product-item3 layui-clear">
        <div class="left-title">
          <h4><i>3F</i></h4>
          <img src="${pageContext.request.contextPath}/res/static/img/icon_gou.png">
          <h5>宝宝用品</h5>
        </div>
        <div class="right-cont">
          <a href="javascript:;" class="top-img"><img src="${pageContext.request.contextPath}/res/static/img/img12.jpg" alt=""></a>
          <div class="img-box">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/s_img7.jpg"></a>
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/s_img8.jpg"></a>
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/s_img9.jpg"></a>
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/s_img10.jpg"></a>
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/s_img11.jpg"></a>
          </div>
        </div>
      </div>
    </div>

    <div class="product-list-box" id="product-list-box">
      <div class="product-list-cont w1200">
        <h4>更多推荐</h4>
        <div class="product-item-box layui-clear">
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more1(2).jpg"></a>
            <p>Huaiweo/华为 Mate20 pro曲面屏</p>
            <span>￥5999.00</span >
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more2(2).jpg"></a>
            <p>亿健精灵ELF跑步机家用款走步减肥超静音</p>
            <span>￥1799.00</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more3(2).jpg"></a>
            <p>OLAY水感透白光塑精华露</p>
            <span>￥175.00</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more4(2).jpg"></a>
            <p>xiaomi/小米 小米电视4A 65英寸4k超高清</p>
            <span>￥3399.00</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more5(2).jpg"></a>
            <p>[12期分期][两年保修]Apple/苹果 ipad</p>
            <span>￥2288.00</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more6.jpg"></a>
            <p>兰蔻大粉水 400ml清滢柔肤水补水保湿</p>
            <span>￥420.00</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more7.jpg"></a>
            <p>全棉时代 婴儿纯棉柔巾 新生儿干湿两用</p>
            <span>￥324.00</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more8.jpg"></a>
            <p>Lenvo联想拯救者Y7000英特尔酷睿i5</p>
            <span>￥6299.00</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more9.jpg"></a>
            <p>全新Kindle Paperwhite4 亚马逊</p>
            <span>￥998.00</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more10.jpg"></a>
            <p>Haier/海尔 EG10014B39GU1 10</p>
            <span>￥2699.00</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more11.jpg"></a>
            <p>雅诗兰黛 全新沁水粉底液 干皮救星补水</p>
            <span>￥490.00</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more12.jpg"></a>
            <p>Media/美的 KFR-35GW/WXAN8A1</p>
            <span>￥3299.00</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more13.jpg"></a>
            <p>OLAY箐醇青春黄金酵母熬夜霜绵柔质地</p>
            <span>￥449.00</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more14.jpg"></a>
            <p>维达抽纸超韧3层M码120抽24包整箱装 中</p>
            <span>￥89.90</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more15.jpg"></a>
            <p>九阳新款加热真空破壁料理机Y929养生豆浆机</p>
            <span>￥1299.00</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more16.jpg"></a>
            <p>Haier/海尔 BCD-470WDPG 十字对开</p>
            <span>￥4799.00</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more17.jpg"></a>
            <p>雅诗兰黛眼霜 小棕瓶密集修护眼精华 抗皱</p>
            <span>￥590.00</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more18.jpg"></a>
            <p>方太JQD2T+HT8BE家用抽油烟机</p>
            <span>￥7680.00</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more19.jpg"></a>
            <p>兰蔻小黑瓶大眼精华眼霜眼部肌底液20ml</p>
            <span>￥680.00</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more20.jpg"></a>
            <p>美的净水器家用直饮自来水过滤器反渗透</p>
            <span>￥1898.00</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more21.jpg"></a>
            <p>花王日本进口纸尿片 XL44片 超薄透男女</p>
            <span>￥170.00</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more22.jpg"></a>
            <p>【极速发货】DJI 大疆 御Mavic 2新一代</p>
            <span>￥7888.00</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more23.jpg"></a>
            <p>小白熊恒温调奶器暖奶器旗舰店婴儿泡奶</p>
            <span>￥299.00</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more24.jpg"></a>
            <p>维达卷纸蓝色经典4层140克27卷整箱装</p>
            <span>￥71.00</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more25.jpg"></a>
            <p>苏泊尔电饭煲家用3L迷你电饭煲小型智能</p>
            <span>￥189.00</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more26.jpg"></a>
            <p>九阳破壁豆浆机小型免过滤家用全自动</p>
            <span>￥899.00</span>
          </div>
          <div class="list-item">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/res/static/img/more27.jpg"></a>
            <p>美的电热水壶家用304不锈钢正品</p>
            <span>￥89.00</span>
          </div>
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
      <p class="coty">TIMA商城版权所有 &copy; 2019-2029  - Collect from X.WeiNan</p>
    </div>
  </div>
  <script type="text/javascript" src="${pageContext.request.contextPath }/layui-v2.4.5/layui-v2.4.5/layui/layui.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/res/jquery-1.9.1/jquery-1.9.1/jquery.js"></script>
  <script type="text/javascript">
  
   function myFunction(index){
	   var attImg=$("img")[index].src;
	   var i=attImg.indexOf("/res");
	   //alert(i);
	   var imgUrl=attImg.substring(i,attImg.length);
	  
			   alert(imgUrl);
			   $.ajax({
					  type:"POST",
					  url:"loadGoods",
					  contentType:"application/json;charset=utf-8",
					  data:JSON.stringify({
						 url:imgUrl 
					  }),
					  success:function(result){
						  if(result!=null){
							  window.location.href="details";
						  }
					  },
					  error:function(){
						  alert("没送过去");
						  window.location.href="#"
					  }
				   });
		   
	   
	   
   }
  </script>
  <script type="text/javascript">
 
</body>
</html>