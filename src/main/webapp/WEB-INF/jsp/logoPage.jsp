<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<title>Java有货</title>
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
    border-right:1px solid #bbb;
}

li:last-child {
    border-right: none;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: #4CAF50;
}
li input {
    padding: 14px 16px;
}
</style>
</head>
<body>

<ul>
  <li><a class="active" href="/spring-redis/onePage/logoPage.action">Java有货</a></li>
  <li><a href="">精彩呈现</a></li>
  <li><a href="#contact">联系我们</a></li>
  <li><a href="/spring-redis/order/orderPage.action">小编介绍</a></li>
  <li><a href="/spring-redis/shop/shopPage.action">资料下载</a></li>
 <!--  <li>
		<input type="text" class="form-control" style="width:150px; height=20px;">
		<button class="btn btn-default" type="button">Go!</button>
  </li> -->
  <li style="float:right"><a href="#about">关于</a></li>
  <li style="float:right"><a href="#about">注册</a></li>
  <li style="float:right"><a href="/spring-redis/user/UserPage.action">登录</a></li>
  
</ul>
<!-- <div class="panel panel-default">
	<div class="panel-heading">
		Java反射
	</div>
	<div class="panel-body">
		Java有货
	</div>
</div> -->
<a href="/spring-redis/shop/shopPage.action">
<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title">
			Java从入门到放弃
		</h3>
	</div></a>
	<div class="panel-body">
		<p>今天心情不好</p>
		<p>不要问我为什么</p>
		<p>还不是因为穷</p>
	</div>
</div>

<div id="myCarousel" class="carousel slide">
	<!-- 轮播（Carousel）指标 -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>   
	<!-- 轮播（Carousel）项目 -->
	<div class="carousel-inner">
		<div class="item active">
			<img src="/spring-redis/img/1.png" alt="First slide">
		</div>
		<div class="item">
			<img src="/spring-redis/img/2.png" alt="Second slide" >
		</div>
		<div class="item">
			<img src="/spring-redis/img/3.png" alt="Third slide" >
		</div>
	</div>
	<!-- 轮播（Carousel）导航 -->
	<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		<span class="sr-only">Previous</span>
	</a>
	<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		<span class="sr-only">Next</span>
	</a>
</div> 

</body>
</html>