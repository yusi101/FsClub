<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit" /> 
<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
	<title>登录</title>
	<%@ include file="../system/allresources.jsp" %>
	<style type="text/css">
		input {height: 25px !important;width: 250px !important;background: #fff;padding-left: 50px !important;margin-top: 15px;border-radius: 0px !important;} 
		.sub_btn{line-height: 40px ;width: 260px ;background: #3f89ec;color:#fff;cursor: pointer;}
		img{vertical-align: top !important;    position: absolute;width: 25px;height: 25px; margin-left: 10px;margin-top:20px;}
	</style>
</head>
<script src="${pageContext.request.contextPath}/static/scripts/myjs/login.js"></script>
<body style="background: #fff;">
	<div style="width:300px;height:300px;margin: 30px auto;text-align: center;">
		<div>
			<img src="${pageContext.request.contextPath }/static/images/user/6.png"> 
			 <input type="text" id="username" maxlength="20" value="admin" placeholder="手机号/邮箱/用户名">
		</div>
		<div>
			<img src="${pageContext.request.contextPath }/static/images/user/7.png"> 
			<input type="password" id="password" textmode="password" placeholder="密码" value="1" maxlength="20">
		</div>
		<div style="padding-left:20px;">
				<div class="sub_btn"  onclick="tologin()" >TO LOGIN</div>
			</div>
	</div>


</body>
</html>