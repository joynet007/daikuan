<%@ page language="java" contentType="text/html; charset=GBK"    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 

<head>
	<meta http-equiv="Content-Type" content="text/html;charset=GBK">
	<title>��Ǩ������</title>
	<link rel="stylesheet" href="${showpagePath}/css/global.css" />
	<link rel="stylesheet" href="${showpagePath}/css/index.css" />
	<script type="text/javascript" src="${showpagePath}/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="${showpagePath}/js/index.js"></script>
	<script type="text/javascript" src="${showpagePath}/layer/layer.min.js"></script>
	<script type="text/javascript">
		window.onload=function(){
			breath();
			nav();
			wufeng01();
			wufeng02();
			float_service();
			$("#banner .circle").css("left",($(window).width()-$("#banner .circle").width())*0.5);
		};
		
		$(document).ready(function(){
	
			/**��¼��ť**/
			$("#loginbut").click(
				function (){
					window.location.href="${contextPath}/rest/showpage/login";
				}
			);
			
			/**ע�ᰴť
			**/
			$("#registerbut").click(
				function(){
					window.location.href="${contextPath}/rest/showpage/registeruser";
				}
			);
			
			//���qq
			$("#jiekuanQQ").click(
					function(){
						window.open('http://wpa.qq.com/msgrd?v=3&uin=752312956&site=qq&menu=yes', 
								'_blank', 'height=502, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');
					}
			);

			//Ͷ��qq
			$("#touziQQ").click(
					
				function(){
					window.open('http://wpa.qq.com/msgrd?v=3&uin=104820757&site=qq&menu=yes', 
								'_blank', 'height=502, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');

				}
			);
			
			
			
		});
		
		
	</script>
