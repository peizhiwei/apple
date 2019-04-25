<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>新增用户</title>

<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<script src=" https://cdn.staticfile.org/vue/2.2.2/vue.min.js"></script>

<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">


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
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<div class="container-fliud">

		<nav class="navbar navbar-default">
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
					<a class="navbar-brand"><span class="glyphicon glyphicon-globe"
						aria-hidden="true"></span><b>新增用户</b></a>
				</div>
		</nav>
		<div>
			<div class="btn-group col-xs-6" role="group" aria-label=""></div>
			<div class="col-xs-6 text-right">
				<button type="button" class="btn btn-default"
					onclick="window.location.href='/apple/admini/Management'">
					<span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span>取消
				</button>
				<button type="button" class="btn btn-default"  id="sure">
					<span class="glyphicon glyphicon-ok-sign" aria-hidden="true">确认</span>
				</button>
			</div>
		</div>
		&nbsp;&nbsp;

		<div class="container">
			<div class="row">
				<div class="col-xs-2 col-sm-3 col-md-4"></div>
				<div class="col-xs-8 col-sm-6 col-md-5">
					<div class="blank-line"></div>
					<div class="blank-line"></div>
					<div class="form-group">
						<label for="adminiName"> 用户名： </label> <input name="adminiName" type="text"
							class="form-control" id="adminiName">
					</div>
					<div class="form-group">
						<label for="adPassword"> 用户密码： </label> <input name="adPassword" type="password"
							class="form-control" id="adPassword">
                    </div>
                   <div class="form-group">
						<label for="adPassword1"> 确认密码： </label> <input name="adPassword1" type="password"
							class="form-control" id="adPassword1">
                    </div>
				</div>
				<div class="col-xs-2 col-sm-3 col-md-3"></div>
			</div>
		</div>
		
		<script type="text/javascript">
		$(document).ready(function(){
	        $("#sure").click(function(){
	        	 var adminiName = $("#adminiName").val();
	             var adPassword = $("#adPassword").val();
	             if(adminiName=='' || adPassword==''){
	            	 alert("用户名或密码为空");
	             }else{
	            	 $.ajax({
	                     type:'POST',
	                     async:false,
	                     dataType:"json",
	                     url:"/apple/admini/addAdmini",
	                     data:{"adminiName":adminiName,"adPassword":adPassword},
	                     success:function(result){
	                         if(result.flag==true){
	                             alert("添加用户成功！");
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