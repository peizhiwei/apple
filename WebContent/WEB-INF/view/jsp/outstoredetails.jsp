<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>出库详情</title>

<link rel="stylesheet"
	href="./bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link href="./css/bootstrap.min.css" rel="stylesheet">


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
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"><span class="glyphicon glyphicon-user"
							aria-hidden="true"></span> <span class="caret"></span></a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fliud">
		<div>
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand"><span
							class="glyphicon glyphicon-globe" aria-hidden="true"></span><b>出库详情</b></a>
					</div>
				</div>
			</nav>
			<div>
				<div class="btn-group col-xs-6" role="group" aria-label=""></div>
				<div class="col-xs-6 text-right">
					<button type="button" class="btn btn-default"
						onclick="window.location.href='/apple/admini/OutStore'">
						<span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span>取消
					</button>
					<button type="button" class="btn btn-default">
						<span class="glyphicon glyphicon-ok-sign" aria-hidden="true"></span>确认
					</button> 
				</div>
			</div>
			&nbsp;&nbsp;
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-xs-2 col-sm-3 col-md-4"></div>
			<div class="col-xs-8 col-sm-6 col-md-5">
				<div class="blank-line"></div>
				<div class="blank-line"></div>
				<div class="form-group">
					<label for="number"> 商品名称： </label> <input type="text"
						class="form-control" id="number">
				</div>
				<div class="form-group">
					<label for="name"> 总数量： </label> <input type="text"
						class="form-control" id="name">
				</div>
				<div class="form-group">
					<label for="size"> 单位： </label> <input type="text"
						class="form-control" id="size">
				</div>
			</div>
			<div class="col-xs-2 col-sm-3 col-md-3"></div>
		</div>
	</div>
</body>

</html>