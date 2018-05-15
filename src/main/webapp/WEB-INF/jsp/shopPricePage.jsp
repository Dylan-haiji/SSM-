<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="/spring-redis/js/jquery-1.8.3.min.js" type="text/javascript"> </script>
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

<style type="text/css">
#div {
	margin: 0 auto;
	width: 300px;
}
</style>
<script type="text/javascript">

	function getShopPrice(){
		$.ajax({
			type : 'post',
			data:{},
			url:'/spring-redis/shopPrice/selectshopPrice.action',
			datatype:'json',
			success:function(data){
				console.log(data);

				   var jsonData = eval('(' + data + ')');
				   var headTr ="<tr><td>id</td><td>订单号</td><td>价格</td><td>删除</td><td>修改</td></tr>";
				   for(var i=0;i<jsonData.length;i++){
					   var id = jsonData[i].id;
					   var uid = jsonData[i].uid;
					   var amont = jsonData[i].amont;
					   var tr = "<tr>";
					   tr+="<td width=100>";
					   tr+=id;
					   tr+="</td>";
					   tr+="<td width=100>";
					   tr+=uid;
					   tr+="</td>";
					   tr+="<td width=120>";
					   tr+=amont;
					   tr+="</td>";
					   tr+="<td width=100><input  class='button' type='button' onclick='deleteShopById(\""+id+"\")' value='删除'/></td>";
					   tr+="<td width=100><input  class='button' type='button' onclick='updateshopById(\""+id+"\")' value='修改'/></td>";
					   headTr+=tr;
					   
				   }
				   $("#shopTable").html(headTr); 
			},
		});
	}
	/* 修改页面 */
	function updateOrderById(id){
		window.location.href="/spring-redis/order/selectUpOrderById.action?id="+id;
	}
	/* 删除 */
	function deleteShopById(id){
		$.ajax({
			type:'post',
			data:{id:id},
			url:'/spring-redis/shopPrice/deleteShopById.action',
			datatype:'json',
			success:function(data){
				getShopPrice();
			}
		});
	};
	/* 取消跳转回原页面 */
	function addOrder(){
		window.location.href="/spring-redis/order/orderAddPage.action";
	}
	/* 返回首页 */
	function goOrder(){
		window.location.href="/spring-redis/shop/shopPage.action";
	}
	
</script>
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
<title>小编信息</title>
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

	<div id="div">
		<input type="button" id="btnton1" value="查询" onclick="getShopPrice()" class="button"/>
		<input type="button" id="btnton2" value="返回商品" onclick="goOrder()" class="button"/>
		<table id="shopTable">
			<tr>
				<td width=100>id</td>
				<td width=100>订单号</td>
				<td width=100>总价</td>
				<td width=100>删除</td>
				<td width=100>修改</td>
			</tr>
		</table>
	</div>
</body>
</html>