<%@page import="com.daikuan.util.system.SystemConfig"%>
<%@ page language="java" contentType="text/html; charset=GBK"    pageEncoding="GBK"%>
<%
request.setAttribute("showpagePath",SystemConfig.getSysPath(request, "showpage"));
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=GBK">
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
			
		}
		
		$(document).ready(function(){
			
			$("#loginHead li.login01").addClass("cur").siblings().removeClass("cur");
			
		})
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
			<li class="cur">1.��д�˻���Ϣ</li>
			<li class="login01">2.��֤������Ϣ</li>
			<li class="login02">3.ע��ɹ�</li>
		</ul>
		<div class="cl"></div>
		<div class="message_verify" id="message_verify">
			<ul class="verify_tab" id="verify">
				<li class="cur">ʹ���ֻ���֤</li>
				<li>ʹ��������֤</li>
			</ul>
			<div class="pe_verify">
				<p>�ֻ����룺<input type="text" /></p>
				<ul>
					<li><input type="button" value="��һ��" /></li>
					<li><input type="button" value="������֤" /></li>
				</ul>
			</div>
			<div class="pe_verify cur">
				<p>�����ʼ���ַ��<input type="text" /><a href="${showpagePath}/registersuccess.jsp">---��֤�ɹ�---</a></p>
				<ul id="goTo">
					<li><input type="button" value="��һ��" /></li>
					<li><input id="jump_over" type="button" value="������֤" /></li>
				</ul>
			</div>
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