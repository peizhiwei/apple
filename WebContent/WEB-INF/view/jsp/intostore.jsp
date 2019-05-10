<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>入库</title>

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">

</head>

<body>
    <div id="app">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">电子商城后台管理系统</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-alert" aria-hidden="true"></span><span
                                    class="badge">10</span></a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><span
                                    class="badge">5</span></a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user"
                                    aria-hidden="true"></span>
                                <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a onclick="window.location.href='/apple/admini/backindex'">退出登录</a></li>
                            </ul>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>

        <div class="container-fliud">
            <div class="col-lg-1 col-sm-2 col-xs-3">
                <div class="btn-group-vertical" role="group" aria-label="...">
                    <button type="button" class="btn btn-default" style="height:50px;width:100px"
                        onclick="window.location.href='/apple/admini/Goods'">商品</button>
                    <button type="button" class="btn btn-default" style="height:50px;width:100px"
                        onclick="window.location.href='/apple/admini/Intostore'">入库</button>
                    <button type="button" class="btn btn-default" style="height:50px;width:100px"
                        onclick="window.location.href='/apple/admini/Stock'">库存</button>
                    <button type="button" class="btn btn-default" style="height:50px;width:100px"
                        onclick="window.location.href='/apple/admini/OutStore'">出库</button>
                    <button type="button" class="btn btn-default" style="height:50px;width:100px"
                        onclick="window.location.href='/apple/admini/Management'">用户管理</button>
                    <button type="button" class="btn btn-default" style="height:50px;width:100px"
                        onclick="window.location.href='/apple/admini/Sort'">商品分类</button>
                    <button type="button" class="btn btn-default" style="height:50px;width:100px"
                        onclick="window.location.href='/apple/admini/Statistics'">统计</button>
                </div>
            </div>
            <div class="col-lg-11 col-sm-10 col-xs-9">
                <ol class="breadcrumb">
                    <li><a><span class="glyphicon glyphicon-home" aria-hidden="true"></span>首页</a></li>
                    <li class="active">入库管理</li>
                </ol>
                <div>
                    <nav class="navbar navbar-default">
                        <div class="container-fluid">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand"><span class="glyphicon glyphicon-globe"
                                        aria-hidden="true"></span><b>入库管理</b></a>
                            </div>
                        </div>
                    </nav>
                    
                    <div class="container">
                        <form class="form-inline">
                            <div class="form-group">
                                <label for="exampleInputName2">商品名称:</label>
                                <input type="text" class="form-control" id="goodsname"
                                    name="goodsname" placeholder="请输入商品名称">
                            </div>
                            <div class="form-group">
                            </div>
                            <button type="button" class="btn btn-default" @click="getintostorelist()"><span
                                    class="glyphicon glyphicon-search" aria-hidden="true"
                                    name="search"></span>搜索</button>
                            <div class="form-group">
                                <label for="exampleInputName2">入库数量:</label>
                                <input type="text" class="form-control" id=""
                                    name="" placeholder="请输入入库数量">
                            </div>
                        </form>
                    </div>&nbsp;&nbsp;
                    <div class="container">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th><input type="checkbox" ></th>
                                    <th>商品名称</th>
                                    <th>价格</th>
                                    <th>规格</th>
                                    <th>图片</th>
                                    <th>创建人</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="i in items">
                                    <td><input type="checkbox"  :value="i.id"></td>
                                    <td>{{i.name}}</td>
                                    <td>{{i.price}}</td>
                                    <td>{{i.specs}}</td>
                                    <td>{{i.img}}</td>
                                    <td>{{i.admini}}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <script src=" https://cdn.staticfile.org/vue/2.2.2/vue.min.js"></script>
    <script src="https://cdn.staticfile.org/vue-resource/1.5.1/vue-resource.min.js"></script>

    <script>
        var app = new Vue({
            el: '#app',
            data: {
                inputNumber: "",
                items: [],
                checked: false, //全选框
                checkList: []
            },
            methods: {
                getintostorelist: function (data) {
                    //发送get请求
                    this.$http.get("http://localhost:8080/apple/admini/getintostore?number=" + this.inputNumber).then(function (res) {
                        this.items = JSON.parse(res.bodyText);

                    }, function () {
                        console.log('请求失败处理');
                    });
                }

            }
        });
    </script>


</body>

</html>