<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>首页</title>
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">电子商城后台管理系统</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-alert"
							aria-hidden="true"></span><span class="badge">10</span></a></li>
					<li><a href="#"><span class="glyphicon glyphicon-envelope"
							aria-hidden="true"></span><span class="badge">5</span></a></li>
					<li class="dropdown">
						<button type="button" class="btn btn-default"
							style="margin-top: 7px" data-toggle="modal"
							data-target="#myModal">
							<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
						</button>
					</li>
					<li class="dropdown" style="margin:0px 10px;">
						<button type="button" class="btn btn-default" onclick="Exist()"
							style="margin-top: 7px">
							<span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
						</button>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container-fliud">
		<div class="col-lg-1 col-sm-2 col-xs-3">
			<div class="btn-group-vertical" role="group" aria-label="...">
				<button type="button" class="btn btn-default"
					style="height: 50px; width: 100px"
					onclick="window.location.href='/apple/admini/backindex'">首页</button>
				<button type="button" class="btn btn-default"
					style="height: 50px; width: 100px"
					onclick="window.location.href='/apple/admini/goods'">商品</button>
				<button type="button" class="btn btn-default"
					style="height: 50px; width: 100px"
					onclick="window.location.href='/apple/admini/intoStore'">入库</button>
				<button type="button" class="btn btn-default"
					style="height: 50px; width: 100px"
					onclick="window.location.href='/apple/admini/stock'">库存</button>
				<button type="button" class="btn btn-default"
					style="height: 50px; width: 100px"
					onclick="window.location.href='/apple/admini/outStore'">出库</button>
				<button type="button" class="btn btn-default"
					style="height: 50px; width: 100px"
					onclick="window.location.href='/apple/admini/management'">用户管理</button>
				<button type="button" class="btn btn-default"
					style="height: 50px; width: 100px"
					onclick="window.location.href='/apple/admini/sort'">商品分类</button>
				<button type="button" class="btn btn-default"
					style="height: 50px; width: 100px"
					onclick="window.location.href='/apple/admini/statistics'">统计</button>
			</div>
		</div>
	</div>
	<div class="col-lg-11 col-sm-10 col-xs-9">
		<h1>
			<b>欢迎使用电子商城后台管理系统！</b>
		</h1>
	</div>

	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">用户登录</h4>
				</div>
				<div class="modal-body">
					<div>
						用户名：<input type='text' name="superadmininame" id="superadmininame"
							value="luoxujin" class='admini_name form-control' />
					</div>
					<br />
					<div>
						密码：<input type='password' name="superadminipassword"
							id="superadminipassword" value="123"
							class='ad_password form-control' />
					</div>
					<br />
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" id="login">登录</button>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
	<script src="https://cdn.staticfile.org/vue/2.2.2/vue.min.js"></script>
	<script
		src="https://cdn.staticfile.org/vue-resource/1.5.1/vue-resource.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#login").click(function() {
				var admininame = $("#superadmininame").val();
				var adminipassword = $("#superadminipassword").val();				
				if (admininame == ''|| adminipassword == '') {		
					alert("用户名或密码为空");		
				} else {													
					$.ajax({
						type : 'POST',
						async : false,
						dataType : "json",
						url : "/apple/adminiselect/checksuperadminilogin",
						data : {
							"superadmininame" : admininame,
							"superadminipassword" : adminipassword
						},
						success : function(result) {
							if (result.flag == true) {
								alert("登录成功");
								window.location.href = result.msg;
							} else {
								$.ajax({
											type : 'POST',
											async : false,
											dataType : "json",
											url : "/apple/adminiselect/checkadminilogin",
											data : {
												"admininame" : admininame,
												"adminipassword" : adminipassword
											},
											success : function(result) {
												if (result.flag == true) {
													alert("登录成功");
													window.location.href = result.msg;
												} else {
													alert(result.msg);
												}
											}
								});					
							}
						}
					});				
				}

			});							
		});											
																																		
	</script>
	<script type="text/javascript">
		function Exist() //声明标识符
		{
			if (confirm("是否确认退出？")) {
				 $.ajax({
		                type:'GET',
		                async:false,
		                url:"/apple/admini/loginOut",
		                success:function(result){
		                    if(result.flag==true){
		                    	alert("成功退出！");
// 		                        window.location.href = result.msg;
		                    }else{
		                        alert("您还未登录！");
		                    }
		                }
		            });
			}
		}
	</script>
</body>
</html>