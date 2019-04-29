<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        .li_size {
            height: 27px;
        }

        .details dl dt {
            line-height: 28px;
            font-size: 14px;
            font-weight: lighter;
        }

        .tm-action {
            color: grey;
            font-size: 14px;
        }
    </style>
</head>

<body>

    <div class="container-fluid" id="details">
        <div class="row li_size" style="background:rgb(242, 242, 242)">
            <div class="col-md-2 col-xs-2"></div>
            <div class="col-md-4">
                <ul style="list-style:none;height: 27px;">
                    <li style=" display:inline;line-height:27px;height: 27px;">
                        <a href="" style="text-decoration:none;color: grey">
                            <span class="glyphicon glyphicon-home" aria-hidden="true"
                                style="color:red;margin:0px 2px;"></span>首页</a>

                    </li>
                    <li style=" display:inline;line-height:27px;margin:0px 10px;">
                        <a href="" style="text-decoration:none;color: grey">Hello,欢迎来到手机商城</a>
                    </li>
                    <li style=" display:inline;line-height:27px;margin:0px 10px;">
                        <a href="" style="text-decoration:none;color: grey">请登录</a>
                    </li>
                    <li style=" display:inline;line-height:27px;margin:0px 10px;">
                        <a href="" style="text-decoration:none;color: grey">免费注册</a>
                    </li>
                </ul>
            </div>
            <div class="col-md-3"></div>
            <div class="col-md-3">
                <ul style="list-style:none;height: 27px;">
                    <li style=" display:inline;line-height:27px;height: 27px;">
                        <a href="" style="text-decoration:none;color: grey">
                            我的商城</a>

                    </li>
                    <li style=" display:inline;line-height:27px;margin:0px 20px;">
                        <a href="" style="text-decoration:none;color: grey">
                            <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"
                                style="color:red;"></span>购物车</a>
                    </li>

                </ul>
            </div>
        </div>
        <div class="row">
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

                        <li style="float:none;display:inline-block;margin:0em;margin:0px 60px;">
                        	<a onclick="window.location.href='/apple/user/index'">
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
        <br>
        <div class="row">
            <div class="col-md-2 col-xs-2"></div>
            <div class="col-md-3 col-xs-3" style="border:1px solid grey;"><img src="/apple/static/img/goodsdetails01.jpg"
                    class="img-responsive" alt="Responsive image"></div>
            <div class="col-md-4 col-xs-4">

                <div>
                    <a href="" style="text-decoration: none;color: black;font-size: 20px;"><strong>Apple/苹果 iPhone XS
                            Max</strong></a>
                </div><br>
                <p style="background:rgb(240,239,239)">价格：<strong style="color:red;font-size:30px;">￥10499</strong></p>
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover" cellpadding="0" cellspacing="0"
                        style="border:0px solid #000000;">
                        <tbody>
                            <tr v-for="details in detailslist">
                                <td>{{details.name}}</td>
                                <td>{{details.sort}}</td>
                            </tr>
                        </tbody>


                    </table>
                </div>
                <div>
                    <div class="text-center">
                        <button type="button" class="btn btn-primary btn-lg"
                            style="width:200px;margin: 0 20px;">立即购买</button>
                        <button type="button" class="btn btn-default btn-lg"
                            style="width:200px;margin: 0 10px;">加入购物车</button>
                    </div>
                </div>
            </div>
        </div>

        <br>

        <div class="row">
            <div class="col-md-2 col-xs-2"></div>
            <div class="col-md-2 col-xs-2 tm-action">
                <span class="glyphicon glyphicon-share" aria-hidden="true" style="margin:0px 30px;">分享</span>
                <span class="glyphicon glyphicon-star" aria-hidden="true" style="margin:0px 10px;">收藏商品</span>
            </div>
        </div>

        <br>
        <div class="row">
            <div class="col-md-2 col-xs-2"></div>
            <div class="col-md-2 col-xs-2 details" style="border:1px solid rgb(242, 242, 242);">
                <div style="background:rgb(242, 242, 242);font-size: 20px;">Apple产品与配件</div>
                <br>
                <dl>
                    <dt style="border-bottom: 1px solid #999;">Mac</dt>
                    <dt>MacBook</dt>
                    <dt>MacBook Air</dt>
                    <dt>MacBook Pro</dt>
                    <dt>iMac</dt>
                </dl>
                <dl>
                    <dt style="border-bottom: 1px solid #999;">iPhone</dt>
                    <dt>iPhone XS Max</dt>
                    <dt>iPhone XS</dt>
                    <dt>iPhone XR</dt>
                    <dt>iPhone 8</dt>
                    <dt>iPhone 7</dt>
                </dl>
                <dl>
                    <dt style="border-bottom: 1px solid #999;">Watch</dt>
                    <dt>Apple Watch Series 4</dt>
                    <dt>Apple Watch Nike+</dt>
                    <dt>Apple Watch Series 3</dt>
                </dl>
                <dl>
                    <dt style="border-bottom: 1px solid #999;">iPad</dt>
                    <dt>iPad Pro</dt>
                    <dt>iPad Air 新款</dt>
                    <dt>iPad</dt>
                    <dt>iPad mini</dt>
                </dl>

            </div>
            <div class="col-md-6 col-xs-6">
                <img src="/apple/static/img/goodsdetails02.jpg" class="img-responsive" alt="Responsive image">
                <img src="/apple/static/img/goodsdetails03.jpg" class="img-responsive" alt="Responsive image">
                <img src="/apple/static/img/goodsdetails04.jpg" class="img-responsive" alt="Responsive image">
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <script src=" https://cdn.staticfile.org/vue/2.2.2/vue.min.js"></script>
    <script src="https://cdn.staticfile.org/vue-resource/1.5.1/vue-resource.min.js"></script>
    <script>
        var app = new Vue({
            el: '#details',
            data: {
                detailslist: [{
                    name: '网络类型',
                    sort: '无需合约版'
                }, {
                    name: '机身颜色',
                    sort: '金色'
                }, {
                    name: '存储容量',
                    sort: '64GB'
                }, {
                    name: '发货时间',
                },
                {
                    name: '数量',
                }]
            }
        })
    </script>

</body>

</html>