<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>库存</title>

<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">


</head>

<body>
<div id="app">
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

	<div class="container-fliud">
		<div class="col-lg-1 col-sm-2 col-xs-3">
			<div class="btn-group-vertical" role="group" aria-label="...">
			<button type="button"
                        class="btn btn-default" style="height:50px;width:100px" onclick="window.location.href='/apple/admini/backindex'">首页</button>
				<button type="button"
                        class="btn btn-default" style="height:50px;width:100px" onclick="window.location.href='/apple/admini/goods'">商品</button>
                <button type="button"
                        class="btn btn-default" style="height:50px;width:100px" onclick="window.location.href='/apple/admini/intostore'">入库</button>
                <button type="button"
                        class="btn btn-default" style="height:50px;width:100px" onclick="window.location.href='/apple/admini/stock'">库存</button>
                <button type="button"
                        class="btn btn-default" style="height:50px;width:100px" onclick="window.location.href='/apple/admini/outStore'">出库</button>
                <button type="button"
                        class="btn btn-default" style="height:50px;width:100px" onclick="window.location.href='/apple/admini/management'">用户管理</button>
                <button type="button"
                        class="btn btn-default" style="height:50px;width:100px" onclick="window.location.href='/apple/admini/sort'">商品分类</button>
                <button type="button"
                        class="btn btn-default" style="height:50px;width:100px" onclick="window.location.href='/apple/admini/statistics'">统计</button>
			</div>
		</div>
		<div class="col-lg-11 col-sm-10 col-xs-9">
			<ol class="breadcrumb">
				<li><a
					href="file:///C:/Users/Administrator/Desktop/管理/index.html"><span
						class="glyphicon glyphicon-home" aria-hidden="true"></span>首页</a></li>
				<li class="active">库存管理</li>
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
								class="glyphicon glyphicon-globe" aria-hidden="true"></span><b>库存管理</b></a>
						</div>
					</div>
				</nav>
				<div>
					<div class="btn-group col-xs-6" role="group" aria-label=""></div>
					<div class="col-xs-6 text-right">
						<button type="button" class="btn btn-default" onclick="window.location.href='/apple/admini/intostore'">
							<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
						</button>
						<button type="button" class="btn btn-default">
							<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
						</button>
					</div>
				</div>
				&nbsp;&nbsp;
				<div class="container">
					<form class="form-inline">
						<div class="form-group">
							<label for="exampleInputName2">商品编号:</label> <input type="text"
								v-model="inputNumber" class="form-control" id="exampleInputName2"
								placeholder="请输入商品编号">
						</div>
						<div class="form-group"></div>
						<button type="button" class="btn btn-default"><span class="glyphicon glyphicon-search"
                                aria-hidden="true" name="search"></span>搜索</button>
					</form>
				</div>
				&nbsp;&nbsp;
				<div class="container">
					<table class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
							<th><input type="checkbox"></th>
								<th>商品编号</th>
								<th>商品名称</th>
								<th>价格</th>
								<th>规格</th>
								<th>库存</th>
								<th>分类</th>
								<th>商品详情</th>
								<th>图片</th>
								<th>入库日期</th>
								<th>入库者</th>
							</tr>
						</thead>
						<tbody>
							<tr v-for="(i,k) in sotrelist">
                            <td><input type="checkbox" :value="i.id"></td>
								<td>{{i.goods.number}}</td>
								<td>{{i.goods.name}}</td>
								<td>{{i.goods.price}}</td>
								<td>{{i.goods.specs}}</td>
								<td>{{i.amount}}</td>
								<td>{{i.goods.type.typeName}}</td>
								<td>{{i.goods.details}}</td>
								<td><img alt="" :src="i.goods.img" style="height: 70px;width: 50px;"></td>
								<td>{{i.date}}</td>
								<td>{{i.admini==null?i.superadmini.superAdminiName:i.admini.adminiName}}</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

	<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<script	src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
	<script src="https://cdn.staticfile.org/vue/2.2.2/vue.min.js"></script>
	<script src="https://cdn.staticfile.org/vue-resource/1.5.1/vue-resource.min.js"></script>

	<script>
	var app = new Vue({
        el: '#app',
        data: {
        	inputNumber:"",
            sotrelist:[]
        },
        mounted:function() { //钩子函数
            this.get();
        },
        methods:{
        	//获取库存信息显示在页面
        	get:function(){
        		this.$http.get("http://localhost:8080/apple/adminiselect/getallsotre").then(function(res){
        			this.sotrelist=res.body;
        		},function(){
        			console.log("请求失败处理");
        		});
        	}
        }
    });
    </script>
</body>
</html>
