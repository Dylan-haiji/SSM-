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
$(function(){
		$("#btn").click(function(){
			$.ajax({
				type : 'post',
				data:{name:$('#name').val(),pws:$('#pws').val()},
				url:'/spring-redis/user/toLongin.action',
				datatype:'json',
				success:function(data){
					   if(data=='1'){
						   window.location.href="/spring-redis/order/orderPage.action";
					   }else {
						alert("失败！");
					}
					
				}
			});
		});
	});
</script>
<title>用户登录</title>
</head>
<body>
	<div id="div">
	<h4>用户登录</h4>
	<tr>昵称
		<td><input type="text" id="name"></td><br>
		密码
		<td><input type="password" id="pws"></td><br>
		
		<td><input type="button" id="btn" value="登录" class="button"></td>
	</tr>
	</div>
</body>
</html>