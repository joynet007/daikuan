<%@ page language="java" contentType="text/html; charset=GBK"    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 

<head>
	<meta http-equiv="Content-Type" content="text/html;charset=GBK">
	<title>宿迁贷款网</title>
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
	
			/**登录按钮**/
			$("#loginbut").click(
				function (){
					window.location.href="${contextPath}/rest/showpage/login";
				}
			);
			
			/**注册按钮
			**/
			$("#registerbut").click(
				function(){
					window.location.href="${contextPath}/rest/showpage/registeruser";
				}
			);
			
			//借款qq
			$("#jiekuanQQ").click(
					function(){
						window.open('http://wpa.qq.com/msgrd?v=3&uin=752312956&site=qq&menu=yes', 
								'_blank', 'height=502, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');
					}
			);

			//投资qq
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
				<li>网贷网最高<span>年化纯收益</span></li>
				<li class="tc"><b>20.0%</b></li>
				<li><i>100%</i>本息保障<i>100%</i>第三方托管</li>
				<li><i>15%+</i>年化收益<i>10%</i>风险准备金</li>
				
				 <c:if test="${sessionScope.sessionKey== null}" >
					<li class="tc last">
						<input type="button" id="registerbut" value="免费注册" />
						<input type="button" id="loginbut" value="登陆" />
					</li>
				</c:if>
				 <c:if test="${sessionScope.sessionKey!= null}" >
					<li class="tc last">
						<input type="button" id="accountCenter" value="账户中心" />
						<input type="button" id="touzi" value="我要投资" />
					</li>
				</c:if>
				
				
				
			</ul>
		</div>
	</div>
	<div class="data_total">
		<ul>
			<li class="list_img">网站数据统计：</li>
			<li>放款总额：<span>83,400</span>&nbsp;元</li>
			<li>总待回收金额总额：<span>11915.80</span>&nbsp;元</li>
			<li>投资已赚取收益：<span>3,177</span>&nbsp;元</li>
		</ul>
	</div>
	<div class="cl"></div>
	<div class="main">
		<div class="main_content">
			<div class="content_box">
				<div class="title">
					<h3>筹集项目列表</h3>
					<span>更多项目</span>
				</div>
				
				
				
				<c:if test="${daikuans== null || fn:length(daikuans) == 0}">
					<div>
						<c:out value="暂时没有贷款项目！！！"></c:out>
					</div>
				</c:if>
				
				<c:if test="${daikuans!= null || fn:length(daikuans) > 0}">
					<c:forEach items="${daikuans}" var="dk" >
					 <div class="project_list">
						<a class="project_list_img" href="#"><img src="${showpagePath}/images/list01.png"  /></a>
						<ul>
							<li class="list_title"><c:out value="${dk.daikuanTitle}" /></li>
							<li>借款金额：<span class="money">￥<c:out value="${dk.amount}" /></span><span>年利率：<c:out value="${dk.shouYilv}" />%</span><span>借款期限：<c:out value="${dk.qixian}" />个月</span></li>
							<li><b class="fl" style="font-style:normal;">投资进度：</b>
								<div class="fl" style=" position:relative; top:2px;border:1px #CCC solid; height:14px;background:#FFDCAE;width:80px;margin:0 auto; padding:1px">
									<div style=" background:#fb6820; height:14px; width:80%"></div>
								</div>
									<span class="span_img">&nbsp;80%&nbsp;</span><span>还款方式：<c:out value="${dk.huanKuanType}" /></span></li>
							<li></li>
						</ul>
						<div class="but"><a href="${contextPath}/rest/showpage/touzi/mytouzi">我要投资</a></div>
					 </div>
				   	  
					</c:forEach>
				</c:if>

				<!-- 
				<div class="project_list">
					<a class="project_list_img" href="#"><img src="images/list01.png"  /></a>
					<ul>
						<li class="list_title">某贸易公司资金周转借款(二期...</li>
						<li>借款金额：<span class="money">￥200000</span><span>年利率：18.44%</span><span>借款期限：6个月</span></li>
						<li><b class="fl" style="font-style:normal;">投资进度：</b><span class="span_img">&nbsp;50%&nbsp;</span><span>还款方式：每月还息到期还本</span></li>
						<li></li>
					</ul>
					<div class="but"><a href="#">等待复审</a></div>
				</div>
			   -->				
			</div>
		</div>
		<div class="slider">
			<div class="notice slider_content">
					<h4 class="list_title">发标公告<a href="#" class="more">更多&nbsp;>></a></h4>
				<ul class="s_content">
					<li><a href="#">关于五金店借款（一期）公告</a></li>
					<li><a href="#">关于某工程项目借款公告</a></li>
					<li><a href="#">关于五金店借款（一期）公告</a></li>
					<li><a href="#">关于某工程项目借款公告</a></li>
					<li><a href="#">关于五金店借款（一期）公告</a></li>
					<li><a href="#">关于某工程项目借款公告</a></li>
					<li><a href="#">关于某工程项目借款公告</a></li>
					<li><a href="#">关于某工程项目借款公告</a></li>
					<li><a href="#">关于某工程项目借款公告</a></li>
					<li><a href="#">关于某工程项目借款公告</a></li>
					<li><a href="#">关于某工程项目借款公告</a></li>
				</ul>
			</div>
			<div class="success_loan slider_content">
				<h4 class="list_title">成功借款<a href="#" class="more">更多&nbsp;>></a></h4>
				<div class="slider_loan">
					<ul class="s_content last">
						<li>
							<span class="span_title">杨先生钢材贸易公司借款（一期）</span></br>
							<span>金额：￥1000000元</span></br>
							<span>利率：18.44%</span>
						</li>
						<li>
							<span class="span_title">杨先生钢材贸易公司借款（一期）</span></br>
							<span>金额：￥1000000元</span></br>
							<span>利率：18.44%</span>
						</li>
						<li>
							<span class="span_title">生意周转借款（一期）</span></br>
							<span>金额：￥500000元</span></br>
							<span>利率：18.44%</span>
						</li>
						<li>
							<span class="span_title">宿城区某宾馆借款</span></br>
							<span>金额：￥100000元</span></br>
							<span>利率：18.44%</span>
						</li>
						<li class="success_loan_last">
							<span class="span_title">张先生地板店借款（二期）</span></br>
							<span>金额：￥400000元</span></br>
							<span>利率：18.44%</span>
						</li>
					</ul>
				</div>
			</div>
			<div class="success_invest slider_content">
				<h4 class="list_title">成功投资<a href="#" class="more">更多&nbsp;>></a></h4>
				<div class="slider_invest">
					<ul class="s_content last">
						<li>
							<span class="span_title">杨先生钢材贸易公司借款（一期）</span></br>
							<span>金额：￥1000000元</span></br>
							<span>利率：18.44%</span>
						</li>
						<li>
							<span class="span_title">杨先生钢材贸易公司借款（一期）</span></br>
							<span>金额：￥1000000元</span></br>
							<span>利率：18.44%</span>
						</li>
						<li>
							<span class="span_title">生意周转借款（一期）</span></br>
							<span>金额：￥500000元</span></br>
							<span>利率：18.44%</span>
						</li>
						<li>
							<span class="span_title">宿城区某宾馆借款</span></br>
							<span>金额：￥100000元</span></br>
							<span>利率：18.44%</span>
						</li>
						<li class="success_loan_last">
							<span class="span_title">张先生地板店借款（二期）</span></br>
							<span>金额：￥400000元</span></br>
							<span>利率：18.44%</span>
						</li>
						<li class="success_loan_last">
							<span class="span_title">张先生地板店借款（二期）</span></br>
							<span>金额：￥400000元</span></br>
							<span>利率：18.44%</span>
						</li>
						<li class="success_loan_last">
							<span class="span_title">张先生地板店借款（二期）</span></br>
							<span>金额：￥400000元</span></br>
							<span>利率：18.44%</span>
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