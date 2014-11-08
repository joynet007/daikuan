<%@ page language="java" contentType="text/html; charset=GBK"    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=GBK" />
	<title>宿迁贷款网</title>
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
		<span id="close">×</span>
		<ul>
			<li><span class="tel_num">服务电话</span></br><span class="tel_num">400-622-8363</span></li>
			<li><span>借款咨询</span></br><span class="pic_QQ">QQ交谈</span></li>
			<li><span>投资顾问</span></br><span class="pic_QQ">QQ交谈</span></li>
			<li><span>扫二维码</span></br><span class="ewm_img"></span></li>
		</ul>
	</div>
	<%@include file="./../pub/header.jsp" %>
	
	<div class="cl h10"></div>
	<div class="account_main">
		<div class="sliderbar">
			<ul class="account_center"> 
				<li class="list_title">管理中心</li>
				<li><a href="#">账户管理</a></li>
				<li><a href="#">认证中心</a></li>
				<li><a href="#">充值管理</a></li>
				<li><a href="#">提现管理</a></li>
			</ul>
			<ul class="set">
				<li class="list_title">投资管理</li>
				<li><a href="#">我的投标</a></li>
				<li><a href="#">我的借款</a></li>
				<li><a href="#">我的关注</a></li>
				<li><a href="#">理财统计</a></li>
			</ul>
			<ul class="user_message">
				<li class="list_title">用户信息</li>
				<li><a href="#">个人资料</a></li>
				<li><a href="#">头像管理</a></li>
				<li><a href="#">密码管理</a></li>
				<li><a href="#">银行卡管理</a></li>
			</ul>
		</div>
		<div class="account_main_content">
			<div class="main_content_title">
				<span>可用余额：</span><b>￥100000</b><a href="#"><input type="button" value="充值" /></a><a href="#"><input class="tixian" type="button" value="提现" /></a><span>最近代收款金额：</span><b>￥0.00</b>
			</div>
			<div class="person_message">
				<p>
					<span class="fl">我的个人信息</span>
					<a class="fr"  href="#">修改个人信息</a>
				</p>
				<div class="cl"></div>
				<span class="head_img fl"><img src="${showpagePath}/images/change_head.gif" alt="" /></span>
				<ul class="message fl">
					<li><span>Joynet007</span>,欢迎您！<b class="card_grade">信用等级：</b></li>
					<li><b>用户类型：</b>普通会员&nbsp;&nbsp;<a href="#">申请VIP</a></li>
					<li><b>注册时间：</b>2014-08-24<b>&nbsp;&nbsp;最后登录时间：</b>2014-10-16</li>
					<li><b>个人统计：</b><i>1</i>&nbsp;条借款记录<i>&nbsp;0&nbsp;</i>条投标记录</li>
				</ul>
				<ul class="fast_gallery fl">
					<li><span>快捷通道</span></li>
					<li class="li_01"><a href="#">账号充值</a></li>
					<li class="li_02"><a href="#">申请提现</a></li>
					<li class="li_03"><a href="#">投资记录</a></li>
					<li class="li_04"><a href="#">借款统计</a></li>
				</ul>
				<ul class="safe_center fl">
						<li><span>安全中心</span></li>
						<li><b>邮箱认证：</b><i></i>Joynet007@163.com</li>
						<li><b>手机认证：</b><i></i>18611600828</li>
						<li><b>身份认证：</b><i></i>袁亮</li>
						<li><b>视频认证：</b><i></i>您还未进行视频认证</li>
				</ul>
			</div>
			<div class="account_profile cl">
				<p>账户概况</p>
				<ul class="profile_title">
					<li class="title_head">
						<span>账户净资产</span>
						<span>理财资产</span>
						<span class="span_third">借款负债</span>
						<span>账户余额</span>
					</li>
					<li class="title_bd">
						<span>3,028.00元</span>
						<span>=</span>
						<span>2,0811.6元</span>
						<span>+</span>
						<span class="red">-0.00元</span>
						<span>+</span>
						<span>216.40元</span>

					</li>
				</ul>
				<ul class="profile_content">
					<li>账户总额：<b>￥100000</b></li>
					<li>可用余额：<b>￥100000</b></li>
					<li>冻结余额：<b>￥0.00</b></li>
					<li>待收金额：<b>￥0.00</b></li>
					<li>提现成功总额：<b>￥0.00（0笔）</b></li>
					<li>充值成功总额：<b>￥0.00</b></li>
					<li>在线充值总额：<b>￥0.00</b></li>
					<li>线下充值总额：<b>￥0.00</b></li>
					<li>手动充值总额：<b>￥0.00</b></li>
					<li>信用额度：<b>￥0.00</b></li>
					<li>可用额度：<b>￥0.00</b></li>
				</ul>
			</div>
			<div class="income_loan_details cl">
				<p><span class="fl">收益详情</span><a class="fr" href="#">投资统计</a></p>
				<ul>
					<li>已赚利息：<b>0.00元</b></li>
					<li>已赚罚息：<b>0.00元</b></li>
					<li>已赚罚违约金：<b>0.00元</b></li>
					<li>已赚奖励：<b>0.00元</b></li>
					<li>待回收本息：<b>0.00元</b></li>
					<li>已回收本息：<b>0.00元</b></li>
				</ul>
			</div>
			<div class="income_loan_details cl">
				<p><span class="fl">借款详情</span><a class="fr" href="#">借款统计</a></p>
				<ul>
					<li>借款总额：<b>0.00元</b></li>
					<li>发布借款笔数：<b>0.00元</b></li>
					<li>已还本息：<b>0.00元</b></li>
					<li>待还本息：<b>0.00元</b></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="cl h15"></div>
	<%@include file="./../pub/footer.jsp" %>
</body>
</html>