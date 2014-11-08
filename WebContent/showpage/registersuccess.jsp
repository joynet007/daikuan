<%@ page language="java" contentType="text/html; charset=GBK"    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=GBK" />
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
			
		};
		
		
		$(document).ready(function(){
			
			$("#loginHead li.login02").addClass("cur").siblings().removeClass("cur");
			
			$("#agree_login").click(
					function(){
						$("#message_verify").show();
						$(".login_main_content").hide();
						$("#loginHead li.login01").addClass("cur").siblings().removeClass("cur");
					}
			);
		});
		
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
			<li class="login02">注册成功</li>
		</ul>
		<div class="cl"></div>
		<div class="login_success">
			<p><span>恭喜您，您已注册成功！！</span></p>
			<p>页面将在5秒钟之后跳转至登陆网页。</p>
			<p><a href="#">点击这里</a>立即跳转</p>
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