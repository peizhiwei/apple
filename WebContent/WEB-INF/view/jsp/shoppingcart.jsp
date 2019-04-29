<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head> 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>购物车</title>

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<body>
    <div>
        <nav class="navbar navbar-default" style="background:rgb(34, 30, 31)">
            <div class=" container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" onclick="window.location.href='/apple/user/index'" style="margin-top:-15px">
                        <img alt="Brand" src="C:\Users\guozijie\Desktop\img\sss.jpg">
                    </a>
                    <a class="navbar-brand" href="#">
                        <font color="white">我的购物车</font>
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="#">
                                <font color="white">温馨提示：产品是否购买成功，以最终下单为准哦，请尽快结算</font>
                            </a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">
                                <font color="white">我的订单</font>
                            </a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                aria-haspopup="true" aria-expanded="false">
                                <font color="white">昵称</font><span class="caret"></span>
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
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    </div>
    <div class="container" style="margin-top: 150px">
        <div class="row">
            <div class="col-md-12">
                <table class="table table-bordered table-hover" id="mydiv">
                    <thead>
                        <tr>
                            <th class="text-center">商品名称</th>
                            <th class="text-center">单价</th>
                            <th class="text-center">数量</th>
                            <th class="text-center">小计</th>
                            <th class="text-center">操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="i in items">
                            <td class="text-center">{{i.name}}</td>
                            <td class="text-center">{{i.price}}</td>
                            <td class="text-center"><input type="text" class="form-control input-sm" v-model="i.amount">
                            </td>
                            <td class="text-center">{{i.amount*i.price}}</td>
                            <td class="text-center">{{i.operation}}</td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th></th>
                            <th></th>
                            <th class="text-right">总价：</th>
                            <th class="text-danger text-center">{{sum}}</th>
                            <th class="text-danger text-center" onclick="window.location.href='/apple/user/index'">去结算
                            </th>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
        <script src="https://cdn.staticfile.org/vue/2.2.2/vue.min.js"></script>
        <script>
            var app = new Vue({
                el: '#mydiv',
                data: {
                    items: [
                        { name: 'iPhone XS MAX', price: 12999, amount: '' },
                        { name: 'iPhone X', price: 6459, amount: '' },
                    ]
                },
                computed: {
                    sum: function () {
                        var sum = 0;
                        for (var i in this.items) {
                            sum = sum + this.items[i].amount * this.items[i].price;
                        }
                        return sum;
                    }
                }
            })
        </script>

</body>

</html>