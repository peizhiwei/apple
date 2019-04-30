<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>购物车</title>

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        body {
            background-color: rgb(245, 245, 245);
        }

        .tablebackground {
            background-color: white;
            font-size: 18px;
        }

        *{
            border-right: 0px solid transparent !important;
            border-left: 0px solid transparent !important;
            border-bottom: 0px solid transparent !important;
        }
        a {
            color: black;
        }
    </style>
</head>

<body>
    <div style="height:50px;"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <table class="table table-bordered table-hover tablebackground" id="mydiv">
                    <thead>
                        <tr>
                            <th class="text-center" style="width: 25px;"><input type="checkbox"
                                    style="width:20px;height: 20px;"></th>
                            <th style="width: 100px;"></th>
                            <th style="width: 200px;">商品名称</th>
                            <th style="width: 100px;">单价</th>
                            <th class="text-center" style="width: 70px;">数量</th>
                            <th style="width:70px;">小计</th>
                            <th style="width:70px;">操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="i in items">
                            <td class="text-center"><input type="checkbox" style="width:20px;height: 20px;"></td>
                            <td>图片</td>
                            <td>{{i.name}}</td>
                            <td>{{i.price}}</td>
                            <td style="width:150px;">
                                <div class="col-md-3 col-md-push-1"><span @click="decrease()" id="decrease"
                                        class="glyphicon glyphicon-minus"></span></div>
                                <div class="col-md-6">
                                    <input type="text" class="form-control input-sm text-center" v-model="i.amount">
                                </div>
                                <div class="col-md-3 col-md-pull-1"><span @click="plus()" id="plus"
                                        class="glyphicon glyphicon-plus"></span></div>
                            </td>
                            <td>{{i.amount*i.price}}</td>
                            <td>
                                <div><a class="glyphicon glyphicon-remove" href=""></a></div>
                            </td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th class="text-right">总价：</th>
                            <th class="text-danger">{{sum}}</th>
                            <th class="text-danger" onclick="window.location.href='/apple/user/index'">去结算
                            </th>
                        </tr>
                    </tfoot>
                </table>
            </div>
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
                    { name: 'iPhone XS MAX', price: 12999, amount: 0 },
                    { name: 'iPhone X', price: 6459, amount: 0 },
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
            },
            methods: {
                decrease: function () {
                    var it = this.items;
                    it.amount=it.amount+1;
                }
            }
        })
    </script>

</body>

</html>