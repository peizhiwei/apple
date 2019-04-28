<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>个人信息更改页面</title>
     <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
    <style type="text/css">
        body {
            background-color: #F0F8FF;
          }
          img{
            height: 55px;
            width: 55px;
            margin-top: 10px;
          }
          h4{
            margin-top:33px;

          }
          input{
            margin-top:15px;
            height: 40px;
            width: 70px;
          }
          button{
            float: right;
            margin-top: 15px;
            height: 35px;
            width: 45px;
          }
          .topback{
            color: white;
            background-color: #003366;
            height: 50px;
            font-size: 20px;
          }
          .slit::after{
          content: "";
          width: 1px;
          height:5px;
          border:1px solid #fff;
          position: relative;
          left: 10px;
          margin-right: 20px;
        }
        .nav>div>p{
            line-height: 50px;
        }
        .selfmassage{
            font-size: 17px;
            margin: 50px 40px;
        }
        .maincolor{
            background-color: white;
            height: 330px;
        }
        .line{
            height: 1px;
            background-color: #F0F8FF;
            width:120%;
            position: relative;
            right:25px
        }
    </style>
<body>
    <div class="container" id="app">
        <div class="row nav">
            <div class="col-xs-12 col-sm-12 topback">
            <p><span class="glyphicon glyphicon-th-large slit"></span>手机商城</p>
        </div>
        </div>
        <div class="row ">
            <div class="col-xs-12 col-sm-12 selfmassage">
                <p><span class="glyphicon glyphicon-user" style="margin-right: 10px"></span>个人信息更改</p>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-1 col-sm-2"></div>
            <div class="col-xs-10 col-sm-8 maincolor">
            <div class="col-xs-9 col-sm-9">
                <h4 style="height: 28px;">头像</h4>
            </div>
            <div class="col-xs-3 col-sm-3">
                <div class="col-xs-7 col-sm-7" v-if="userdetails.userImg==''"><img src="/apple/static/img/imgnull.jpg" class="img-rounded"></div>
                <div class="col-xs-7 col-sm-7" v-else><img :src="userdetails.userImg" class="img-rounded"></div>
                <div class="col-xs-5 col-sm-5" hidden="hidden" id="imgfile"> <input id="file1" type="file" value="请选择"></div>
            </div>
            
            <div class="col-xs-12 col-sm-12 line"></div>
            <div class="col-xs-9 col-sm-9">
                <h4>昵称</h4>
            </div>
            <div class="col-xs-3 col-sm-3">
                <input style="background-color: white;border: 0" type="text" id="nicheng" name="nicheng" v-model="userdetails.userNickName" disabled="false">
            </div>
            <div class="col-xs-12 col-sm-12 line"></div>
            <div class="col-xs-9 col-sm-9">
                <h4>我的id</h4>
            </div>
            <div class="col-xs-3 col-sm-3">
                <h4>{{userdetails.userName}}</h4>
            </div>
            <div class="col-xs-12 col-sm-12 line"></div>
            <div class="col-xs-9 col-sm-9">
                <h4>我的名片</h4>
            </div>
            <div class="col-xs-12 col-sm-12 line"></div>
            <div class="col-xs-9 col-sm-9">
                <h4>更多</h4>
            </div>
            </div>
        <div class="col-xs-1 col-sm-2"></div>
    </div>
        <div class="row">
            <div class="col-xs-2 col-sm-2"></div>
            <div class="col-xs-8 col-sm-8 ">
                <input type="button" name="" id="return" value="返回" onclick="window.location.href='/apple/user/selfcenter'">
                <input type="button" name="" id="textchange" value="编辑" style="float: right">
            </div>
            <div class="col-xs-2 col-sm-2"></div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.staticfile.org/vue/2.2.2/vue.min.js"></script>
    <script src="https://cdn.staticfile.org/vue-resource/1.5.1/vue-resource.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function(){
            $("#textchange").click(function(){
                if($("#textchange").val()=="编辑"){
                    $("#textchange").val("保存");
                    $("#nicheng").removeAttr("disabled");
                    $("#imgfile").removeAttr("hidden");
                    $("#nicheng").css({'border':'2px lightgray solid'});
                }else if($("#textchange").val()=="保存"){
                	var formData = new FormData();
                    formData.append('file1',$('#file1')[0].files[0]);
                    $.ajax({
                        url: '/apple/user/userimgupload', 
                        type: 'POST',  
                        data: formData,  
                        cache: false,  
                        processData: false,  
                        contentType: false,
                        success: function(result){
                            app.get();
                        }
                    });
                    var nicheng=$("#nicheng").val();
                    $.ajax({
                        url: '/apple/user/usernicknameupdata', 
                        type: 'POST',
                        dataType: "json",
                        data:{"nicheng":nicheng},
                        success: function(result){
                        	if(result.flag==true){
                        		app.get();
                        		alert("保存成功");
                        	}else{
                        		alert(result.msg);
                        	}
                        }
                    });
                    $("#textchange").val("编辑");
                    $("#nicheng").attr("disabled","disabled");
                    $("#imgfile").attr("hidden","hidden");
                    $("#nicheng").css({'border':'0px'});
                }
            });
            
        });
    </script>
    <script type="text/javascript">
    var app = new Vue({
        el : '#app',
        data : {
            userdetails : ""
        },
        mounted:function() { //钩子函数
            this.get();
        },
        methods:{
            //发送get请求
            get:function(){
                this.$http.get("http://localhost:8080/apple/user/getuserdetails").then(function(res){
                    console.log(res);
                    this.userdetails = JSON.parse(res.bodyText);
                },function(){
                    console.log('请求失败处理');
                });
            }
        }
    })
</script>
</body>
</html>