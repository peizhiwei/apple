<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE>
<html>
<head>
<meta content="text/html; charset=utf-8">
<title>登陆</title>
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

.hi {
	height: 20px;
}
</style>
<body class="color">
	<div class="container ">
		<div class="row">
			<div class="col-xs-12 col-sm-12">
				<div class="top">
					<p class="top1" style="color: white">
						<a onclick="window.location.href='/apple/user/index'" style="color:white;text-decoration: none;"><span class="glyphicon glyphicon-th-large slit" ></span>&nbsp;&nbsp;&nbsp;&nbsp;手机商城</a> 
						<span style="float:right;color:white;text-decoration: none;" onclick="window.location.href='/apple/user/index'">返回</span>
					</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-3 col-sm-4"></div>
			<div class="col-xs-6 col-sm-4">
				<div style="height: 20px"></div>
				<h3>登录</h3>
				<h6 style="color: #003366">欢迎登陆您的手机商城</h6>
				<div style="height: 10px"></div>
                <form action="">
	                <input type="text" name="username" id="username" class="form-control" placeholder="请输入您的用户名">
	                <div class="hi"></div>
	                <div class="hi"></div>
	                <input type="password" name="password" id="password" class="form-control" placeholder="请输入您的密码">
	                <div class="hi"></div>
	                <div class="hi"></div>
	                
	                <div class="col-xs-6 col-sm-6">
	                    <button class="btn btn-primary btn-block" type="button"
	                        style="position: relative; right: 10px" onclick="window.location.href='/apple/user/register'">注册</button>
	                </div>
	                <div class="col-xs-6 col-sm-6">
	                    <button id="login" class="btn btn-primary btn-block " style="position: relative; left: 10px" type="button" class="btn btn-primary btn-block">登录</button>
	                </div>
	                
                </form>
			</div>
			<div class="col-xs-3 col-sm-4"></div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
	<script src=" https://cdn.staticfile.org/vue/2.2.2/vue.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
        $("#login").click(function(){
        	 var username = $("#username").val();
             var password = $("#password").val();
             if(username==''||password==''){
            	 alert("用户名或密码为空");
             }else{
            	 $.ajax({
                     type:'POST',
                     async:false,
                     dataType:"json",
                     url:"/apple/user/checkLogin",
                     data:{"username":username,"password":password},
                     success:function(result){
                         if(result.flag==true){
                             alert("登录成功！");
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