<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<title>Java有货</title>
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.bootcss.com/jqu	ery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="/spring-redis/js/jquery-1.8.3.min.js" type="text/javascript"> </script>
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

<style>
.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 6px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 6px;
    margin: 4px 2px;
    cursor: pointer;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
}
.button:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
</style>

<style>
table, td, th
{
	border:1px solid green;
}
th
{
	background-color:green;
	color:white;
}
</style>

<style>
#foltDiv
{
	float:right;
}
</style>
<script type="text/javascript">
function getShop(price){
	var num = prompt("输入数量","");
	if(num!=null){
		var amont = price*num;
		$.ajax({
		       type  : 'post',
		       data:{amont:amont},
			   url   : '/spring-redis/shopPrice/saveMyOrder.action', 
		       datatype : "json", 
			   success: function(data){
				   alert('订单提交成功');
			   }
		     
		});
	}
}
/* 返回到商品页面 */
function goHomeShop(){
	window.location.href="/spring-redis/shop/shopPage.action";
}
/* 查询价格 */
function selShop(){
	$.ajax({
		type : 'post',
		data:{},
		url:'/spring-redis/shop/findShop.action',
		datatype:'json',
		success:function(data){
			console.log(data);

			   var jsonData = eval('(' + data + ')');
			   var headTr ="<tr><td>商品价格</td><td>操作</td></tr>";
			   for(var i=0;i<jsonData.length;i++){
				   var price = jsonData[i].price;
				   var tr = "<tr>";
				   tr+="<td width=100>";
				   tr+=price;
				   tr+="</td>";
				   tr+="<td width=100><input  class='button' type='button' onclick='getShop(\""+price+"\")' value='购买'/></td>";
				   headTr+=tr;
				   
			   }
			   $("#shopTable").html(headTr); 
		},
	});
}
function getShopPrice(){
	window.location.href="/spring-redis/shopPrice/shopPricePage.action";
}
</script>
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
	<img src="/spring-redis/img/fans.jpg"  class="img-thumbnail" alt="Cinque Terre" width="400" height="236"> 
	<div id="foltDiv">
		<input type="button" id="btnton2" value="查询" onclick="selShop()" class="button"/> 
		<input type="button" id="btnton2" value="返回" onclick="goHomeShop()" class="button"/> 
		<input type="button" id="btnton2" value="我的订单" onclick="getShopPrice()" class="button"/>
		<table id="shopTable">
			<tr>
				<td width=100>商品价格</td>
				<td width=100>购买</td>
			</tr>
		</table>
	</div>
	<h3>Java编程思想</h3>
	<p>本书工具20章节</p> 
	<p>Java大佬20年的辛酸路程，总结出这不经典之作！</p>
	<p>让你从菜鸟,转为大神！</p>
	
</div>

</body>
</html>