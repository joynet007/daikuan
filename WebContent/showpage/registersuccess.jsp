<%@ page language="java" contentType="text/html; charset=GBK"    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=GBK" />
	<title>��Ǩ������</title>
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
		<span id="close">��</span>
		<ul>
			<li><span class="tel_num">����绰</span><br/><span class="tel_num">400-622-8363</span></li>
			<li><span>�����ѯ</span><br/><span class="pic_QQ">QQ��̸</span></li>
			<li><span>Ͷ�ʹ���</span><br/><span class="pic_QQ">QQ��̸</span></li>
			<li><span>ɨ��ά��</span><br/><span class="ewm_img"></span></li>
		</ul>
	</div>
	<%@ include file="./pub/header.jsp" %>
	
	<div class="cl h30"></div>
	<div class="user_login_main">
		<ul class="login_head" id="loginHead">
			<li class="login02">ע��ɹ�</li>
		</ul>
		<div class="cl"></div>
		<div class="login_success">
			<p><span>��ϲ��������ע��ɹ�����</span></p>
			<p>ҳ�潫��5����֮����ת����½��ҳ��</p>
			<p><a href="#">�������</a>������ת</p>
		</div>
	</div>
	<div class="cl h15"></div>
	<div class="footer">
		<div class="footer_content">
			<ul class="footer_left">
				<li class="list01">
					<a href="#">��˾����</a>
					<a href="#">��ȫ����</a>
					<a href="#">ý�屨��</a>
					<a href="#">�������</a>
					<a href="#">������ʿ</a>
					<a href="#">��������</a>
					<a href="#">��ϵ����</a>
				</li>
				<li class="list02">
					<a href="#"><span class="sinWb">����΢��</span></a>
					<a href="#"><span class="sinWx">΢��</span></a>
					<a href="#"><span class="safe360">360��վ��ȫ���</span></a>
				</li>
				<li class="copyRight cl">��&nbsp;ַ������ʡ��Ǩ���к����ʻ�԰43-7��&nbsp;&nbsp;������:��ICP��14023586��</li>
			</ul>
			<div class="footer_right">
				<img src="${showpagePath}/images/erweima.png" />
			</div>
		</div>
	</div>
</body>
</html>