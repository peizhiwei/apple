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
    <div class="container" id="app">
        <div class="row">
            <div class="col-md-12">
            <button onclick="window.location.href='/apple/user/userindex'">返回</button>
                <table class="table table-bordered table-hover tablebackground">
                    <thead>
                        <tr>
                            <th class="text-center" style="width: 25px;vertical-align:middle;"><input type="checkbox" v-model="checked" v-on:click="checkedAll"
                                    style="width:25px;height: 25px;"></th>
                            <th style="width: 100px;"></th>
                            <th style="width: 200px;">商品名称</th>
                            <th style="width: 100px;">单价</th>
                            <th class="text-center" style="width: 70px;">数量</th>
                            <th style="width:70px;">小计</th>
                            <th style="width:70px;">操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="i in shoppingcartlist">
                        <span>{{checkList}}</span>
                            <td class="text-center" style="vertical-align:middle;"><input type="checkbox" v-model="checkList" :value="i.id" style="width:25px;height: 25px;"></td>
                            <td><img class="center-block" alt="" :src="i.goods.img" style="width:60px;heigth:100px;"></td>
                            <td style="vertical-align:middle;">{{i.goods.name}}</td>
                            <td style="vertical-align:middle;">{{i.goods.price}}</td>
                            <td style="width:150px; vertical-align:middle;">
                                <div class="col-md-3 col-md-push-1"><span @click="decrease(i.goods.id,i.shAmount)" id="decrease"
                                        class="glyphicon glyphicon-minus"></span></div>
                                <div class="col-md-6">
                                    <input type="text" class="form-control input-sm text-center" :value="i.shAmount" v-model="i.shAmount" disabled="disabled">
                                </div>
                                <div class="col-md-3 col-md-pull-1"><span @click="plus(i.goods.id,i.shAmount)" id="plus"
                                        class="glyphicon glyphicon-plus"></span></div>
                            </td>
                            <td style="vertical-align:middle;">{{i.shAmount*i.goods.price}}</td>
                            <td style="vertical-align:middle;">
                                <div><a @click="remove(i.id)" class="glyphicon glyphicon-remove" href="javascript:void(0)"></a></div>
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
                            <th class="text-danger" onclick=""><button style="background-color: white;border: 0">付款</button></th>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.staticfile.org/vue/2.2.2/vue.min.js"></script>
    <script src="https://cdn.staticfile.org/vue-resource/1.5.1/vue-resource.min.js"></script>
    <script>
        var app = new Vue({
            el: '#app',
            data: {
                shoppingcartlist: [],
                checkList:[],
                checked:false//全选框
            },
            mounted : function() { //钩子函数
                this.getshoppingcartlist();
                
            },
            computed: {
                sum: function () {
                    var sum = 0;
                    for (var i in this.shoppingcartlist) {
                        sum = sum + this.shoppingcartlist[i].shAmount * this.shoppingcartlist[i].goods.price;
                    }
                    return sum;
                }
            },
            methods: {
            	checkedAll:function(){
            		var che = this;
            		if(che.checked){
            			che.checkList = [];
            		}else{
            			che.checkList = [];
            			this.shoppingcartlist.forEach(function (item, index) {
                            che.checkList.push(item.id);
                        });
            		}
            	},
                plus: function (goodsId,shAmount) {
                	var newamount = shAmount+1;
                	this.$http.post("http://localhost:8080/apple/userupdate/setshamount",{newamount:newamount,goodsId:goodsId},{emulateJSON:true}).then(function(res){
                		app.getshoppingcartlist();
                	},function(res){
                		console.log("请求失败处理")
                	});
                },
                decrease: function (goodsId,shAmount) {
                	if(shAmount>1){
	                	var newamount = shAmount-1;
	                    this.$http.post("http://localhost:8080/apple/userupdate/setshamount",{newamount:newamount,goodsId:goodsId},{emulateJSON:true}).then(function(res){ 
	                    	   app.getshoppingcartlist();
	                    },function(res){
	                        console.log("请求失败处理")
	                    });
                	}else{
                		alert("数量不能小于1");
                	}
                },
                remove : function(id){
                	this.$http.post("http://localhost:8080/apple/userdelete/removeshopping",{id:id},{emulateJSON:true}).then(function(res){
                        app.getshoppingcartlist();
                    },function(res){
                        console.log("请求失败处理")
                    });
                },
	          //发送get请求
	            getshoppingcartlist : function() {
	                this.$http.get("http://localhost:8080/apple/userselect/getshoppingcart").then(function(res) {
	                    this.shoppingcartlist = JSON.parse(res.bodyText);
	                }, function() {
	                    console.log('请求失败处理');
	                });
	            }
            },
            watch:{
            	'checkList':{
            		handler: function (val, oldVal) {
                        if (val.length === this.shoppingcartlist.length) {
                            this.checked = false;
                        } else {
                            this.checked = true;
                        }
                    },
                    deep: true
            	}
            }
        });
    </script>

</body>

</html>