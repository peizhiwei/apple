<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>库存</title>

    <link rel="stylesheet" href="./bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link href="./css/bootstrap.min.css" rel="stylesheet">


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
                <a href="file:///C:/Users/Administrator/Desktop/管理/商品.html"><button type="button"
                        class="btn btn-default" style="height:50px;width:100px">商品</button></a>
                <a href="file:///C:/Users/Administrator/Desktop/管理/入库.html"><button type="button"
                        class="btn btn-default" style="height:50px;width:100px">入库</button></a>
                <a href="file:///C:/Users/Administrator/Desktop/管理/库存.html"><button type="button"
                        class="btn btn-default" style="height:50px;width:100px">库存</button></a>
                <a href="file:///C:/Users/Administrator/Desktop/管理/出库.html"><button type="button"
                        class="btn btn-default" style="height:50px;width:100px">出库</button></a>
                <a href="file:///C:/Users/Administrator/Desktop/管理/用户管理.html"><button type="button"
                        class="btn btn-default" style="height:50px;width:100px">用户管理</button></a>
                <a href="file:///C:/Users/Administrator/Desktop/管理/商品分类.html"><button type="button"
                        class="btn btn-default" style="height:50px;width:100px">商品分类</button></a>
                <a href="file:///C:/Users/Administrator/Desktop/管理/统计.html"><button type="button"
                        class="btn btn-default" style="height:50px;width:100px">统计</button></a>
            </div>
        </div>
        <div div class="col-lg-11 col-sm-10 col-xs-9">
            <ol class="breadcrumb">
                <li><a href="file:///C:/Users/Administrator/Desktop/管理/index.html"><span
                            class="glyphicon glyphicon-home" aria-hidden="true"></span>首页</a></li>
                <li class="active">库存管理</li>
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
                                    aria-hidden="true"></span><b>库存管理</b></a>
                        </div>
                </nav>
                <div>
                    <div class="btn-group col-xs-6" role="group" aria-label="">
                    </div>
                    <div class="col-xs-6 text-right">
                        <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-plus"
                                aria-hidden="true"></span>新增</button>
                        <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-remove"
                                aria-hidden="true"></span>删除</button>
                    </div>
                </div>&nbsp;&nbsp;
                <div class="container">
                    <form class="form-inline">
                        <div class="form-group">
                            <label for="exampleInputName2">入库编号:</label>
                            <input type="text" class="form-control" id="exampleInputName2" placeholder="请输入入库编号">
                        </div>
                        <div class="form-group">
                        </div>
                        <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"
                                aria-hidden="true"></span>搜索</button>
                        <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-random"
                                aria-hidden="true"></span>清空搜索条件</button>
                    </form>
                </div>&nbsp;&nbsp;
                <div class="container">
                    <table class="table table-striped table-bordered table-hover" id="mydiv">
                        <thead>
                            <tr>
                                <th>编号</th>
                                <th>商品名称</th>
                                <th>货品总数</th>
                                <th>创建时间</th>
                                <th>创建人</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for="i in items">
                                <td>{{i.number}}</td>
                                <td>{{i.name}}</td>
                                <td>{{i.acount}}</td>
                                <td>{{i.date}}</td>
                                <td>{{i.ad_name}}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <script src="./js/jquery-3.3.1.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <script>
        $(function () {
            function initTableCheckbox() {
                var $thr = $('table thead tr');
                var $checkAllTh = $('<th><input type="checkbox" id="checkAll" name="checkAll" /></th>');
                /*将全选/反选复选框添加到表头最前，即增加一列*/
                $thr.prepend($checkAllTh);
                /*“全选/反选”复选框*/
                var $checkAll = $thr.find('input');
                $checkAll.click(function (event) {
                    /*将所有行的选中状态设成全选框的选中状态*/
                    $tbr.find('input').prop('checked', $(this).prop('checked'));
                    /*并调整所有选中行的CSS样式*/
                    if ($(this).prop('checked')) {
                        $tbr.find('input').parent().parent().addClass('warning');
                    } else {
                        $tbr.find('input').parent().parent().removeClass('warning');
                    }
                    /*阻止向上冒泡，以防再次触发点击操作*/
                    event.stopPropagation();
                });
                /*点击全选框所在单元格时也触发全选框的点击操作*/
                $checkAllTh.click(function () {
                    $(this).find('input').click();
                });
                var $tbr = $('table tbody tr');
                var $checkItemTd = $('<td><input type="checkbox" name="checkItem" /></td>');
                /*每一行都在最前面插入一个选中复选框的单元格*/
                $tbr.prepend($checkItemTd);
                /*点击每一行的选中复选框时*/
                $tbr.find('input').click(function (event) {
                    /*调整选中行的CSS样式*/
                    $(this).parent().parent().toggleClass('warning');
                    $checkAll.prop('checked', $tbr.find('input:checked').length == $tbr.length ? true : false);
                    /*阻止向上冒泡，以防再次触发点击操作*/
                    event.stopPropagation();
                });
                /*点击每一行时也触发该行的选中操作*/
                $tbr.click(function () {
                    $(this).find('input').click();
                });
            }
            initTableCheckbox();
        });
    </script>
    <script src="./js/jquery-3.3.1.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <script src="./js/vue.js"></script>
    <script>
        var app = new Vue({
            el: '#mydiv',
            data: {

                items: [
                    {
                       
                    }
                ]
            }

        })
    </script>
</body>
</html>