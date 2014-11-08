<%@page import="com.daikuan.util.system.SystemConfig"%>
<%@ page language="java" contentType="text/html; charset=GBK"    pageEncoding="GBK"%>
<%
request.setAttribute("showpagePath",SystemConfig.getSysPath(request, "showpage"));
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=GBK">
	<title>宿迁贷款网</title>
	<link rel="stylesheet" href="${showpagePath}/css/global.css" />
	<link rel="stylesheet" href="${showpagePath}/css/user_login.css" />
	<script type="text/javascript" src="${showpagePath}/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="${showpagePath}/js/index.js"></script>
	<script type="text/javascript">
		window.onload=function(){
			nav();
			float_service();
			tab();
			
		}
		
		$(document).ready(function(){
			
			$("#loginHead li.login01").addClass("cur").siblings().removeClass("cur");
			
		})
	</script>
</head>
<body>
	<div class="float">
		<span id="close">×</span>
		<ul>
			<li><span class="tel_num">服务电话</span><br/><span class="tel_num">400-622-8363</span></li>
			<li><span>借款咨询</span><br/><span class="pic_QQ">QQ交谈</span></li>
			<li><span>投资顾问</span><br/><span class="pic_QQ">QQ交谈</span></li>
			<li><span>扫二维码</span><br/><span class="ewm_img"></span></li>
		</ul>
	</div>
	<%@ include file="./pub/header.jsp" %>
	<div class="cl h30"></div>
	<div class="user_login_main">
		<ul class="login_head" id="loginHead">
			<li class="cur">1.填写账户信息</li>
			<li class="login01">2.验证邮箱信息</li>
			<li class="login02">3.注册成功</li>
		</ul>
		<div class="cl"></div>
		<div class="message_verify" id="message_verify">
			<ul class="verify_tab" id="verify">
				<li class="cur">使用手机验证</li>
				<li>使用邮箱验证</li>
			</ul>
			<div class="pe_verify">
				<p>手机号码：<input type="text" /></p>
				<ul>
					<li><input type="button" value="下一步" /></li>
					<li><input type="button" value="跳过验证" /></li>
				</ul>
			</div>
			<div class="pe_verify cur">
				<p>电子邮件地址：<input type="text" /><a href="${showpagePath}/registersuccess.jsp">---验证成功---</a></p>
				<ul id="goTo">
					<li><input type="button" value="下一步" /></li>
					<li><input id="jump_over" type="button" value="跳过验证" /></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="cl h15"></div>
	<div class="footer">
		<div class="footer_content">
			<ul class="footer_left">
				<li class="list01">
					<a href="#">公司介绍</a>
					<a href="#">安全保障</a>
					<a href="#">媒体报道</a>
					<a href="#">社会责任</a>
					<a href="#">招贤纳士</a>
					<a href="#">帮助中心</a>
					<a href="#">联系我们</a>
				</li>
				<li class="list02">
					<a href="#"><span class="sinWb">新浪微博</span></a>
					<a href="#"><span class="sinWx">微信</span></a>
					<a href="#"><span class="safe360">360网站安全监测</span></a>
				</li>
				<li class="copyRight cl">地&nbsp;址：江苏省宿迁市中豪国际花园43-7号&nbsp;&nbsp;备案号:苏ICP备14023586号</li>
			</ul>
			<div class="footer_right">
				<img src="${showpagePath}/images/erweima.png" />
			</div>
		</div>
	</div>
</body>
</html>