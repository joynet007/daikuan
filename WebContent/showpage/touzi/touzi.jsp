<%@ page language="java" contentType="text/html; charset=GBK"    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=GBK" />
	<title>��Ǩ������</title>
	<link rel="stylesheet" href="${showpagePath}/css/global.css" />
	<link rel="stylesheet" href="${showpagePath}/css/sign_up.css" />
	<script type="text/javascript" src="${showpagePath}/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="${showpagePath}/js/index.js"></script>
	<script type="text/javascript">
		window.onload=function(){
			nav();
			float_service();
			singup();
			var jindutiao = '<div class="fl" style=" position:relative; top:5px;border:1px #CCC solid; height:14px;background:#FFDCAE; width:120px;margin:0 auto; padding:1px"><div style=" background:#fb6820; height:14px; width:50%"></div><strong style=" position:absolute; width:120px; top:-4px; text-align:center; overflow:hidden">50%</strong></div>';
			$(".span_img").before(jindutiao);
		}
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
	<%@ include file="./../pub/header.jsp" %>
	<div class="sign_up_main">
		<div class="sign_up_head">
			<div class="borrow_message fl">
				<h5>����˵���</h5>
				<span><img src="${showpagePath}/images/list01.png"/></span>
				<p>�û�����caixia123</p>
				<p>�û����᣺</p>
				<p>��֤��Ϣ��</p>
				<ul>
					<li class="img01"></li>
					<li class="img02"></li>
					<li class="img03"></li>
					<li class="img04"></li>
				</ul>
			</div>
			<div class="borrow_title fl">
				<h5>�����⣺ĳ��ҵ��˾�ʽ���ת��һ�ڣ�</h5>
				<ul>
					<li>
						<span>�������</span>
						<span>��֤��</span>
					</li>
					<li>
						<span>����Ԫ��</span>
						<span class="red">500000</span>
					</li>
					<li>
						<span>�������</span>
						<span>6����</span>
					</li>
					<li>
						<span>������</span>
						<span class="red">18.44%</span>
					</li>
				</ul>
				<ul class="borrow_detail cl">
					<li>����ɽ�<span class="red">500000</span>&nbsp;�����<span class="red">0</span>Ԫ</li>
					<li>
						<span class="span_img">&nbsp;50%</span><span class="jdt"></span>
					</li>
					<li>Ͷ��������15�ʣ���500000Ԫ</li>
					<li>���ʽ��ÿ�»�Ϣ���ڻ���</li>
					<li>���ʱ�䣺2014-10-16 17:17:08</li>
				</ul>
				<div class="sign_up_but fr">
					<a href="#">����Ͷ��</a>
				</div>
			</div>
		</div>
		<div class="cl h10"></div>
		<div class="sing_up_content">
			<ul id="signUp">
				<li class="cur">�������</li>
				<li>Ͷ���¼</li>
				<li>�˻�����</li>
				<li>�������</li>
				<li>Ͷ������</li>
				<li>��������</li>
				<li>�������</li>
			</ul>
			<div class="cl"></div>
			<div class="ul_content content_wid cur">
				<table>
					<tbody>
						<tr>
							<td>����ˣ�</td>
							<td>������</td>
						</tr>
						<tr>
							<td>�����;��</td>
							<td>������ת</td>
						</tr>
						<tr>
							<td>������Դ��</td>
							<td>���ۻ��������Ӫҵ����</td>
						</tr>
						<tr class="bn">
							<td>�������飺</td>
							<td><span>1.����50��Ԫ��</span>
								<span>2.������ޣ�6����</span>
								<span>3.�����Ϣ���껯����18.44%</span>
								<span>4.���ʽ�����¸�Ϣ�����ڻ���</span>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="ul_content">
				<table>
					<tbody>
						<tr>
							<td>���</td>
							<td>Ͷ����</td>
							<td>Ͷ����</td>
							<td>��Ч���</td>
							<td>Ͷ��ʱ��</td>
						</tr>
						<tr>
							<td>1</td>
							<td>Win360963***</td>
							<td>10000</td>
							<td>10000</td>
							<td>2014-10-16 18:01:38</td>
						</tr>
						<tr>
							<td>2</td>
							<td>xiacl6***</td>
							<td>500</td>
							<td>500</td>
							<td>2014-10-16 18:34:07</td>
						</tr>
						<tr>
							<td>2</td>
							<td>xiacl6***</td>
							<td>500</td>
							<td>500</td>
							<td>2014-10-16 18:34:07</td>
						</tr>
						<tr>
							<td>2</td>
							<td>xiacl6***</td>
							<td>500</td>
							<td>500</td>
							<td>2014-10-16 18:34:07</td>
						</tr>
						<tr>
							<td>2</td>
							<td>xiacl6***</td>
							<td>500</td>
							<td>500</td>
							<td>2014-10-16 18:34:07</td>
						</tr>
						<tr>
							<td>2</td>
							<td>xiacl6***</td>
							<td>500</td>
							<td>500</td>
							<td>2014-10-16 18:34:07</td>
						</tr>
						<tr>
							<td>2</td>
							<td>xiacl6***</td>
							<td>500</td>
							<td>500</td>
							<td>2014-10-16 18:34:07</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="ul_content">
				<table>
					<tbody>
						<tr>
							<td>�˻��ܶ��0Ԫ</td>
							<td>�����ܶ��0Ԫ</td>
							<td>�����ܶ��0Ԫ</td>
						</tr>
						<tr>
							<td>��ֵ�ܶ��0Ԫ</td>
							<td>�����ܶ��0Ԫ</td>
						</tr>
					</tbody>
				</table>
				<p>ע���������˻��ʽ������ڱ�Ľ��ȫ��������Զ����ٹ�����ʾ��</p>
			</div>
			<div class="ul_content">
				<table>
					<tbody>
						<tr>
							<td>����ܶ�:��0Ԫ</td>
							<td>�ѻ����ܶ�:��0Ԫ</td>
							<td>�������ܶ�:��0Ԫ</td>
						</tr>
						<tr>
							<td>�����ܶ�:��0Ԫ</td>
							<td>���ɹ�:0��</td>
							<td>����������:0��</td>
						</tr>
						<tr>
							<td>�ѳɹ����0��</td>
						</tr>
					</tbody>
				</table>
			</div>
			 <div class="ul_content">
			 	<p>�����δѡ�񹫿���Ͷ������</p>
			 </div>
			 <div class="ul_content">
			 	<table>
			 		<tbody>
			 			<tr>
			 				<td>�Ա�-</td>
			 				<td>����״����-</td>
			 				<td>�־�ס�أ�-</td>
			 			</tr>
			 			<tr>
			 				<td>�������£�-</td>
			 				<td>�Ļ��̶ȣ�-</td>
			 				<td>ְҵ��-</td>
			 			</tr>
			 		</tbody>
			 	</table>
			 </div>
			 <div class="ul_content">
			 	<table>
			 		<tbody>
			 			<tr>
			 				<td>���</td>
			 				<td>��������</td>
			 				<td>����˵��</td>
			 				<td>����</td>
			 				<td>״̬</td>
			 				<td>���ʱ��</td>
			 			</tr>
			 		</tbody>
			 	</table>
			 </div>
		</div>

	</div>
	
	<div class="cl h15"></div>
	<%@ include file="./../pub/footer.jsp" %>
</body>
</html>