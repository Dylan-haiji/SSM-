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
  
  <li style="float:right"><a href="#about">关于</a></li>
  <li style="float:right"><a href="#about">注册</a></li>
  <li style="float:right"><a href="/spring-redis/user/UserPage.action">登录</a></li>
  
</ul>
<div class="container">
	<h3>Java编程思想</h3>
	<p>这是一本关于java变成的书籍,拥有它，你就拥有了战神之力！</p>
	<a href="/spring-redis/shop/fansPage.action">              
		<img src="/spring-redis/img/fans.jpg"  class="img-thumbnail" alt="Cinque Terre" width="400" height="236"> 
	</a>    
</div>













</body>
</html>