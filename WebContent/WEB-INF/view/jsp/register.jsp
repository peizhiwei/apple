<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE>
<html>
<head>
<meta content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>注册</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
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
						<span class="glyphicon glyphicon-th-large slit"
							style="color: white"></span>&nbsp;&nbsp;&nbsp;&nbsp;手机商城
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

				<div class="form-group" v-bind></div>
				<form id="userInfo" method="post" action="">
				    <input type="text" name="username" class="form-control" placeholder="用户名">
	                <div class="hi"></div>
	                <input type="password" name="password" class="form-control" placeholder="密码">
	                <div class="hi"></div>
	                <input type="password" name="password" class="form-control" placeholder="请再一次输入密码">
	                <div style="height: 30px"></div>
	                <button id="commit" type="button" class="btn btn-primary btn-block">注册</button>
				</form>
				
			</div>
			<div class="col-xs-3 col-sm-4"></div>
		</div>
	</div>
	<div>
		<script	src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
		<script	src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
		<script src=" https://cdn.staticfile.org/vue/2.2.2/vue.min.js"></script>
		<script>
			var app = new Vue({
				el : '#app',
				data : {
					username : '',
					password : '',
					password2 : ''
				},
				methods : {
					register : function() {
						if (this.username.length < 6) {

						} else if (this.password.length < 8) {

						} else if (this.password != this.password2) {

						} else {

						}
					}
				}
			})
		</script>
		<script type="text/javascript">
		  $(function(){
			  $("#commit").click(function(){
				  $.ajax({
					  url:"/add",
					  type:"post",
					  data:$("#userInfo").serialize(),
					  dataType:"json",
					  success:function(result){
						  if(result!="success"){
							  alert("注册失败");
						  }
					  }
				  })
			  })
		  })
		</script>
</body>
</html>