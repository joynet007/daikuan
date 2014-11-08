<%@ page language="java" contentType="text/html; charset=GBK"    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=GBK" />
	<title>��Ǩ������</title>
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
						
						if(userName == null || userName == ''){
							layer.alert('�������û����ƣ�',8,!1);
							return false;
						}
						
						if(password1 == null || password == '' ){
							layer.alert('�������û����룡',8,!1);
							return false;
						}
						
						if( password != password1){
							layer.alert('�������벻һ�����룡',8,!1);
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
			<li class="cur">���û�ע��</li>
		</ul>
		<div class="cl"></div>
		<form action="${contextPath}/rest/showpage/registeruser" method="post" id="registerForm">
		<div class="login_main_content">
			<ul class="login_message fl">
				<li>
					<span>��������</span><input type="text" name="userEmail" id="userEmail"  maxlength="50" value="${userEmail}" />
					<c:if test="${userEmailInfo != '' && userEmailInfo != null}">
						<i class="cur">${userEmailInfo}</i>
					</c:if>
				</li>
				<li>
					<span>�û���</span><input type="text" name="userName" id="userName" maxlength="25" value="${userName}"/>
					<c:if test="${userNameInfo != '' && userNameInfo != null}">
						<i class="cur">${userNameInfo}</i>
					</c:if>
				</li>
				<li>
					<span>����</span><input type="password" name="userPassword" id="userPassword" maxlength="25" /><i >6-16����ĸ�����֡��»��ߡ�</i>
				</li>
				<li>
					<span>����ǿ��</span>
					<ul class="fl">
						<li class="cur">��</li>
						<li>��</li>
						<li>ǿ</li>
					</ul>
				</li>
				<li>
					<span>ȷ������</span><input  type="password" name="userPassword1" id="userPassword1" maxlength="25"/><i>δ�����2���������벻ͬ</i>
				</li>
				<!-- 
				<li>
					<span>��&nbsp;ѡ&nbsp;��</span><input type="text" maxlength="25" /><span class="recommend">��д�Ƽ����û�����û���Ƽ��˿ɲ��</span>
				</li>
				 -->
				<li>
					<span>��֤��</span><input type="text" /><a href="#">������&nbsp;��һ��</a>
				</li>
				<li class="radio_but">
					<input id="agree_radio" type="radio" name="agree" />&nbsp;
					<a href="#">
						<label for="agree_radio" >ͬ�� ��ע�����Э�顷</label></a>
				</li>
				<li class="list_last">
					<input id="agree_login" type="button" value="ͬ��Э�鲢ע��"/>
				</li>
			</ul>
			<ul class="login_right fr">
				<li>
					�Ѿ�ע���?<a href="#">������¼</a>
				</li>
				<li>������Ҳ������������վ�˺ŵ�½</li>
				<li class="qq"><a href="#">QQ�˺ŵ�½</a></li>
				<li class="sina"><a href="#">����΢���˺ŵ�½</a></li>
			</ul>
		</div>
		</form>
	</div>
	<div class="cl h15"></div>
	<%@ include file="./pub/footer.jsp" %>
</body>
</html>