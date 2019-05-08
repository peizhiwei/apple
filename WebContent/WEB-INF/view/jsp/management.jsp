<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>用户管理</title>
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

				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<div class="container-fliud" id="app">
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
					onclick="window.location.href='/apple/admini/intostore'">入库</button>
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
		<div div class="col-lg-11 col-sm-10 col-xs-9">
			<ol class="breadcrumb">
				<li><a
					href="file:///C:/Users/Administrator/Desktop/管理/index.html"><span
						class="glyphicon glyphicon-home" aria-hidden="true"></span>首页</a></li>
				<li class="active">用户管理</li>
			</ol>
			<div>
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1"
								aria-expanded="false">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<a class="navbar-brand"><span
								class="glyphicon glyphicon-globe" aria-hidden="true"></span><b>用户管理</b></a>
						</div>
					</div>
				</nav>
				<div>
					<div class="btn-group col-xs-6" role="group" aria-label=""></div>
					<div class="col-xs-6 text-right">
						<button type="button" class="btn btn-default"
							onclick="window.location.href='/apple/admini/addadmini'">
							<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
						</button>

						<button type="button" class="btn btn-default" onclick="MsgBox()">
							<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
						</button>

					</div>
				</div>
				&nbsp;&nbsp; &nbsp;&nbsp;
				<div class="container">
					<table class="table table-striped table-bordered table-hover"
						id="mydiv">
						<thead>
							<tr>
							<th><input type="checkbox" id="all" onchange="changeAll()"></th>
								<th>ID</th>
								<th>用户名</th>
								<th>用户密码</th>
								
							</tr>
						</thead>
						<tbody>
							<tr v-for="i in adminList">
							<td><input type="checkbox" name="each"></td>
								<td>{{i.id}}</td>
								<td>{{i.adminiName}}</td>
								<td>{{i.adminiPassword}}</td>
								
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
	<script src="https://cdn.staticfile.org/vue/2.2.2/vue.min.js"></script>
	<script src="https://cdn.staticfile.org/vue-resource/1.5.1/vue-resource.min.js"></script>

	<script language="javascript">
		function MsgBox() //声明标识符
		{
			var usernames = []; 
			//var passwords = []; 
			var tbodyObj = document.getElementById('mydiv');
	        $("table :checkbox").each(function(key,value){
	            if($(value).prop('checked')){
	            	usernames.push(tbodyObj.rows[key].cells[2].innerHTML);
	            	//passwords.push(tbodyObj.rows[key].cells[2].innerHTML);
	            }
	        })
	        if(usernames == false){
	        	alert("没有可删除的记录，请先选中！");
	        }else{
	        	if(confirm("是否确认删除？")){
	        		var b = usernames.join(",")
	        		 $.ajax({
	                     type:'POST',
	                     async:false,
	                     dataType:"json",
	                     url:"/apple/adminidelete/deleteAdminis",
	                     data:{"adminiName":b},
	                     success:function(result){
	                         if(result.flag==true){
	                        	 //alert("登录成功");
	                             window.location.href = result.msg;
	                         }else{
	                             alert(result.msg);
	                         }
	                     }
	                 });
	        	}
	        }
		}

		function changeAll() {
			var sall = document.getElementById("all"); //获取标题栏中的操作对象
			var seach = document.getElementsByName("each"); //获取内容栏的对象
			for (var i = 0; i < seach.length; i++) {
				if (sall.checked) {
					seach[i].checked = true;
				} else {
					seach[i].checked = false;
				}
			}
		}
	</script>

	<script>
		var app = new Vue(
				{
					el : '#app',
					data : {
						adminList : []
					},
					mounted : function() {
						this.getadminiList();
					},
					methods : {
						getadminiList : function() {
							this.$http.get("http://localhost:8080/apple/adminiselect/getalladmini").then(
									function(res) {
										this.adminList = JSON.parse(res.bodyText);
									}, function() {
										console.log('请求失败处理');
									});
						}
					}

				})
	</script>
</body>
</html>