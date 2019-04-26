<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>首页</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<body>
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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                            aria-expanded="false"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">One more separated link</a></li>
                        </ul>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <div class="container-fliud">
        <div class="col-lg-1 col-sm-2 col-xs-3">
            <div class="btn-group-vertical" role="group" aria-label="...">
                <button type="button"
                        class="btn btn-default" style="height:50px;width:100px" onclick="window.location.href='/apple/admini/Goods'">商品</button>
                <button type="button"
                        class="btn btn-default" style="height:50px;width:100px" onclick="window.location.href='/apple/admini/IntoStore'">入库</button>
                <button type="button"
                        class="btn btn-default" style="height:50px;width:100px" onclick="window.location.href='/apple/admini/Stock'">库存</button>
                <button type="button"
                        class="btn btn-default" style="height:50px;width:100px" onclick="window.location.href='/apple/admini/OutStore'">出库</button>
                <button type="button"
                        class="btn btn-default" style="height:50px;width:100px" onclick="window.location.href='/apple/admini/Management'">用户管理</button>
                <button type="button"
                        class="btn btn-default" style="height:50px;width:100px" onclick="window.location.href='/apple/admini/Sort'">商品分类</button>
                <button type="button"
                        class="btn btn-default" style="height:50px;width:100px" onclick="window.location.href='/apple/admini/Statistics'">统计</button>
            </div>
        </div>
        <div class="col-lg-11 col-sm-10 col-xs-9">
            <h1><b>欢迎使用电子商城后台管理系统！</b></h1>
        </div>
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <script src=" https://cdn.staticfile.org/vue/2.2.2/vue.min.js"></script>
        
</body>
</html>