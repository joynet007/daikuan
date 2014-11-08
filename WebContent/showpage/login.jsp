<%@ page language="java" contentType="text/html; charset=GBK"    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=GBK" />
	<title>��Ǩ������</title>
	
	<link rel="stylesheet" href="${showpagePath}/css/global.css" />
	<link rel="stylesheet" href="${showpagePath}/css/user_enroll.css" />
	
	<script type="text/javascript" src="${showpagePath}/js/jquery-1.11.1.min.js" ></script>
	<script type="text/javascript" src="${showpagePath}/js/index.js"></script>
	<script type="text/javascript" src="${showpagePath}/js/util.js"></script>
	<script type="text/javascript" src="${showpagePath}/layer/layer.min.js"></script>
	
	<script type="text/javascript">
		window.onload=function(){
			nav();
			float_service();
		};
		
		$(document).ready(function(){
			
			$("#loginBut").click(
					function(){
						var userEmail = $("#userEmail").val();
						var password = $("#userPassword").val();
						
						if(userEmail == null || userEmail == ''){
							layer.alert('�������û�����',8,!1);
							return false;
						}else{
							
							if(! util.checkEmail(userEmail)){
								layer.alert('�����û������ʽ����',8,!1);
								return false;
							}
							
							if(userEmail.length>50){
								layer.alert('�����û������ʽ���Ȳ��ܳ���50',8,!1);
								return false;
							}
						}
						
						if(password == '' ){
							layer.alert('�������û����룡',8,!1);
							return false;
						}
						
						$("#loginForm").submit();
					}
			);
			
		});
		
		
	</script>
</head>
<body>
	<%@include file="./pub/header.jsp" %>
	
	<div class="user_enroll_main cl">
		<div class="main_img fl"></div>
		<form action="${contextPath}/rest/showpage/dologin" method="post" id="loginForm">
			<div class="enroll_form fr">
				<h3><span>�û���½</span><a href="${contextPath}/rest/showpage/registeruser">���ע��&nbsp;&nbsp;</a>|<a href="#">&nbsp;&nbsp;��������</a></h3>
				<span><font color="red">${pageinfo}</font></span>
				<p>�û����䣺<input type="text" name="userEmail" id="userEmail" value="${userEmail}" maxlength="50" /></p>
				<p>�û����룺<input type="text" name="userPassword" id="userPassword"  value="${userPassword}" maxlength="30" /></p>
				<p class="yzm">��֤�룺<input type="text" />&nbsp;&nbsp;<a href="#">ˢ��</a></p>
				<p class="enroll_but"><input type="button" id="loginBut"  value="��½"/></p>
				<p>
					<a class="qq" href="#">QQ�˺ŵ�½</a>
					<a class="sina" href="#">����΢���˺ŵ�½</a>
				</p>
			</div>
		</form>
	</div>
	
	<div class="cl h15"></div>
	<%@ include file="./pub/footer.jsp" %>
</body>
</html>