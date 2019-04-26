<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>个人中心页面</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<style type="text/css">
  .hi {
    height: 20px;
  }

  .color {
    background-color: #F0F8FF;
  }

  .top {
    font-size: 20px;
    background-color: #003366;
    height: 50px;
  }

  .top1 {
    padding: 10px 50px;
  }

  .slit::after {
    content: "";
    width: 1px;
    height: 5px;
    border: 1px solid #fff;
    position: relative;
    left: 10px;
  }

  .hi {
    height: 20px;
  }

  .img {
    width: 65px;
    height: 65px;
    position: relative;
    left: 15px;
    top: 35px;
  }

  .massage {
    background-color: white;
  }

  .name {
    position: relative;
    left: 95px;
    top: -35px;
  }

  .id {
    position: relative;
    left: 95px;
    top: -35px;
  }
  .idnumber{
    position: relative;
    left:60px;
    top: -15px;
  }
  img {
    width: 35px;
    height: 35px;
    position: relative;
    top: 5px;
  }
</style>

<body class="color">
  <div class="container " id="app">
    <div class="row ">
      <div class="col-xs-12 col-sm-12
        top">
        <p class="top1" style="color:white">
          <span class="glyphicon glyphicon-th-large slit" style="color:white"></span>&nbsp;&nbsp;&nbsp;&nbsp;手机商城</p>
      </div>
    </div>
    <div class="hi"></div>
    <!-- 个人中心标识 -->
    <p class="top1" style="font-size:17px">
      <div class="row">
        <div class="col-xs-6 col-sm-6" style="text-align:center;font-size:18px">
          &nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;
          <span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;&nbsp;&nbsp;个人中心
    </p>
  </div>
  </div>

  <!-- 第一块头像姓名id -->
  <div class="row">
    <div class="col-xs-2 col-sm-3">
    </div>
    <div class="col-xs-8 col-sm-6 massage" style="height:120px">
      <!-- 页面主要代码 -->

      <!-- 个人头像 -->
      <img :src="userdetails.userImg" class="img-rounded img">
      <!-- 个人姓名 -->
      <h3 class="name">{{userdetails.userNickName}}</h3>
      <!-- 个人id -->
      <h5 class="id text-muted">我的id：<p class=" idnumber text-muted">{{userdetails.userName}}</p></h5>
    </div>
    <div class="col-xs-2 col-sm-3">
    </div>
  </div>

  <div style="height:9px"></div>
  <!-- 第二块查询订单加精品推荐 -->
  <div class="row">
    <div class="col-xs-2 col-sm-3"></div>

    <div class="col-xs-8 col-sm-6 massage">
      <!--我的订单-->
      <div>
        <div class="col-xs-2 col-sm-2"><img src="/apple/static/img/dingdan.svg"></div>
        <div class="col-xs-10 col-sm-10">
          <div class="col-xs-12 col-sm-12" style="height:13px"></div>
          <div>
            <p><a href="#">我的订单</a></p>
          </div>
        </div>
      </div>
      <!-- 空格 -->
      <div class="col-xs-12 col-sm-12" style="height:3px ;width: 106%;
      position: relative;
      right: 3%; background-color:#F0F8FF"></div>

      <!--精品推荐-->
      <div>
        <div class="col-xs-2 col-sm-2"><img src="/apple/static/img/tuijian.svg"></div>
        <div class="col-xs-10 col-sm-10">
          <div class="col-xs-12 col-sm-12" style="height:13px"></div>
          <div>
            <p><a href="#">精品推荐</a></p>
          </div>
        </div>
      </div>
      <!-- 空格 -->
       <div class="col-xs-12 col-sm-12" style="height:3px ;width: 106%;
      position: relative;
      right: 3%; background-color:#F0F8FF"></div>

      <!--我的收藏-->
      <div>
        <div class="col-xs-2 col-sm-2"><img src="/apple/static/img/collect.svg"></div>
        <div class="col-xs-10 col-sm-10">
          <div class="col-xs-12 col-sm-12" style="height:13px"></div>
          <div>
            <p><a href="#">我的收藏</a></p>
          </div>
        </div>
      </div>

      <!-- 空格 -->
       <div class="col-xs-12 col-sm-12" style="height:3px ;width: 106%;
      position: relative;
      right: 3%; background-color:#F0F8FF"></div>

      <!--邮箱-->
      <div>
        <div class="col-xs-2 col-sm-2"><img src="/apple/static/img/mailbox.svg"></div>
        <div class="col-xs-10 col-sm-10">
          <div class="col-xs-12 col-sm-12" style="height:13px"></div>
          <div>
            <p><a href="#">邮箱</a></p>
          </div>
        </div>
      </div>

      <!-- 空格 -->
       <div class="col-xs-12 col-sm-12" style="height:3px ;width: 106%;
      position: relative;
      right: 3%; background-color:#F0F8FF"></div>

      <!--购物-->
      <div>
        <div class="col-xs-2 col-sm-2"><img src="/apple/static/img/shopping.svg"></div>
        <div class="col-xs-10 col-sm-10">
          <div class="col-xs-12 col-sm-12" style="height:13px"></div>
          <div>
            <p><a href="#">购物</a></p>
          </div>
        </div>
      </div>

    </div>

    <div class="col-xs-2 col-sm-3">
    </div>
  </div>

  <div style="height:6px"></div>
  <div class="row">
    <div class="col-xs-2 col-sm-3">
    </div>
    <div class="col-xs-8 col-sm-6 massage" style="height:50px;">
      <div class="col-xs-2 col-sm-2"><img src="/apple/static/img/set.svg"></div>
      <div class="col-xs-10 col-sm-10">
        <div class="col-xs-12 col-sm-12" style="height:16px"></div>
        <p><a href="#">设置</a></p>
      </div>
    </div>

    <div class="col-xs-2 col-sm-3">
    </div>
  </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
  <script src=" https://cdn.staticfile.org/vue/2.2.2/vue.min.js"></script>
  <script src="https://cdn.staticfile.org/vue-resource/1.5.1/vue-resource.min.js"></script>
	<script>
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