</head>
<body>
	
	
	<%@ include file="./pub/header.jsp" %>
	
	<div id="banner">
		<ul class="banner_img">
			<li class="cur img01"></li>
			<li class="img02"></li>
			<li class="img03"></li>
			<li class="img04"></li>
		</ul>
		<ul class="circle">
			<li class="cur"></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
		<div class="user">
			<ul class="user_content">
				<li>���������<span>�껯������</span></li>
				<li class="tc"><b>20.0%</b></li>
				<li><i>100%</i>��Ϣ����<i>100%</i>�������й�</li>
				<li><i>15%+</i>�껯����<i>10%</i>����׼����</li>
				
				 <c:if test="${sessionScope.sessionKey== null}" >
					<li class="tc last">
						<input type="button" id="registerbut" value="���ע��" />
						<input type="button" id="loginbut" value="��½" />
					</li>
				</c:if>
				 <c:if test="${sessionScope.sessionKey!= null}" >
					<li class="tc last">
						<input type="button" id="accountCenter" value="�˻�����" />
						<input type="button" id="touzi" value="��ҪͶ��" />
					</li>
				</c:if>
				
				
				
			</ul>
		</div>
	</div>
	<div class="data_total">
		<ul>
			<li class="list_img">��վ����ͳ�ƣ�</li>
			<li>�ſ��ܶ<span>83,400</span>&nbsp;Ԫ</li>
			<li>�ܴ����ս���ܶ<span>11915.80</span>&nbsp;Ԫ</li>
			<li>Ͷ����׬ȡ���棺<span>3,177</span>&nbsp;Ԫ</li>
		</ul>
	</div>
	<div class="cl"></div>
	<div class="main">
		<div class="main_content">
			<div class="content_box">
				<div class="title">
					<h3>�Ｏ��Ŀ�б�</h3>
					<span>������Ŀ</span>
				</div>
				
				
				
				<c:if test="${daikuans== null || fn:length(daikuans) == 0}">
					<div>
						<c:out value="��ʱû�д�����Ŀ������"></c:out>
					</div>
				</c:if>
				
				<c:if test="${daikuans!= null || fn:length(daikuans) > 0}">
					<c:forEach items="${daikuans}" var="dk" >
					 <div class="project_list">
						<a class="project_list_img" href="#"><img src="${showpagePath}/images/list01.png"  /></a>
						<ul>
							<li class="list_title"><c:out value="${dk.daikuanTitle}" /></li>
							<li>����<span class="money">��<c:out value="${dk.amount}" /></span><span>�����ʣ�<c:out value="${dk.shouYilv}" />%</span><span>������ޣ�<c:out value="${dk.qixian}" />����</span></li>
							<li><b class="fl" style="font-style:normal;">Ͷ�ʽ��ȣ�</b>
								<div class="fl" style=" position:relative; top:2px;border:1px #CCC solid; height:14px;background:#FFDCAE;width:80px;margin:0 auto; padding:1px">
									<div style=" background:#fb6820; height:14px; width:80%"></div>
								</div>
									<span class="span_img">&nbsp;80%&nbsp;</span><span>���ʽ��<c:out value="${dk.huanKuanType}" /></span></li>
							<li></li>
						</ul>
						<div class="but"><a href="${contextPath}/rest/showpage/touzi/mytouzi">��ҪͶ��</a></div>
					 </div>
				   	  
					</c:forEach>
				</c:if>

				<!-- 
				<div class="project_list">
					<a class="project_list_img" href="#"><img src="images/list01.png"  /></a>
					<ul>
						<li class="list_title">ĳó�׹�˾�ʽ���ת���(����...</li>
						<li>����<span class="money">��200000</span><span>�����ʣ�18.44%</span><span>������ޣ�6����</span></li>
						<li><b class="fl" style="font-style:normal;">Ͷ�ʽ��ȣ�</b><span class="span_img">&nbsp;50%&nbsp;</span><span>���ʽ��ÿ�»�Ϣ���ڻ���</span></li>
						<li></li>
					</ul>
					<div class="but"><a href="#">�ȴ�����</a></div>
				</div>
			   -->				
			</div>
		</div>
		<div class="slider">
			<div class="notice slider_content">
					<h4 class="list_title">���깫��<a href="#" class="more">����&nbsp;>></a></h4>
				<ul class="s_content">
					<li><a href="#">���������һ�ڣ�����</a></li>
					<li><a href="#">����ĳ������Ŀ����</a></li>
					<li><a href="#">���������һ�ڣ�����</a></li>
					<li><a href="#">����ĳ������Ŀ����</a></li>
					<li><a href="#">���������һ�ڣ�����</a></li>
					<li><a href="#">����ĳ������Ŀ����</a></li>
					<li><a href="#">����ĳ������Ŀ����</a></li>
					<li><a href="#">����ĳ������Ŀ����</a></li>
					<li><a href="#">����ĳ������Ŀ����</a></li>
					<li><a href="#">����ĳ������Ŀ����</a></li>
					<li><a href="#">����ĳ������Ŀ����</a></li>
				</ul>
			</div>
			<div class="success_loan slider_content">
				<h4 class="list_title">�ɹ����<a href="#" class="more">����&nbsp;>></a></h4>
				<div class="slider_loan">
					<ul class="s_content last">
						<li>
							<span class="span_title">�������ֲ�ó�׹�˾��һ�ڣ�</span></br>
							<span>����1000000Ԫ</span></br>
							<span>���ʣ�18.44%</span>
						</li>
						<li>
							<span class="span_title">�������ֲ�ó�׹�˾��һ�ڣ�</span></br>
							<span>����1000000Ԫ</span></br>
							<span>���ʣ�18.44%</span>
						</li>
						<li>
							<span class="span_title">������ת��һ�ڣ�</span></br>
							<span>����500000Ԫ</span></br>
							<span>���ʣ�18.44%</span>
						</li>
						<li>
							<span class="span_title">�޳���ĳ���ݽ��</span></br>
							<span>����100000Ԫ</span></br>
							<span>���ʣ�18.44%</span>
						</li>
						<li class="success_loan_last">
							<span class="span_title">�������ذ������ڣ�</span></br>
							<span>����400000Ԫ</span></br>
							<span>���ʣ�18.44%</span>
						</li>
					</ul>
				</div>
			</div>
			<div class="success_invest slider_content">
				<h4 class="list_title">�ɹ�Ͷ��<a href="#" class="more">����&nbsp;>></a></h4>
				<div class="slider_invest">
					<ul class="s_content last">
						<li>
							<span class="span_title">�������ֲ�ó�׹�˾��һ�ڣ�</span></br>
							<span>����1000000Ԫ</span></br>
							<span>���ʣ�18.44%</span>
						</li>
						<li>
							<span class="span_title">�������ֲ�ó�׹�˾��һ�ڣ�</span></br>
							<span>����1000000Ԫ</span></br>
							<span>���ʣ�18.44%</span>
						</li>
						<li>
							<span class="span_title">������ת��һ�ڣ�</span></br>
							<span>����500000Ԫ</span></br>
							<span>���ʣ�18.44%</span>
						</li>
						<li>
							<span class="span_title">�޳���ĳ���ݽ��</span></br>
							<span>����100000Ԫ</span></br>
							<span>���ʣ�18.44%</span>
						</li>
						<li class="success_loan_last">
							<span class="span_title">�������ذ������ڣ�</span></br>
							<span>����400000Ԫ</span></br>
							<span>���ʣ�18.44%</span>
						</li>
						<li class="success_loan_last">
							<span class="span_title">�������ذ������ڣ�</span></br>
							<span>����400000Ԫ</span></br>
							<span>���ʣ�18.44%</span>
						</li>
						<li class="success_loan_last">
							<span class="span_title">�������ذ������ڣ�</span></br>
							<span>����400000Ԫ</span></br>
							<span>���ʣ�18.44%</span>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="cl h15"></div>
	<%@ include file="./pub/footer.jsp" %>
</body>
</html>