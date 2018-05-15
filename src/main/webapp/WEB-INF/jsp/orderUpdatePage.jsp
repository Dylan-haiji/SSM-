<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	$(function(){
		$("#updatebtn").click(function(){
			$.ajax({
				type:'post',
				data:{name:$('#name').val(),phone:$('#phone').val(),adder:$('#adder').val()},
				url:'/spring-redis/order/updateGetOrder.action',
				datatype:'json',
				success:function(data){
					/* alert(data); */
					window.location.href="/spring-redis/order/orderPage.action";
					alert("人员修改成功");
				}
			});
		});
	});
	function quOrder(){
		alert("您确定取消?");
		window.location.href="/spring-redis/order/orderPage.action";
	}
</script>
<title>修改小编信息</title>
</head>
<body>
	<div id="div">
	<h4>修改小编信息</h4>
		姓名
		<input type="text" id="name" name="name" value="${name}"> <br>
		电话
		<input type="text" id="phone" name="phone" value="${phone}"><br>
		地址
		<input type="text" id="adder" name="adder" value="${adder}" ><br>
		
		<input type="button" id="updatebtn" value="确定" class="button"/>
		<input type="button" id="btnton2" value="取消" onclick="quOrder()" class="button"/>
	</div>
</body>
</html>