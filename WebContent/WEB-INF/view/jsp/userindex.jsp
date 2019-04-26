<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>首页</title>
   <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <script src=" https://cdn.staticfile.org/vue/2.2.2/vue.min.js"></script>

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">

<style>
.container-fulid {
	width: 100%;
	text-align: center;
}

.size {
	width: 1000px;
	margin: 0 auto;
	margin-top: -21px;
}

.size1 {
	width: 1000px;
	margin: 0 auto;
	padding-left: 20px;
}

.size2 {
	color: black;
	text-decoration: none;
}

.size3 {
	text-decoration: none;
}

.color1 {
	color: white;
}
</style>
</head>

<body>
	<div class="container-fluid">
		<div class="row">
			<nav class="navbar navbar-default">
				<div class="col-md-12">
					<div class="row">
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="background: rgb(51, 51, 51);">
							<div class="col-md-10 col-md-push-1">
								<ul class="nav navbar-nav" style="float: none; text-align: center; margin-right: 40px">
									<li style="float: none; display: inline-block; margin: 0em; margin: 0px 100px;">
									   <a href="/apple/apple"> <font color="white">首页</font></a>
									</li>
									<li style="float: none; display: inline-block; margin: 0em; margin: 0px 8px;">
									   <a href="#"> <font color="white">Mac</font></a>
									</li>
									<li style="float: none; display: inline-block; margin: 0em; margin: 0px 8px;">
									   <a href="#"> <font color="white">iPad</font></a>
									</li>
									<li style="float: none; display: inline-block; margin: 0em; margin: 0px 8px;">
									   <a href="#"> <font color="white">iPhone</font></a>
									</li>
									<li style="float: none; display: inline-block; margin: 0em; margin: 0px 8px;">
									   <a href="#"> <font color="white">Watch</font></a>
									</li>
									<li style="float: none; display: inline-block; margin: 0em; margin: 0px 8px;">
										<a href="#"><span class="glyphicon glyphicon-search" style="color: white;"></span></a>
									</li>
									<li style="float: none; display: inline-block; margin: 0em; margin: 0px 8px;">
										<a href="#"><span class="glyphicon glyphicon-shopping-cart" style="color: white;"></span></a>
									</li>
								</ul>
							</div>
							<div class="col-md-2">
									<div>
										<div class="col-md-3 col-md-push-2">
											<img src="/apple/static/img/set.svg" alt="头像" class="img-circle" style="height: 35px; width: 35px; margin-top: -5px">
										</div>
										<div class="col-md-9 col-md-push-1">
											<ul class="nav navbar-nav navbar-right" style="margin-top: -13px">
												<li class="dropdown">
												    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
														<font style="color: rgb(105, 105, 105)">没有好名字了</font>
														<span class="caret"></span>
												    </a>
													<ul class="dropdown-menu">
														<li><a href="#" onclick="window.location.href = '/apple/user/selfcenter'">我的中心</a></li>
														<li><a href="#">我的收藏</a></li>
														<li><a href="#">我看过的</a></li>
														<li role="separator" class="divider"></li>
														<li><a href="#" onclick="window.location.href = '/apple/user/index'">退出登录</a></li>
													</ul>
												</li>
											</ul>
										</div>
									</div>
							</div>
						</div>

					</div>
				</div>
		      </nav>
		</div>
		
		<div class="row size" id="index">
			<div class="col-md-12">
				<div id="myCarousel" class="carousel slide" style="width: 1000px;">
					<!-- 轮播（Carousel）指标 -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
						<li data-target="#myCarousel" data-slide-to="3"></li>
						<li data-target="#myCarousel" data-slide-to="4"></li>
					</ol>
					<!-- 轮播（Carousel）项目 -->
					<div class="carousel-inner">
						<div class="item active">
							<a href="https://item.jd.com/100004311104.html"><img
								src="/apple/static/img/imac.jpg" alt="First slide"></a>
						</div>
						<div class="item">
							<a href="https://item.jd.com/100000177756.html"><img
								src="/apple/static/img/iphone_xr1.png" alt="Second slide"></a>
						</div>

						<div class="item">
							<a href="https://item.jd.com/100004325478.html"><img
								src="/apple/static/img/airpods.jpg" alt="Third slide"></a>
						</div>
						<div class="item">
							<a href="https://item.jd.com/100000384103.html"><img
								src="/apple/static/img/Watch.jpg" alt="Four slide"></a>
						</div>
						<div class="item">
							<a href="https://item.jd.com/100004245972.html"><img
								src="/apple/static/img/ipadmini.jpg" alt="Five slide"></a>
						</div>

					</div>
					<a class="carousel-control left" href="#myCarousel"
						data-slide="prev"> <span _ngcontent-c3="" aria-hidden="true"
						class="glyphicon glyphicon-chevron-left"></span></a> <a
						class="carousel-control right" href="#myCarousel"
						data-slide="next"><span _ngcontent-c3="" aria-hidden="true"
						class="glyphicon glyphicon-chevron-right"></span></a>
				</div>

				<div class="row size1">
					<div class="col-xs-6 text-center" v-for="details in detailslist">
						<a href="https://item.jd.com/100001860773.html" class="size2"
                            style="text-decoration: none;">
                            <img alt="" v-bind:src="details.img">
                        </a>
						<a href="https://item.jd.com/100001860773.html" class="size2"
							style="text-decoration: none;">
							<h3>{{details.name}}</h3>
						</a>
						<a href="https://item.jd.com/100001860773.html"
							style="text-decoration: none;"> <font color="grey">{{details.specs}}</font>
						</a><br>
						<a href="https://item.jd.com/100001860773.html"
							style="text-decoration: none;"> <font color="grey">{{details.details}}</font>
						</a><br>
						<a href="https://item.jd.com/100001860773.html"
							style="text-decoration: none;"> 
						<font color="red">
								<h4>{{details.price}}</h4>
						</font>
						</a>
					</div>

				</div>

			</div>
		</div>
	</div>
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.staticfile.org/vue/2.2.2/vue.min.js"></script>
    <script src="https://cdn.staticfile.org/vue-resource/1.5.1/vue-resource.min.js"></script>
	<script>
		var app = new Vue({
			el : '#index',
			data : {
				detailslist : []
			},
			mounted:function() { //钩子函数
				this.get();
			},
			methods:{
                //发送get请求
                get:function(){
                	this.$http.get("http://localhost:8080/apple/admini/getgooodstoindex").then(function(res){
                        console.log(res);
                        this.detailslist = JSON.parse(res.bodyText);
                    },function(){
                        console.log('请求失败处理');
                    });
                }
            }
		})
	</script>
</body>
</html>