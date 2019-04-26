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
.container-fulid{
    width:100%;
    text-align:center;          
}
.size{
    width: 1000px;
    margin: 0 auto;
    margin-top: -21px;
}
.size1{
    width: 1000px;
    margin: 0 auto;
    padding-left: 20px;
}
.size2{
    color: black;
    text-decoration: none;
}
.size3{
    text-decoration: none;
}

.color1{
    color: white;  
}
        
</style>
</head>
<body>
    <div class="container-fluid" id="index">
        <div class="row" id>
            <nav class="navbar navbar-default" style="background:rgb(51, 51, 51);">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <ul class="dropdown-menu pull-right" id="bs-example-navbar-collapse-1"
                        style="float:none;background:rgb(51, 51, 51);">
                        <li role="separator" class="divider" style="border:1px solid rgb(68, 68, 68);"></li>
                        <li><a href="#">
                                <font color="white">Mac</font>
                            </a></li>
                        <li role="separator" class="divider" style="border:1px solid rgb(68, 68, 68);"></li>
                        <li><a href="#">
                                <font color="white">iPad</font>
                            </a></li>
                        <li role="separator" class="divider" style="border:1px solid rgb(68, 68, 68);"></li>
                        <li><a href="#">
                                <font color="white">iPhone</font>
                            </a></li>
                        <li role="separator" class="divider" style="border:1px solid rgb(68, 68, 68);"></li>
                        <li><a href="#">
                                <font color="white">Watch</font>
                            </a></li>
                    </ul>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav" style="float:none;text-align:center;">

                        <li style="float:none;display:inline-block;margin:0em;margin:0px 60px;"><a
                                href="#">
                                <font color="white">首页</font>
                            </a></li>
                        <li style="float:none;display:inline-block;margin:0em;margin:0px 8px;"><a href="#">
                                <font color="white">Mac</font>
                            </a></li>
                        <li style="float:none;display:inline-block;margin:0em;margin:0px 8px;"><a href="#">
                                <font color="white">iPad</font>
                            </a></li>
                        <li style="float:none;display:inline-block;margin:0em;margin:0px 8px;"><a href="#">
                                <font color="white">iPhone</font>
                            </a></li>
                        <li style="float:none;display:inline-block;margin:0em;margin:0px 8px;"><a href="#">
                                <font color="white">Watch</font>
                            </a></li>
                        <li style="float:none;display:inline-block;margin:0em;margin:0px 8px;">
                            <a href="#"><span class="glyphicon glyphicon-shopping-cart"
                                    style="color:white;padding-right: 4px;">
                                </span>
                                <font color="white">购物车</font>
                            </a></li>

                        <li style="float: right;"><a href="#">
                                <font color="white">登录/注册</font>
                            </a></li>
                    </ul>
                </div>
            </nav>
        </div>

        <div class="row size">
            <div class="col-md-12">
                <div id="myCarousel" class="carousel slide" style="width:1000px;">
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
                            <a href="https://item.jd.com/100004311104.html"><img src="/apple/static/img/imac.jpg"
                                    alt="First slide"></a>
                        </div>
                        <div class="item">
                            <a href="https://item.jd.com/100000177756.html"><img src="/apple/static/img/iphone_xr1.png"
                                    alt="Second slide"></a>
                        </div>
                        <div class="item">
                            <a href="https://item.jd.com/100004325478.html"><img src="/apple/static/img/airpods.jpg"
                                    alt="Third slide"></a>
                        </div>
                        <div class="item">
                            <a href="https://item.jd.com/100000384103.html"><img src="/apple/static/img/Watch.jpg"
                                    alt="Four slide"></a>
                        </div>
                        <div class="item">
                            <a href="https://item.jd.com/100004245972.html"><img src="/apple/static/img/ipadmini.jpg"
                                    alt="Five slide"></a>
                        </div>

                    </div>
                    <a class="carousel-control left" href="#myCarousel" data-slide="prev"> <span _ngcontent-c3=""
                            aria-hidden="true" class="glyphicon glyphicon-chevron-left"></span></a>
                    <a class="carousel-control right" href="#myCarousel" data-slide="next"><span _ngcontent-c3=""
                            aria-hidden="true" class="glyphicon glyphicon-chevron-right"></span></a>
                </div>
            </div>
        </div>

        <div class="row size1">

            <div class="col-xs-6 text-center" v-for="details in detailslist">
              
                <a href="https://item.jd.com/100001860773.html" class="size2" style="text-decoration: none;">
                    <h3>{{details.name}}</h3>
                </a>
                <a href="https://item.jd.com/100001860773.html" style="text-decoration: none;">
                    <font color="grey">{{details.specs}}</font>
                </a><br>
                <a href="https://item.jd.com/100001860773.html" style="text-decoration: none;">
                    <font color="grey">{{details.specs2}}</font>
                </a><br>
                <a href="https://item.jd.com/100001860773.html" style="text-decoration: none;">
                    <font color="red">
                        <h4>{{details.price}}</h4>
                    </font>
                </a>

            </div>
        </div>
    </div>

    <script>
        var app = new Vue({
            el: '#index',
            data: {
            	
                detailslist: [{
                    name:'iPhone XS MAX',
                    specs:'64GB 金色',
                    specs2:'全网通（移动4G优先版）双卡双待',
                    price:'￥7599'
                },{
                    name:'iPhone X',
                    specs:'128GB 深空灰色',
                    specs2:'移动联通电信4G手机',
                    price:'￥6349'
                },{
                    name:'iPad mini4',
                    specs:'128GB WLAN/A8 芯片/Touch ID',
                    specs2:'MK9Q2CH',
                    price:'￥2598'
                },{
                    name:'iPad Air',
                    specs:'64GB WLAN/A12 芯片/Retina 显示屏',
                    specs2:'MUUL2CH/A',
                    price:'￥3896'
                },{
                    name:'MacBook Air 13.3英寸',
                    specs:'i7/8GB/128GB',
                    specs2:'Z0UU00022',
                    price:'￥6899'
                },{
                    name:'MacBook Pro 13.3英寸',
                    specs:'i5/8GB/256GB',
                    specs2:'MPXT2CH/A',
                    price:'￥10999'
                }]
            }
        })
    </script>
</body>
</html>