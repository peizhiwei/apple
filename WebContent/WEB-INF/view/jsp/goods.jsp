<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>商品</title>

<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">

</head>

<body>
	<div id="app">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">电子商城后台管理系统</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#"><span class="glyphicon glyphicon-alert"
								aria-hidden="true"></span><span class="badge">10</span></a></li>
						<li><a href="#"><span
								class="glyphicon glyphicon-envelope" aria-hidden="true"></span><span
								class="badge">5</span></a></li>
						
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>

		<div class="container-fliud">
			<div class="col-lg-1 col-sm-2 col-xs-3">
				<div class="btn-group-vertical" role="group" aria-label="...">
				<button type="button" class="btn btn-default"
						style="height: 50px; width: 100px"
						onclick="window.location.href='/apple/admini/backindex'">首页</button>
					<button type="button" class="btn btn-default"
						style="height: 50px; width: 100px"
						onclick="window.location.href='/apple/admini/goods'">商品</button>
					<button type="button" class="btn btn-default"
						style="height: 50px; width: 100px"
						onclick="window.location.href='/apple/admini/intostore'">入库</button>
					<button type="button" class="btn btn-default"
						style="height: 50px; width: 100px"
						onclick="window.location.href='/apple/admini/stock'">库存</button>
					<button type="button" class="btn btn-default"
						style="height: 50px; width: 100px"
						onclick="window.location.href='/apple/admini/outStore'">出库</button>
					<button type="button" class="btn btn-default"
						style="height: 50px; width: 100px"
						onclick="window.location.href='/apple/admini/management'">用户管理</button>
					<button type="button" class="btn btn-default"
						style="height: 50px; width: 100px"
						onclick="window.location.href='/apple/admini/sort'">商品分类</button>
					<button type="button" class="btn btn-default"
						style="height: 50px; width: 100px"
						onclick="window.location.href='/apple/admini/statistics'">统计</button>
				</div>
			</div>
			<div class="col-lg-11 col-sm-10 col-xs-9">
				<ol class="breadcrumb">
					<li><a
						href="file:///C:/Users/Administrator/Desktop/管理/index.html"><span
							class="glyphicon glyphicon-home" aria-hidden="true"></span>首页</a></li>
					<li class="active">商品管理</li>
				</ol>
				<div>
					<nav class="navbar navbar-default">
						<div class="container-fluid">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header">
								<button type="button" class="navbar-toggle collapsed"
									data-toggle="collapse"
									data-target="#bs-example-navbar-collapse-1"
									aria-expanded="false">
									<span class="sr-only">Toggle navigation</span> <span
										class="icon-bar"></span> <span class="icon-bar"></span> <span
										class="icon-bar"></span>
								</button>
								<a class="navbar-brand"><span
									class="glyphicon glyphicon-globe" aria-hidden="true"></span><b>商品管理</b></a>
							</div>
						</div>
					</nav>
					<div>
						<div class="btn-group col-xs-6" role="group" aria-label="">
						</div>
						<div class="col-xs-6 text-right">
							<button type="button" class="btn btn-default">
								<span class="glyphicon glyphicon-arrow-up" aria-hidden="true"></span>上架
							</button>
							<button type="button" class="btn btn-default">
								<span class="glyphicon glyphicon-arrow-down" aria-hidden="true"></span>下架
							</button>
							<a><button type="button" class="btn btn-default"
									onclick="window.location.href='/apple/admini/addgoods'">
									<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
								</button></a>
							
							<button type="button" class="btn btn-default" onclick="deleteGoods()">
								<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
							</button>
						</div>
					</div>
					&nbsp;&nbsp;
					<div class="container">
						<form class="form-inline">
							<div class="form-group">
								<label for="exampleInputName2">商品编号:</label> <input type="text"
									v-model="inputNumber" class="form-control"
									id="exampleInputName2" name="exampleInputName2"
									placeholder="请输入商品编号">
							</div>
							<div class="form-group"></div>
							<button type="button" class="btn btn-default" @click="getlist()">
								<span class="glyphicon glyphicon-search" aria-hidden="true"
									name="search"></span>搜索
							</button>
						</form>
					</div>
					&nbsp;&nbsp;
					<div class="container">
						<table class="table table-striped table-bordered table-hover" id="mydiv">
							<thead>
								<tr>
									<th><input type="checkbox" id="all" v-model='checked'
										onchange="changeAll()"></th>
									<th>编号</th>
									<th>商品名称</th>
									<th>价格</th>
									<th>详情</th>
									<th>规格</th>
									<th>分类</th>
									<th>图片</th>
									<th>最后修改日期</th>
									<th>操作者</th>
									<th>状态</th>
									<th class="text-center">操作</th>
								</tr>
							</thead>
							<tbody>
								<!-- tr v-for="(i,k) in items">
									<td><input type="checkbox" v-model='checkList'
										:value="i.id"></td>
									<td>{{i.number}}</td>
									<td>{{i.name}}</td>
									<td>{{i.price}}</td>
									<td>{{i.details}}</td>
									<td>{{i.specs}}</td>
									<td>{{i.amount}}</td>
								</tr -->
								<tr v-for="g in goodsalldetails">
									<td><input type="checkbox" v-model='checkList'
										:value="g.id" id="goodsid" name="each"></td>
									<td style="vertical-align:middle;" class="text-center">{{g.number}}</td>
									<td style="vertical-align:middle;">{{g.name}}</td>
									<td style="vertical-align:middle;">{{g.price}}</td>
									<td style="vertical-align:middle;">{{g.details}}</td>
									<td style="vertical-align:middle;">{{g.specs}}</td>
									<td style="vertical-align:middle;">{{g.type==null?'无分类':g.type.typeName}}</td>
									<td style="vertical-align:middle;"><img alt="" :src="g.img" style="heigth:50px;width:50px;"></td>
								    <td style="vertical-align:middle;">{{g.date}}</td>
								    <td style="vertical-align:middle;" v-if="g.admini!=null">{{g.admini.adminiName}}</td>
								    <td style="vertical-align:middle;" v-else>{{g.superadmini.superAdminiName}}</td>
								    <td style="vertical-align:middle;" v-if="g.upshelf==0">下架</td>
								    <td style="vertical-align:middle;" v-else>上架</td>
								    <td style="vertical-align:middle;" v-if="g.upshelf==0" class="text-center">
									    <button type="button" @click="upshelf(g.id)" class="btn btn-default">上架</button>
									    <button @click="change(g.number,g.name,g.price,g.details,g.specs,g.type.typeName,g.img)" type="button" class="btn btn-default" data-toggle="modal"
											data-target="#myModal">编辑</button>
								    </td>
								    <td style="vertical-align:middle;" v-else class="text-center">
									    <button type="button" @click="downshelf(g.id)" class="btn btn-default">下架</button>
									    <button @click="change(g.id,g.number,g.name,g.price,g.details,g.specs,g.type.typeName,g.img)" type="button" class="btn btn-default" data-toggle="modal"
									   		data-target="#myModal">编辑</button>
								    </td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content" style="height: 650px;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel" style="float: left;">修改</h4>
				</div>
				<div class="modal-body">
					<div>
						编号：<input type='text' id="goodsNumber"  class='number form-control' />
					</div>
					<br />
					<div>
						商品名称：<input type='text' id='goodsName' class='name form-control' />
					</div>
					<br />
					<div>
						价格：<input type='text' id='goodsPsrice'  class='price form-control' />
					</div>
					<br />
					<div>
						详情：<input type='text' id='goodsDetails' class='details form-control' />
					</div>
					<br />
					<div class="form-group">
						<label for="specs"> 规格： </label> <select name="specs" type="text"
							class="form-control" id='goodsSpecs'>
							 <option>4G+64G</option>
							 <option>4G+128G</option>
							 <option>6G+128G</option>
							</select>
					</div>
					<br />
					<div class="form-group">
						<label for="sort"> 类别：</label><select name="typename" type='text' id='goodsType' class='amount form-control'>
						<option v-for="i in sortlist">{{i.typeName}}</option>
                        </select>
					</div>
					<br />
					<div class="form-group">
						图片：<img alt="" id='goodsimg' src="" style="height: 70px; width: 50px;">
							<input type="file" id="imgfile">
					</div>
					<br />
				</div>
				<br>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="tijiao" @click="tijiao()">提交</button>
				</div>
			</div>
		</div>
	</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
	<script src="https://cdn.staticfile.org/vue/2.4.2/vue.min.js"></script>
	<script src="https://cdn.staticfile.org/vue-resource/1.5.1/vue-resource.min.js"></script>
	

	<script type="text/javascript">
	var app = new Vue({
			el : '#app',
			data : {
				inputNumber : "",
				items : [],
				sortlist:[],
				checked : false, //全选框
				checkList : [],
				goodsalldetails:[],
				changegoodsid:0
			},
			mounted:function(){
				this.getAllGoodsdetails();
				this.getAllSort();
			},
			methods : {
				getAllGoodsdetails : function(){
					//发送get请求
					this.$http.get("http://localhost:8080/apple/adminiselect/getallgoods").then(function(res) {
						this.goodsalldetails = JSON.parse(res.bodyText);
					}, function() {
						console.log("请求失败处理");
					});
				},
				getlist : function(data) {
					//发送get请求
					this.$http.get("http://localhost:8080/apple/adminiselect/getgoods?number="+ this.inputNumber).then(function(res) {
						this.items = JSON.parse(res.bodyText);
					}, function() {
						console.log("请求失败处理");
					});
				},
				upshelf : function(id){
					this.$http.post("http://localhost:8080/apple/adminiupdate/upshelf",{id:id},{emulateJSON:true}).then(function(res){
						app.getAllGoodsdetails();
					},function(){
						console.log("请求失败处理");
					});
				},
				downshelf : function(id){
					this.$http.post("http://localhost:8080/apple/adminiupdate/downshelf",{id:id},{emulateJSON:true}).then(function(res){
                        app.getAllGoodsdetails();
                    },function(){
                        console.log("请求失败处理");
                    }); 
				},
				//弹出模态框并设置相应的内容
				change : function(id,number,name,price,details,specs,typeName,img,date){
					this.changegoodsid = id;
					$("#goodsNumber").val(number);
					$("#goodsName").val(name);
					$("#goodsPsrice").val(price);
					$("#goodsDetails").val(details);
					$("#goodsSpecs").val(specs);
					$("#goodsType").val(typeName);
					$("#goodsimg").attr("src",img);
				},
				//修改商品信息
				tijiao : function(){
					var id = this.changegoodsid;
					var number = $("#goodsNumber").val();
					var name = $("#goodsName").val();
					var price = $("#goodsPsrice").val();
					var details = $("#goodsDetails").val();
					var specs = $("#goodsSpecs").val();
					var typeName = $("#goodsType").val();
					console.log(details);
					console.log(id);
					$.ajax({
						type:'POST',
						async:false,
						dataType:"json",
						url:"/apple/adminiupdate/updategoods",
						data:{"id":id,"number":number,"name":name,
							  "price":price,"details":details,"specs":specs,
							  "typeName":typeName},
						success:function(result){
							if(result.flag==true){
								//app.getAllGoodsdetails();
							}
						}
					});
					var formData = new FormData();
					formData.append('imgfile',$('#imgfile')[0].files[0]);
	                $.ajax({
	                    url: '/apple/adminiupdate/updategoodsimg', 
	                    type: 'POST',
	                    data: formData,
	                    cache: false,
	                    async:false,
	                    processData: false,
	                    contentType: false,
	                    success: function(result){
	                    	alert(result);
	                    	app.getAllGoodsdetails();
	                    }
	                });
				},
				getAllSort : function(){
	                //发送get请求
	                this.$http.get(
	                        "http://localhost:8080/apple/adminiselect/getallType").then(function(res) {
	                    this.sortlist = res.body;
	                }, function() {
	                    console.log('请求失败处理');
	                });
	            }
			}
		});
	</script>
</body>

</html>