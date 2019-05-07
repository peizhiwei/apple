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
                       
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>

        <div class="container-fliud">
            <div class="col-lg-1 col-sm-2 col-xs-3">
                <div class="btn-group-vertical" role="group" aria-label="...">
                <button type="button" class="btn btn-default" style="height:50px;width:100px"
                        onclick="window.location.href='/apple/admini/backindex'">首页</button>
                    <button type="button" class="btn btn-default" style="height:50px;width:100px"
                        onclick="window.location.href='/apple/admini/goods'">商品</button>
                    <button type="button" class="btn btn-default" style="height:50px;width:100px"
                        onclick="window.location.href='/apple/admini/intoStore'">入库</button>
                    <button type="button" class="btn btn-default" style="height:50px;width:100px"
                        onclick="window.location.href='/apple/admini/stock'">库存</button>
                    <button type="button" class="btn btn-default" style="height:50px;width:100px"
                        onclick="window.location.href='/apple/admini/outStore'">出库</button>
                    <button type="button" class="btn btn-default" style="height:50px;width:100px"
                        onclick="window.location.href='/apple/admini/management'">用户管理</button>
                    <button type="button" class="btn btn-default" style="height:50px;width:100px"
                        onclick="window.location.href='/apple/admini/sort'">商品分类</button>
                    <button type="button" class="btn btn-default" style="height:50px;width:100px"
                        onclick="window.location.href='/apple/admini/statistics'">统计</button>
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
                                <label for="exampleInputName2">商品名:</label>
                                <input type="text" v-model="" class="form-control" id="goods"
                                    name="goodsname" placeholder="请输入商品名">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputName2">数量:</label>
                                <input type="text" v-model="" class="form-control" id=""
                                    name="" placeholder="请输入入库数量">
                            </div>
                        </form>
                    </div>&nbsp;&nbsp;
                    <div class="container">
                        <table class="table table-striped table-bordered table-hover">
                            <tbody>
                                <tr v-for="i in items">
                                    <td><input type="radio" v-model='checkList' :value="i.id"></td>
                                    <td>{{i.rkNumber}}</td>
                                    <td>{{i.name}}</td>
                                    <td>{{i.amount}}</td>
                                    <td>{{i.date}}</td>
                                    <td>{{i.builder}}</td>
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
</body>
    <script type="text/javascript">
    var app = new Vue({
        el : '#app',
        data : {
        	goodsalldetails:[]
        },
        mounted:function(){
            this.getAllGoodsdetails();
        },
        methods : {
            getAllGoodsdetails : function(){
                //发送get请求
                this.$http.get("http://localhost:8080/apple/adminiselect/getallgoods").then(function(res) {
                    this.goodsalldetails = JSON.parse(res.bodyText);
                    console.log(this.goodsalldetails);
                }, function() {
                    console.log("请求失败处理");
                });
            }
        }
    });
    </script>
</html>