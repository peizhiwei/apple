<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE>
<html>
<head>
<meta content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>注册</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<style type="text/css">
.hi {
	height: 20px;
}

.color {
	background-color: #F0F8FF;
}

.top {
	font-size: 20px;
	background-color: #003366;
	height: 50px;
}

.top1 {
	padding: 10px 50px;
}

.slit::after {
	content: "";
	width: 1px;
	height: 5px;
	border: 1px solid #fff;
	position: relative;
	left: 10px;
}
</style>
<body class="color">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-12">
				<div class="top">
					<p class="top1" style="color: white">
						<a onclick="window.location.href='/apple/user/index'" style="color:white;text-decoration: none;"><span
                class="glyphicon glyphicon-th-large slit"></span>&nbsp;&nbsp;&nbsp;&nbsp;手机商城</a><span style="float:right;color:white;text-decoration: none;" onclick="window.location.href='/apple/user/index'">返回首页</span>
					</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-3 col-sm-4"></div>
			<div id="" class="col-xs-6 col-sm-4">
				<div style="height: 20px"></div>
				<h3>注册</h3>
				<h6 style="color: #003366">欢迎成为手机商城新用户</h6>

				<div class="form-group"></div>
				<form action="">
					<input type="text" name="username" class="form-control" id="username" placeholder="用户名">
					<div class="hi"></div>
					<input type="password" name="password" class="form-control" id="password" placeholder="密码">
					<div class="hi"></div>
					<input type="password" name="password2" class="form-control" id="password2" placeholder="请确认密码">
					<div style="height: 30px"></div>
					<div class="col-xs-6 col-sm-6">
	                    <button class="btn btn-primary btn-block" type="button"
	                        style="position: relative; right: 10px" onclick="window.location.href='/apple/user/register'">注册</button>
	                </div>
	                <div class="col-xs-6 col-sm-6">
	                    <button class="btn btn-primary btn-block " style="position: relative; left: 10px" type="button" class="btn btn-primary btn-block" 
	                    onclick="window.location.href='/apple/user/login'">登录</button>
	                </div>
				</form>

			</div>
			<div class="col-xs-3 col-sm-4"></div>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<script	src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
	<script src=" https://cdn.staticfile.org/vue/2.2.2/vue.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
	        $("#sure").click(function(){
	            var username = $("#username").val();
	            var password = $("#password").val();
	            var password2 = $("#password2").val();
	            var regEnUp=/[A-Z]+/;//大写字母
	            var regEnLow=/[a-z]+/;//小写字母
	            var regNum=/[0-9]+/;//数字
	            var regEnSymbol=/[_]+/;//下划线
	            if(escape(username).indexOf("%u") !=-1){//判断用户名中是否含有中文字符
	                alert("用户名不能包含中文字符！");
	            }
	            //判断用户名长度是否为6为以上，是否为字母数字或下划线
	            else if(username.length<6||(regEnUp.test(username)==false&&regEnSymbol.test(username)==false&&regEnLow.test(username)==false&&regNum.test(username)==false)){
	                alert("用户名长度为6位以上,且为字母数字或下划线");
	            }
	            //判断用户名、密码是否为空
	            else if(username==""||password==""||password2==""){
	                alert("用户名或密码不能为空")
	            }else if(password!=password2){//判断两次输入的密码是否一致
	                alert("两次密码输入的不一致");
	            }else if(password.length<6){//判断密码长度是否我6位以上
	                alert("密码长度不能少于6位");
	            }else if(escape(password).indexOf("%u") !=-1){//判断密码中是否含有中文字符
	                alert("密码不能含有中文字符！");
	            }
	            //判断密码是否同时包含大写字母、小写字母和数字
	            else if(regEnUp.test(password)==false||regEnLow.test(password)==false||regNum.test(password)==false){
	                alert("密码中必须同时包含大写字母、小写字母和数字");
	            }
	            else{
	                $.ajax({
	                    type:'POST',
	                    async:false,
	                    dataType:"json",
	                    url:"/apple/user/checkregister",
	                    data:{"username":username,"password":password,"password2":password2},
	                    success:function(result){
	                    	if(result.flag==true){
	                    		alert("注册成功");
	                    		window.location.href = result.msg;
	                    	}else{
	                    		alert(result.msg);
	                    	}
	                    }
	                });
	            }
	        });
	    }); 
	</script>
</body>
</html>