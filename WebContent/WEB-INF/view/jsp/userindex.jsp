<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>首页</title>

<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">

<style>
.container-fulid {
	width: 100%;
	text-align: center;
}

.Carousel_size{
    margin-top: -21px;
}

.goods_size{        
    color: black;
    text-decoration: none;
}
body{
	background-color: rgb(245,245,245);
}
</style>
</head>

<body>
	<div class="container-fluid" id="app">
		<div class="row">
			<nav class="navbar navbar-default"
				style="background: rgb(51, 51, 51);">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<ul class="dropdown-menu pull-right"
						id="bs-example-navbar-collapse-1"
						style="float: none; background: rgb(51, 51, 51);">
						<li role="separator" class="divider"
							style="border: 1px solid rgb(68, 68, 68);"></li>
						<li><a href="#"> <font color="white">Mac</font>
						</a></li>
						<li role="separator" class="divider"
							style="border: 1px solid rgb(68, 68, 68);"></li>
						<li><a href="#"> <font color="white">iPad</font>
						</a></li>
						<li role="separator" class="divider"
							style="border: 1px solid rgb(68, 68, 68);"></li>
						<li><a href="#"> <font color="white">iPhone</font>
						</a></li>
						<li role="separator" class="divider"
							style="border: 1px solid rgb(68, 68, 68);"></li>
						<li><a href="#"> <font color="white">Watch</font>
						</a></li>
					</ul>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse">
					<div class="col-md-10 col-md-push-1">
						<ul class="nav navbar-nav"
							style="float: none; text-align: center;">
							<li
								style="float: none; display: inline-block; margin: 0em; margin: 0px 60px;"><a
								href="#" onclick="window.location.href='/apple/user/userindex'">
									<font color="white">首页</font>
							</a></li>
							<li
								style="float: none; display: inline-block; margin: 0em; margin: 0px 8px;"><a
								href="#"> <font color="white">Mac</font>
							</a></li>
							<li
								style="float: none; display: inline-block; margin: 0em; margin: 0px 8px;"><a
								href="#"> <font color="white">iPad</font>
							</a></li>
							<li
								style="float: none; display: inline-block; margin: 0em; margin: 0px 8px;"><a
								href="#"> <font color="white">iPhone</font>
							</a></li>
							<li
								style="float: none; display: inline-block; margin: 0em; margin: 0px 8px;"><a
								href="#"> <font color="white">Watch</font>
							</a></li>
							<li
								style="float: none; display: inline-block; margin: 0em; margin: 0px 8px;">
								<a href="#"><span class="glyphicon glyphicon-shopping-cart"
									style="color: white; padding-right: 4px;"> </span> <font
									color="white" onclick="window.location.href='/apple/user/shoppingcart'">购物车</font> </a>
							</li>
						</ul>
					</div>
					<div class="col-md-2">
                        <div class="col-md-9 col-md-push-2">
							<ul class="nav navbar-nav navbar-right">
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="false"> 
									<font style="color: rgb(105, 105, 105)" v-if="userdetails.userNickName==null||userdetails.userNickName==''">{{userdetails.userName}}</font> 
									<font style="color: rgb(105, 105, 105)" v-else>{{userdetails.userNickName}}</font>
									<span class="caret"></span>
								</a>
									<ul class="dropdown-menu">
										<li><a href="#"
											onclick="window.location.href = '/apple/user/selfcenter'">我的中心</a></li>
										<li><a href="#">我的收藏</a></li>
										<li><a href="#">我看过的</a></li>
										<li role="separator" class="divider"></li>
										<li><a href="#" id="loginout">退出登录</a></li>
									</ul></li>
							</ul>
						</div>
						
						
						<div class="col-md-3 col-md-push-1" v-if="userdetails.userImg==''||userdetails.userImg==null">
							<img src="/apple/static/img/imgnull.jpg" alt="" class="img-circle"
								style="height: 35px; width: 35px; margin-top: 8px">
						</div>
						<div class="col-md-3 col-md-push-1" v-else>
                            <img :src="userdetails.userImg" alt="" class="img-circle"
                                style="height: 35px; width: 35px; margin-top: 8px">
                        </div>
					</div>
				</div>
			</nav>
		</div>

		<!--Carousel(轮播图)-->
        <div class="row Carousel_size">
        	<div class="col-md-1"></div>
            <div class="col-md-10">
                <div id="myCarousel" class="carousel slide" >
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
                            <a href="https://item.jd.com/100004311104.html"><img src="/apple/static/img/轮播1.jpg"
                                    alt="First slide"></a>
                        </div>
                        <div class="item">
                            <a href="https://item.jd.com/100000177756.html"><img src="/apple/static/img/轮播2.jpg"
                                    alt="Second slide"></a>
                        </div>
                        <div class="item">
                            <a href="https://item.jd.com/100004325478.html"><img src="/apple/static/img/轮播3.jpg"
                                    alt="Third slide"></a>
                        </div>
                        <div class="item">
                            <a href="https://item.jd.com/100000384103.html"><img src="/apple/static/img/轮播4.jpg"
                                    alt="Four slide"></a>
                        </div>
                        
                    </div>
                    <a class="carousel-control left" href="#myCarousel" data-slide="prev"> <span _ngcontent-c3=""
                            aria-hidden="true" class="glyphicon glyphicon-chevron-left"></span></a>
                    <a class="carousel-control right" href="#myCarousel" data-slide="next"><span _ngcontent-c3=""
                            aria-hidden="true" class="glyphicon glyphicon-chevron-right"></span></a>
                </div>
                    <div id="myTabContent" class="tab-content" v-for="details in detailslist">
                         <div class="thumbnail tab-pane fade in active text-center col-md-3 col-sm-4 col-xs-6" v-if="details.upshelf==true">
                                    <a class="goods_size"
                                style="text-decoration: none;" onclick="window.location.href='/apple/user/details'">
                                <img alt="" v-bind:src="details.img">
                            </a>
                            <a class="goods_size" onclick="window.location.href='/apple/user/details'" style="text-decoration: none;">
                                <h3>{{details.name}}</h3>
                            </a>
                            <a onclick="window.location.href='/apple/user/details'"
                                style="text-decoration: none;"> <font color="grey">{{details.specs}}</font>
                            </a><br>
                            <a onclick="window.location.href='/apple/user/details'"
                                style="text-decoration: none;"> <font color="grey">{{details.details}}</font>
                            </a><br>
                            <a onclick="window.location.href='/apple/user/details'"
                                style="text-decoration: none;"> 
                            <font color="red">
                                    <h4>￥{{details.price}}</h4>
                            </font>
                            </a>
                            <!-- Indicates a dangerous or potentially negative action -->
							<button type="button" class="btn btn-danger" @click="addshoppingcart(details.id)">加入购物车</button>
                         </div>
                     </div>
                 </div>
                 <div class="col-md-1"></div>
        </div>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
	<script src="https://cdn.staticfile.org/vue/2.2.2/vue.min.js"></script>
	<script src="https://cdn.staticfile.org/vue-resource/1.5.1/vue-resource.min.js"></script>
	<script>
		var app = new Vue({
			el : '#app',
			data : {
				detailslist : [],
				userdetails : ""
			},
			mounted : function() { //钩子函数
				this.get();
			    this.getUserdetails();
			},
			methods : {
				//发送get请求
				get : function() {
					this.$http.get("http://localhost:8080/apple/adminiselect/getallgoods").then(function(res) {
						this.detailslist = JSON.parse(res.bodyText);
					}, function() {
						console.log('请求失败处理');
					}); 
				},
				getUserdetails : function() {
                    this.$http.get("http://localhost:8080/apple/user/getuserdetails").then(function(userdata){
                        this.userdetails=JSON.parse(userdata.bodyText);
                    },function(){
                        console.log("请求失败处理");
                    });
                },
                //加入购物车
                addshoppingcart : function(id){
                	var goodsId = id;
                	var userId = this.userdetails.id;
                	this.$http.post("http://localhost:8080/apple/userinsert/addshoppingcart",{userId:userId,goodsId:goodsId},{emulateJSON:true}).then(function(res){
                        alert("已添加");
                    },function(){
                        console.log("请求失败处理");
                    });
                }
			}
		});
	</script>
	<script type="text/javascript">
		$(document).ready(function(){
	        $("#loginout").click(function(){
	            $.ajax({
	                type:'GET',
	                async:false,
	                url:"/apple/user/loginOut",
	                success:function(result){
	                    if(result.flag==true){
	                        window.location.href = result.msg;
	                    }else{
	                        alert("错误");
	                    }
	                }
	            });
	        });
	    }); 
	</script>
</body>
</html>