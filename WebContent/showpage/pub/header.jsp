<%@ page language="java" contentType="text/html; charset=GBK"    pageEncoding="GBK"%>
<script type="text/javascript">

window.setInterval(dotime,1000);
function dotime(){
	var date = new Date();
	var year = date.getFullYear();
	var month = date.getMonth()+1;
	var day = date.getDate();
	var hour = date.getHours();
	var minute = date.getMinutes();
	var second = date.getSeconds();
	
	var isxiawu;
	var week;
	if(hour > 12 ){
		isxiawu="下午";
	}else{
		isxiawu="上午";
	}
	
	if (date.getDay() == 5){
		week="星期五";
	}else if (date.getDay() == 6){
		week="星期六";
	}else if(date.getDay() == 0){
		week="星期日";
	}else if(date.getDay() == 1){
		week="星期一";
	}else if(date.getDay() == 2){
		week="星期二";
	}else if(date.getDay() == 3){
		week="星期三";
	}else if(date.getDay() == 4){
		week="星期四";
	}
	document.getElementById("p_time").innerText=year+'年'+month+'月'+day+'日 '+'  '+isxiawu+"  "+hour+':'+minute+':'+second+'  '+week;
}

function dologinout(){
	layer.confirm('确认退出？',function(){
	    window.location.href="${contextPath}/rest/showpage/loginout";
	});
};

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
					
</script>

<!-- 
<script type="text/javascript">
	document.write(year+'年'+month+'月'+day+'日 '+'&nbsp;&nbsp;'+isxiawu+"&nbsp;&nbsp;"+hour+':'+minute+':'+second+'&nbsp;&nbsp;'+week);
</script>
 -->
<!-- 漂浮窗口 -->
 <div class="float">
		<span id="close">×</span>
		<ul>
			<li><span class="tel_num">服务电话</span></br><span class="tel_num">400-622-8363</span></li>
			<li><span>借款咨询</span></br><span class="pic_QQ" id="jiekuanQQ">QQ交谈</span></li>
			<li><span>投资顾问</span></br><span class="pic_QQ" id="touziQQ">QQ交谈</span></li>
			<li><span>扫二维码</span></br><span class="ewm_img"></span></li>
		</ul>
</div>
 <!-- 导航栏 -->
<div class="header">
		<div class="top_part">
			<div class="top_part_inner">
				<p id="p_time">
				&nbsp;&nbsp;
				<script>
					document.getElementById("p_time").innerText=year+'年'+month+'月'+day+'日 '+'  '+isxiawu+"  "+hour+':'+minute+':'+second+'  '+week;
				</script>
				</p>
				 <c:if test="${sessionScope.sessionKey.userName==null}" >
					<div class="button">
						<a href="${contextPath}/rest/showpage/login">登录</a>
						<a href="${contextPath}/rest/showpage/registeruser">免费注册</a>
					</div>
				</c:if>
				<c:if test="${sessionScope.sessionKey!= null}" >
					<div class="button">
						欢迎  ${sessionScope.sessionKey.userName} , 回到宿迁贷款网&nbsp;&nbsp;
						<a href="${contextPath}/rest/showpage/account/accountcenter">账户中心</a>&nbsp;
						<a href="javascript:dologinout();">退出</a>
					</div>
				</c:if>
			</div>
		</div>
		<div class="cl"></div>
		<div class="center_part">
				<a href="${contextPath}/rest/showpage/index">
					<h1 class="logo"></h1>
				</a>
				<div class="hotline">理财热线：<span class="telNumber">400-804-0456</span></div>
		</div>
		<div class="cl"></div>
		<div class="nav">
			<ul class="nav_content">
				<li class="fuli">
					<a class="fu_a" href="${contextPath}/rest/showpage/index">网站首页</a>
					<ul class="menu">
						<li><a href="#">关于我们</a></li>
						<li><a href="#">公司证件</a></li>
						<li><a href="#">最新公告</a></li>
						<li><a href="#">网站资费</a></li>
					</ul>
				</li>
				<li class="fuli">
					<a class="fu_a" href="#">我要投资</a>
					<ul class="menu">
						<li><a href="#">如何投资</a></li>
						<li><a href="#">如何投资</a></li>
						<li><a href="#">如何投资</a></li>
						<li><a href="#">如何投资</a></li>
					</ul>
				</li>
				<li class="fuli">
					<a class="fu_a" href="#">我要借款</a>
					<ul class="menu">
						<li><a href="#">如何借款</a></li>
						<li><a href="#">发布抵押标</a></li>
						<li><a href="#">发布保证标</a></li>
					</ul>
				</li>
				<li class="fuli">
					<a class="fu_a" href="#">我的账户</a>
					<ul class="menu">
						<li><a href="#">我的账户</a></li>
						<li><a href="#">账户充值</a></li>
						<li><a href="#">账户提现</a></li>
						<li><a href="#">我要还款</a></li>
					</ul>
				</li>
				<li class="fuli">
					<a class="fu_a" href="#">债券转让</a>
				</li>
				<li class="fuli">
					<a class="fu_a" href="#">资讯服务</a>
					<ul class="menu">
						<li><a href="#">新手指南</a></li>
						<li><a href="#">网站规则</a></li>
						<li><a href="#">安全保障</a></li>
						<li><a href="#">政策法规</a></li>
						<li><a href="#">在线客服</a></li>
						<li><a href="#">协议范本</a></li>
						<li><a href="#">联系我们</a></li>
					</ul>
				</li>
				<li class="fuli"><a class="fu_a" href="#">社区论坛</a></li>
			</ul>
		</div>
	</div>