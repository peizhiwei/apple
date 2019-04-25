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

    <body>
        <div class="container-fluid">
            <div class="row">
                <nav class="navbar navbar-default">
                    <div class="col-md-12">
                        <div class="row">

                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"
                                style="background:rgb(51, 51, 51);">
                                <div class="col-md-10 col-md-push-1">
                                    <ul class="nav navbar-nav" style="float:none;text-align:center;margin-right: 40px">
                                        <li style="float:none;display:inline-block;margin:0em;margin:0px 100px;"><a
                                                href="/apple/apple">
                                                <font color="white">首页</font>
                                            </a></li>
                                        <li style="float:none;display:inline-block;margin:0em;margin:0px 8px;"><a
                                                href="#">
                                                <font color="white">Mac</font>
                                            </a></li>
                                        <li style="float:none;display:inline-block;margin:0em;margin:0px 8px;"><a
                                                href="#">
                                                <font color="white">iPad</font>
                                            </a></li>
                                        <li style="float:none;display:inline-block;margin:0em;margin:0px 8px;"><a
                                                href="#">
                                                <font color="white">iPhone</font>
                                            </a></li>
                                        <li style="float:none;display:inline-block;margin:0em;margin:0px 8px;"><a
                                                href="#">
                                                <font color="white">Watch</font>
                                            </a></li>
                                        <li style="float:none;display:inline-block;margin:0em;margin:0px 8px;">
                                            <a href="#"><span class="glyphicon glyphicon-search" style="color:white;">
                                                </span></a></li>
                                        <li style="float:none;display:inline-block;margin:0em;margin:0px 8px;">
                                            <a href="#"><span class="glyphicon glyphicon-shopping-cart"
                                                    style="color:white;">
                                                </span></a></li>
                                                </ul>
                                </div>
                                <div class="col-md-2">
                                    <li style="float:right;display:inline-block;margin:0em;padding-top:14px;">
                                        <div>
                                            <div class="col-md-3 col-md-push-2">
                                                <img src="D:\杂\2042.jpg" alt="头像" class="img-circle"
                                                    style="height: 35px;width: 35px;margin-top: -5px"></div>
                                            <div class="col-md-9 col-md-push-1">
                                                    <ul class="nav navbar-nav navbar-right" style="margin-top:-13px">
                                            <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                            aria-haspopup="true" aria-expanded="false" >
                                            <font style="color:rgb(105, 105, 105)">没有好名字了</font><span class="caret"></span>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a href="#">我的中心</a></li>
                                            <li><a href="#">我的收藏</a></li>
                                            <li><a href="#">我看过的</a></li>
                                            <li role="separator" class="divider"></li>
                                            <li><a href="#">退出登录</a></li>
                                        </ul>
                                    </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    
            </div><!-- /.navbar-collapse -->
        </div>
        </div>
        </nav>
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
                            <a href="#"><img src="/img/imac.jpg" alt="First slide"></a>
                        </div>
                        <div class="item">
                            <a href="#"><img src="/img/iphone_xr1.png" alt="Second slide"></a>
                        </div>
                        <div class="item">
                            <a href="#"><img src="/img/airpods.jpg" alt="Third slide"></a>
                        </div>
                        <div class="item">
                            <a href="#"><img src="/img/Watch.jpg" alt="Four slide"></a>
                        </div>
                        <div class="item">
                            <a href="#"><img src="/img/ipadmini.jpg" alt="Five slide"></a>
                        </div>

                    </div>
                    <a class="carousel-control left" href="#myCarousel" data-slide="prev"> <span _ngcontent-c3=""
                            aria-hidden="true" class="glyphicon glyphicon-chevron-left"></span></a>
                    <a class="carousel-control right" href="#myCarousel" data-slide="next"><span _ngcontent-c3=""
                            aria-hidden="true" class="glyphicon glyphicon-chevron-right"></span></a>
                </div>

                <div class="row size1">
                    <a href="#"><img src="/img/ipxs1.png" alt=""></a>

                    <a href="#"><img src="/img/ipx1.png" alt=""></a>

                    <div class="col-xs-6 text-center">
                        <a href="#" class="size2" style="text-decoration: none;">
                            <h3>iPhone XS MAX</h3>
                        </a>
                        <a href="#" style="text-decoration: none;">
                            <font color="grey">64GB 金色</font>
                        </a><br>
                        <a href="#" style="text-decoration: none;">
                            <font color="grey">全网通（移动4G优先版）双卡双待</font>
                        </a><br>
                        <a href="#" style="text-decoration: none;">
                            <font color="red">
                                <h4>￥7599.00</h4>
                            </font>
                        </a>
                    </div>
                    <div class="col-xs-6 text-center">
                        <a href="#" class="size2" style="text-decoration: none;">
                            <h3>iPhone X</h3>
                        </a>
                        <a href="#" style="text-decoration: none;">
                            <font color="grey">128GB 深空灰色</font>
                        </a><br>
                        <a href="#" style="text-decoration: none;">
                            <font color="grey">全网通（移动4G优先版）双卡双待</font>
                        </a><br>
                        <a href="#" style="text-decoration: none;">
                            <font color="red">
                                <h4>￥6349.00</h4>
                            </font>
                        </a>
                    </div>
                </div>
                <div class="row size1">
                    <img src="/img/ipad1.png" alt="">
                    <img src="/img/ipadpro.png" alt="">
                    <div class="col-xs-6 text-center">
                        <a href="#" class="size2" style="text-decoration: none;">
                            <h3>iPad mini4</h3>
                        </a>
                        <a href="#" style="text-decoration: none;">
                            <font color="grey">128GB WLAN/A8 芯片/Touch ID</font>
                        </a><br>
                        <a href="#" style="text-decoration: none;">
                            <font color="grey">MK9Q2CH</font>
                        </a><br>
                        <a href="#" style="text-decoration: none;">
                            <font color="red">
                                <h4>￥2598.00</h4>
                            </font>
                        </a>
                    </div>
                    <div class="col-xs-6 text-center">
                        <a href="#" class="size2" style="text-decoration: none;">
                            <h3>iPad Air</h3>
                        </a>
                        <a href="#" style="text-decoration: none;">
                            <font color="grey">64GB WLAN/A12 芯片/Retina 显示屏</font>
                        </a><br>
                        <a href="#" style="text-decoration: none;">
                            <font color="grey">MUUL2CH/A</font>
                        </a><br>
                        <a href="#" style="text-decoration: none;">
                            <font color="red">
                                <h4>￥3896.00</h4>
                            </font>
                        </a>
                    </div>
                </div>
                <div class="row size1">
                    <img src="/img/Mac_air.png" alt="">
                    <img src="/img/Mac_pro.png" alt="">
                    <div class="col-xs-6 text-center">
                        <a href="#" class="size2" style="text-decoration: none;">
                            <h3>MacBook Air 13.3英寸</h3>
                        </a>
                        <a href="#" style="text-decoration: none;">
                            <font color="grey">i7/8GB/128GB</font>
                        </a><br>
                        <a href="#" style="text-decoration: none;">
                            <font color="grey">Z0UU00022</font>
                        </a><br>
                        <a href="#" style="text-decoration: none;">
                            <font color="red">
                                <h4>￥6899.00</h4>
                            </font>
                        </a>
                    </div>
                    <div class="col-xs-6 text-center">
                        <a href="#" class="size2" style="text-decoration: none;">
                            <h3>MacBook Pro 13.3英寸</h3>
                        </a>
                        <a href="#" style="text-decoration: none;">
                            <font color="grey">i5/8GB/256GB</font>
                        </a><br>
                        <a href="#" style="text-decoration: none;">
                            <font color="grey">MPXT2CH/A</font>
                        </a><br>
                        <a href="#" style="text-decoration: none;">
                            <font color="red">
                                <h4>￥10999.00</h4>
                            </font>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        </div>
        </div><!-- /.container-fluid -->

    </body>
</body>

</html>