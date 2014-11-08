<%@ page language="java" contentType="text/html; charset=GBK"    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=GBK" />
	<title>宿迁贷款网</title>
	<link rel="stylesheet" href="${showpagePath}/css/global.css" />
	<link rel="stylesheet" href="${showpagePath}/css/user_login.css" />
	
	<script type="text/javascript" src="${showpagePath}/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="${showpagePath}/js/index.js"></script>
	<script type="text/javascript" src="${showpagePath}/js/util.js"></script>

	<script type="text/javascript" src="${showpagePath}/layer/layer.min.js"></script>
	
	<script type="text/javascript">
		window.onload=function(){
			nav();
			float_service();
			tab();
		};
		
		
		$(document).ready(function(){
			$("#agree_login").click(
					function(){
						var userEmail = $("#userEmail").val();
						var userName = $("#userName").val();
						var password = $("#userPassword").val();
						var password1 = $("#userPassword1").val();
						
						if(userEmail == null || userEmail == ''){
							layer.alert('请输入用户邮箱',8,!1);
							return false;
						}else{
							
							if(! util.checkEmail(userEmail)){
								layer.alert('输入用户邮箱格式错误',8,!1);
								return false;
							}
							
							if(userEmail.length>50){
								layer.alert('输入用户邮箱格式长度不能超过50',8,!1);
								return false;
							}
						}
						
						if(userName == null || userName == ''){
							layer.alert('请输入用户名称！',8,!1);
							return false;
						}
						
						if(password1 == null || password == '' ){
							layer.alert('请输入用户密码！',8,!1);
							return false;
						}
						
						if( password != password1){
							layer.alert('两次密码不一致密码！',8,!1);
							return false;
						}
						
						$("#registerForm").submit();
						
					}
			);
			
			
		})
		
	</script>
</head>
<body>
	<%@ include file="./pub/header.jsp" %>
	
	<div class="cl h30"></div>
	<div class="user_login_main">
		<ul class="login_head" id="loginHead">
			<li class="cur">新用户注册</li>
		</ul>
		<div class="cl"></div>
		<form action="${contextPath}/rest/showpage/registeruser" method="post" id="registerForm">
		<div class="login_main_content">
			<ul class="login_message fl">
				<li>
					<span>常用邮箱</span><input type="text" name="userEmail" id="userEmail"  maxlength="50" value="${userEmail}" />
					<c:if test="${userEmailInfo != '' && userEmailInfo != null}">
						<i class="cur">${userEmailInfo}</i>
					</c:if>
				</li>
				<li>
					<span>用户名</span><input type="text" name="userName" id="userName" maxlength="25" value="${userName}"/>
					<c:if test="${userNameInfo != '' && userNameInfo != null}">
						<i class="cur">${userNameInfo}</i>
					</c:if>
				</li>
				<li>
					<span>密码</span><input type="password" name="userPassword" id="userPassword" maxlength="25" /><i >6-16个字母、数字、下划线。</i>
				</li>
				<li>
					<span>密码强度</span>
					<ul class="fl">
						<li class="cur">弱</li>
						<li>中</li>
						<li>强</li>
					</ul>
				</li>
				<li>
					<span>确认密码</span><input  type="password" name="userPassword1" id="userPassword1" maxlength="25"/><i>未输入或2次输入密码不同</i>
				</li>
				<!-- 
				<li>
					<span>推&nbsp;选&nbsp;人</span><input type="text" maxlength="25" /><span class="recommend">填写推荐人用户名，没有推荐人可不填。</span>
				</li>
				 -->
				<li>
					<span>验证码</span><input type="text" /><a href="#">看不清&nbsp;换一张</a>
				</li>
				<li class="radio_but">
					<input id="agree_radio" type="radio" name="agree" />&nbsp;
					<a href="#">
						<label for="agree_radio" >同意 《注册服务协议》</label></a>
				</li>
				<li class="list_last">
					<input id="agree_login" type="button" value="同意协议并注册"/>
				</li>
			</ul>
			<ul class="login_right fr">
				<li>
					已经注册过?<a href="#">立即登录</a>
				</li>
				<li>或者你也可以用以下网站账号登陆</li>
				<li class="qq"><a href="#">QQ账号登陆</a></li>
				<li class="sina"><a href="#">新浪微博账号登陆</a></li>
			</ul>
		</div>
		</form>
	</div>
	<div class="cl h15"></div>
	<%@ include file="./pub/footer.jsp" %>
</body>
</html>