<%@ page language="java" contentType="text/html; charset=GBK"    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=GBK" />
	<title>��Ǩ������</title>
	<link rel="stylesheet" href="${showpagePath}/css/global.css" />
	<link rel="stylesheet" href="${showpagePath}/css/my_account.css" />
	<script type="text/javascript" src="${showpagePath}/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="${showpagePath}/js/index.js"></script>
	<script type="text/javascript" src="${showpagePath}/layer/layer.min.js"></script>
	<script type="text/javascript">
		window.onload=function(){
			breath();
			nav();
			float_service();
		};
	</script>
</head>
<body>
	<div class="float">
		<span id="close">��</span>
		<ul>
			<li><span class="tel_num">����绰</span></br><span class="tel_num">400-622-8363</span></li>
			<li><span>�����ѯ</span></br><span class="pic_QQ">QQ��̸</span></li>
			<li><span>Ͷ�ʹ���</span></br><span class="pic_QQ">QQ��̸</span></li>
			<li><span>ɨ��ά��</span></br><span class="ewm_img"></span></li>
		</ul>
	</div>
	<%@include file="./../pub/header.jsp" %>
	
	<div class="cl h10"></div>
	<div class="account_main">
		<div class="sliderbar">
			<ul class="account_center"> 
				<li class="list_title">��������</li>
				<li><a href="#">�˻�����</a></li>
				<li><a href="#">��֤����</a></li>
				<li><a href="#">��ֵ����</a></li>
				<li><a href="#">���ֹ���</a></li>
			</ul>
			<ul class="set">
				<li class="list_title">Ͷ�ʹ���</li>
				<li><a href="#">�ҵ�Ͷ��</a></li>
				<li><a href="#">�ҵĽ��</a></li>
				<li><a href="#">�ҵĹ�ע</a></li>
				<li><a href="#">���ͳ��</a></li>
			</ul>
			<ul class="user_message">
				<li class="list_title">�û���Ϣ</li>
				<li><a href="#">��������</a></li>
				<li><a href="#">ͷ�����</a></li>
				<li><a href="#">�������</a></li>
				<li><a href="#">���п�����</a></li>
			</ul>
		</div>
		<div class="account_main_content">
			<div class="main_content_title">
				<span>������</span><b>��100000</b><a href="#"><input type="button" value="��ֵ" /></a><a href="#"><input class="tixian" type="button" value="����" /></a><span>������տ��</span><b>��0.00</b>
			</div>
			<div class="person_message">
				<p>
					<span class="fl">�ҵĸ�����Ϣ</span>
					<a class="fr"  href="#">�޸ĸ�����Ϣ</a>
				</p>
				<div class="cl"></div>
				<span class="head_img fl"><img src="${showpagePath}/images/change_head.gif" alt="" /></span>
				<ul class="message fl">
					<li><span>Joynet007</span>,��ӭ����<b class="card_grade">���õȼ���</b></li>
					<li><b>�û����ͣ�</b>��ͨ��Ա&nbsp;&nbsp;<a href="#">����VIP</a></li>
					<li><b>ע��ʱ�䣺</b>2014-08-24<b>&nbsp;&nbsp;����¼ʱ�䣺</b>2014-10-16</li>
					<li><b>����ͳ�ƣ�</b><i>1</i>&nbsp;������¼<i>&nbsp;0&nbsp;</i>��Ͷ���¼</li>
				</ul>
				<ul class="fast_gallery fl">
					<li><span>���ͨ��</span></li>
					<li class="li_01"><a href="#">�˺ų�ֵ</a></li>
					<li class="li_02"><a href="#">��������</a></li>
					<li class="li_03"><a href="#">Ͷ�ʼ�¼</a></li>
					<li class="li_04"><a href="#">���ͳ��</a></li>
				</ul>
				<ul class="safe_center fl">
						<li><span>��ȫ����</span></li>
						<li><b>������֤��</b><i></i>Joynet007@163.com</li>
						<li><b>�ֻ���֤��</b><i></i>18611600828</li>
						<li><b>�����֤��</b><i></i>Ԭ��</li>
						<li><b>��Ƶ��֤��</b><i></i>����δ������Ƶ��֤</li>
				</ul>
			</div>
			<div class="account_profile cl">
				<p>�˻��ſ�</p>
				<ul class="profile_title">
					<li class="title_head">
						<span>�˻����ʲ�</span>
						<span>����ʲ�</span>
						<span class="span_third">��ծ</span>
						<span>�˻����</span>
					</li>
					<li class="title_bd">
						<span>3,028.00Ԫ</span>
						<span>=</span>
						<span>2,0811.6Ԫ</span>
						<span>+</span>
						<span class="red">-0.00Ԫ</span>
						<span>+</span>
						<span>216.40Ԫ</span>

					</li>
				</ul>
				<ul class="profile_content">
					<li>�˻��ܶ<b>��100000</b></li>
					<li>������<b>��100000</b></li>
					<li>������<b>��0.00</b></li>
					<li>���ս�<b>��0.00</b></li>
					<li>���ֳɹ��ܶ<b>��0.00��0�ʣ�</b></li>
					<li>��ֵ�ɹ��ܶ<b>��0.00</b></li>
					<li>���߳�ֵ�ܶ<b>��0.00</b></li>
					<li>���³�ֵ�ܶ<b>��0.00</b></li>
					<li>�ֶ���ֵ�ܶ<b>��0.00</b></li>
					<li>���ö�ȣ�<b>��0.00</b></li>
					<li>���ö�ȣ�<b>��0.00</b></li>
				</ul>
			</div>
			<div class="income_loan_details cl">
				<p><span class="fl">��������</span><a class="fr" href="#">Ͷ��ͳ��</a></p>
				<ul>
					<li>��׬��Ϣ��<b>0.00Ԫ</b></li>
					<li>��׬��Ϣ��<b>0.00Ԫ</b></li>
					<li>��׬��ΥԼ��<b>0.00Ԫ</b></li>
					<li>��׬������<b>0.00Ԫ</b></li>
					<li>�����ձ�Ϣ��<b>0.00Ԫ</b></li>
					<li>�ѻ��ձ�Ϣ��<b>0.00Ԫ</b></li>
				</ul>
			</div>
			<div class="income_loan_details cl">
				<p><span class="fl">�������</span><a class="fr" href="#">���ͳ��</a></p>
				<ul>
					<li>����ܶ<b>0.00Ԫ</b></li>
					<li>������������<b>0.00Ԫ</b></li>
					<li>�ѻ���Ϣ��<b>0.00Ԫ</b></li>
					<li>������Ϣ��<b>0.00Ԫ</b></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="cl h15"></div>
	<%@include file="./../pub/footer.jsp" %>
</body>
</html>