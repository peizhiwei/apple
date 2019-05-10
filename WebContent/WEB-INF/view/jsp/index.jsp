<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>首页</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<style>
.container-fulid{
    width:100%;
    text-align:center;          
}
.Carousel_size{
    margin-top: -21px;
}

.goods_size{        
    color: black;
    text-decoration: none;
}
body{
	background-color: rgb(245,245,245);
}
#span1,#span2,#span3,#span4,#span5{
	color:red;
	text-align:left;
	margin-top:-15px;
	height:18px;
}
        
</style>
</head>
<body>
    <div class="container-fluid" id="index">
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

                        <li style="float:none;display:inline-block;margin:0em;margin:0px 60px;"><a
                                href="#" onclick="window.location.href='/apple/user/index'">
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

                       <li  style="float:right;display:inline-block;margin:0em;margin:8px 8px;">
                            <button type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#myModal" id="login">  
								    登录 
								</button>  
								  
								<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">  
								    <div class="modal-dialog" role="document">  
								        <div class="modal-content">  
								            <div class="modal-header">  
								                <button type="button" class="close"  data-toggle="modal" aria-label="Close">  
								                    <span aria-hidden="true">×</span>  
								                </button>  
								                <p class="modal-title" id="myModalLabel" style="font-size: 16px"><span class="glyphicon glyphicon-th-large"></span>欢迎登录手机商城</p>
								                
								            </div>  
								            <div class="modal-body">  
								            	<form>
								            	<div class="form-group ">
								            		<p>
								            		 <input type="text" name="username" placeholder="请输入用户名" class="form-control input-group-lg" @blur.prevent="checkusername" v-model="user.name"> </p>
								            	</div>
								            	<div class="span4" style="color:red;float:left">{{msg}}</div>
								               <div class="form-group ">
								               <input type="password" name="password" placeholder="请输入密码" class="form-control input-group-lg" @blur.prevent="checkpassword" v-model="user.pass" />
								            	</div>  
								            	<div class="span5" style="color:red;float:left">{{pass}}</div>
								            	</form>
								       		</div>
								            <div class="modal-footer"> 
								                <button type="button" id="loginbutton" class="btn btn-default" data-dismiss="modal" v-bind:disabled="user.name == ''||user.pass==''" >确认</button>  
								                <button type="button" class="btn btn-primary">取消</button>  
								            </div>  
								        </div>  
								    </div>  
								</div>  
                            </li>
                            
                            <li  style="float:right;display:inline-block;margin:0em;margin:8px 8px;">
                            <button type="button" class="btn btn-default btn-md" data-toggle="modal" data-target="#myModalregister">  
								    注册 
								</button>  
								  
								<div class="modal fade" id="myModalregister" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">  
								    <div class="modal-dialog" role="document">  
								        <div class="modal-content">  
								            <div class="modal-header">  
								                <button type="button" class="close"  data-toggle="modal" aria-label="Close">  
								                    <span aria-hidden="flase">×</span>  
								                </button>  
								                <p class="modal-title" id="myModalLabel" style="font-size: 16px"><span class="glyphicon glyphicon-th-large"></span>欢迎成为手机商城新用户</p>
								                
								            </div>  
								            <div class="modal-body">  
								            	<form>
								            	<div class="form-group ">
								                <input type="text" name="username" id="registerusername" v-model="register.runame" placeholder="请输入用户名"  @blur.prevent="checkregisterusername" class="form-control input-group-lg"
								                >
								            	</div>
								            	<div id="span1">{{register.msg1}}</div>
								               <div class="form-group ">
								                <input type="password" name="password" id="registerpassword" v-model="register.repsd" @blur.prevent="repassword" placeholder="请输入密码" class="
								                 form-control input-group-lg"> 
								            	</div>  
								            	<div id="span2">{{register.msg2}}</div>
								            	 <div class="form-group">
								                <input type="password" name="password2"  v-model="register.repsd1" @blur.prevent="checkrepassword" placeholder="请再一次输入密码" class="
								                 form-control input-group-lg"> 
								            	</div>  
								            	<div id="span3">{{register.msg3}}</div>
								            	</form>
								       		</div>
								            <div class="modal-footer"> 
								                <button type="button" id="registerbutton" class="btn btn-default" data-dismiss="modal" v-bind:disabled="register.runame=='' || register.repsd=='' || register.repsd1=='' || register.msg1!= ' ' || register.msg2 !=' ' || register.msg3!=' '">确认</button>  
								                <button type="button" class="btn btn-primary">取消</button>  
								            </div>  
								        </div>  
								    </div>  
								</div>
                            </li>
                    </ul>
                </div>
            </nav>
        </div>

        <!--Carousel(轮播图)-->
        <div class="row Carousel_size">
        	<div class="col-md-1"></div>
            <div class="col-md-10">
                <div id="myCarousel" class="carousel slide" >
                    <!-- 轮播（Carousel）指标 -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                        <li data-target="#myCarousel" data-slide-to="3"></li>
                        <li data-target="#myCarousel" data-slide-to="4"></li>
                    </ol>
                    <!-- 轮播（Carousel）项目 -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <a href="https://item.jd.com/100004311104.html"><img src="/apple/static/img/轮播1.jpg"
                                    alt="First slide"></a>
                        </div>
                        <div class="item">
                            <a href="https://item.jd.com/100000177756.html"><img src="/apple/static/img/轮播2.jpg"
                                    alt="Second slide"></a>
                        </div>
                        <div class="item">
                            <a href="https://item.jd.com/100004325478.html"><img src="/apple/static/img/轮播3.jpg"
                                    alt="Third slide"></a>
                        </div>
                        <div class="item">
                            <a href="https://item.jd.com/100000384103.html"><img src="/apple/static/img/轮播4.jpg"
                                    alt="Four slide"></a>
                        </div>

                    </div>
                    <a class="carousel-control left" href="#myCarousel" data-slide="prev"> <span _ngcontent-c3=""
                            aria-hidden="true" class="glyphicon glyphicon-chevron-left"></span></a>
                    <a class="carousel-control right" href="#myCarousel" data-slide="next"><span _ngcontent-c3=""
                            aria-hidden="true" class="glyphicon glyphicon-chevron-right"></span></a>
                </div>
                    <div id="myTabContent" class="tab-content" v-for="details in detailslist">
                         <div class="thumbnail tab-pane fade in active text-center col-md-3 col-sm-4 col-xs-6" v-if="details.upshelf==true">
                                    <a class="goods_size"
                                style="text-decoration: none;" onclick="window.location.href='/apple/user/details'">
                                <img alt="" v-bind:src="details.img">
                            </a>
                            <a class="goods_size" onclick="window.location.href='/apple/user/details'" style="text-decoration: none;">
                                <h3>{{details.name}}</h3>
                            </a>
                            <a onclick="window.location.href='/apple/user/details'"
                                style="text-decoration: none;"> <font color="grey">{{details.specs}}</font>
                            </a><br>
                            <a onclick="window.location.href='/apple/user/details'"
                                style="text-decoration: none;"> <font color="grey">{{details.details}}</font>
                            </a><br>
                            <a onclick="window.location.href='/apple/user/details'"
                                style="text-decoration: none;"> 
                            <font color="red">
                                    <h4>￥{{details.price}}</h4>
                            </font>
                            </a>
                            <!-- Indicates a dangerous or potentially negative action -->
							<button type="button" class="btn btn-danger">加入购物车</button>
                         </div>
                     </div>
                 </div>
                 <div class="col-md-1"></div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.staticfile.org/vue/2.2.2/vue.min.js"></script>
    <script src="https://cdn.staticfile.org/vue-resource/1.5.1/vue-resource.min.js"></script>
    <script>
        var app = new Vue({
            el : '#index',
            data : {
                detailslist : [],
                user:{
                	name:'',
                	pass:'',
                	},
                register:{
                	runame:'',
                	repsd:'',
                	repsd1:'',
                	msg1:'',
                	msg2:'' ,	
                	msg3:'',
                },
				msg:'',
				registermsg:'' ,	
				pass:'',
				jugdement:''
            },
            mounted:function() { //钩子函数
                this.get();
            },
            methods:{
                //发送get请求
                get:function(){
                    this.$http.get("http://localhost:8080/apple/adminiselect/getallgoods").then(function(res){
                        this.detailslist = JSON.parse(res.bodyText);
                    },function(){
                        console.log('请求失败处理');
                    });
                },//登录验证  用户名不能为空 密码不能为空 两者成立之后登录按钮解除禁用
                checkusername:function(){
        			if(this.user.name==''){
        				this.msg =  "请输入用户名";
        			}else{
        				this.msg = '';
        			}
        		},
                checkpassword:function(){
                	if(this.user.pass==''){
                		this.pass =  "请输入密码";
                	}else{
                		this.pass = '';
                	}
                },
                //注册验证
        		checkregisterusername:function(){
        			var patten= /^[a-zA-Z0-9_]*$/;
        			
        			if(this.register.runame==''){
        				this.register.msg1 =  "用户名不能为空 ";
        			}else if(!patten.test(this.register.runame)){
        				this.register.msg1 =  "用户名只能由英文大小写或者数字组成";
        				console.log("runame");
        			}else{
        				this.register.msg1 = ' ';
        			}
        		},
                repassword:function(){
                	if(this.register.repsd==''){
                		this.register.msg2 =  "请输入密码";
                	}else{
                		this.register.msg2 = ' ';
                	}
                },
        		checkrepassword:function(){
                	if(this.register.repsd1==""){
                		this.register.msg3 =  "请再一次输入密码 ";
                	}else if(this.register.repsd!=this.register.repsd1){
                		this.register.msg3 =  "两次输入密码不一致，请验证后重新输入";
                	}else{
                		this.register.msg3 = ' ';
                	}
                }
            },
        });
    </script>
    <script type="text/javascript">
    $(document).ready(function(){
        $("#loginbutton").click(function(){
        	 var username = $("#user").val();
             var password = $("#pass1").val();
            	 $.ajax({
                     type:'POST',
                     async:false,
                     dataType:"json",
                     url:"/apple/user/checkregister",
                     data:{"username":username,"password":password},
                     success:function(result){
                         if(result.flag==true){
                             window.location.href = result.msg;
                         }else{
                             alert(result.msg);
                         }
                     }
                 });
            
        });
        $("#registerbutton").click(function(){
        	var reusername = $("#registerusername").val();
            var repassword = $("#registerpassword").val();
            alert("jjjjj");
            $.ajax({
            	type:'POST',
            	asyns:false,
            	dataType:"json",
            	url:"/apple/user/checkregister",
            	data:{"reusername":reusername,"repassword":repassword},
            	success:function(result){
            		if(result.flag==true){
                        window.location.href = result.msg;
                    }else{
                        alert(result.msg);
                    }
            	}
            })
            
        });
    }); 
    </script>
</body>
</html>