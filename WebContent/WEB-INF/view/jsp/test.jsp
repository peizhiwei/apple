<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE>
<html>
<head>
<meta content="text/html; charset=utf-8">
<title>注册</title>
</head>
<body>
	<form id="addForm" action="/save/" method="post">
		<input type="text" name="name" placeholder="请输入名字" />
		<input type="password" name="password" placeholder="密码" />
	</form>
	<button type="button" id="submitAdd">确认</button>
</body>
<script	src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script>
	$("#submitAdd").click(function() {
		var targetUrl = $("#addForm").attr("action");
		var data = $("#addForm").serialize();
		$.ajax({
			type : 'post',
			url : "/apple/user/add",
			cache : false,
			data : data, //重点必须为一个变量如：data
			dataType : 'json',
			success : function(data) {
				alert('success');
			},
			error : function() {
				alert("请求失败")
			}
		})
	})
</script>
</html>