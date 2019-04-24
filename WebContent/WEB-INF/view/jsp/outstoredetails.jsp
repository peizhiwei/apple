<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>出库详情</title>

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
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container-fliud">
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
                                    aria-hidden="true"></span><b>出库详情</b></a>
                        </div>
                </nav>
                <div>
                    <div class="btn-group col-xs-6" role="group" aria-label="">
                    </div>
                    <div class="col-xs-6 text-right">
                       <a href="file:///C:/Users/Administrator/Desktop/管理/入库.html"> <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-remove-sign"
                                aria-hidden="true"></span>取消</button></a>
                        <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-ok-sign"
                                aria-hidden="true"></span>确认</button>
                    </div>
                </div>&nbsp;&nbsp;
                <div class="container">
                    <form class="navbar-form navbar-left">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="搜索商品编号">
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-search"
                                        aria-hidden="true"></span></button>
                            </span>
                        </div>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="搜索出库时间">
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-calendar"
                                        aria-hidden="true"></span></button>
                            </span>
                        </div>
                    </form>
            </div>&nbsp;&nbsp;
            <div class="container">
                <table class="table table-striped table-bordered table-hover" id="mydiv">
                    <thead>
                        <tr>
                            <th>商品名称</th>
                            <th>总数量</th>
                            <th>单位</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="i in items">
                            <td>{{i.goodsname}}</td>
                            <td>{{i.acount}}</td>
                            <td>{{i.company}}</td>
                        </tr>
                    </tbody>
                </table>
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