<%@ page language="java" contentType="text/html; charset=GBK"    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=GBK" />
	<title>宿迁贷款网</title>
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
		<span id="close">×</span>
		<ul>
			<li><span class="tel_num">服务电话</span><br/><span class="tel_num">400-622-8363</span></li>
			<li><span>借款咨询</span><br/><span class="pic_QQ">QQ交谈</span></li>
			<li><span>投资顾问</span><br/><span class="pic_QQ">QQ交谈</span></li>
			<li><span>扫二维码</span><br/><span class="ewm_img"></span></li>
		</ul>
	</div>
	<%@ include file="./../pub/header.jsp" %>
	<div class="sign_up_main">
		<div class="sign_up_head">
			<div class="borrow_message fl">
				<h5>借款人档案</h5>
				<span><img src="${showpagePath}/images/list01.png"/></span>
				<p>用户名：caixia123</p>
				<p>用户籍贯：</p>
				<p>认证信息：</p>
				<ul>
					<li class="img01"></li>
					<li class="img02"></li>
					<li class="img03"></li>
					<li class="img04"></li>
				</ul>
			</div>
			<div class="borrow_title fl">
				<h5>借款标题：某塑业公司资金周转借款（一期）</h5>
				<ul>
					<li>
						<span>借款类型</span>
						<span>保证标</span>
					</li>
					<li>
						<span>借款金额（元）</span>
						<span class="red">500000</span>
					</li>
					<li>
						<span>借款期限</span>
						<span>6个月</span>
					</li>
					<li>
						<span>年利率</span>
						<span class="red">18.44%</span>
					</li>
				</ul>
				<ul class="borrow_detail cl">
					<li>已完成金额：<span class="red">500000</span>&nbsp;还需金额：<span class="red">0</span>元</li>
					<li>
						<span class="span_img">&nbsp;50%</span><span class="jdt"></span>
					</li>
					<li>投标数量：15笔，共500000元</li>
					<li>还款方式：每月还息到期还本</li>
					<li>审核时间：2014-10-16 17:17:08</li>
				</ul>
				<div class="sign_up_but fr">
					<a href="#">立即投标</a>
				</div>
			</div>
		</div>
		<div class="cl h10"></div>
		<div class="sing_up_content">
			<ul id="signUp">
				<li class="cur">借款详情</li>
				<li>投标记录</li>
				<li>账户详情</li>
				<li>借款详情</li>
				<li>投资详情</li>
				<li>个人资料</li>
				<li>资料审核</li>
			</ul>
			<div class="cl"></div>
			<div class="ul_content content_wid cur">
				<table>
					<tbody>
						<tr>
							<td>借款人：</td>
							<td>王先生</td>
						</tr>
						<tr>
							<td>借款用途：</td>
							<td>生意周转</td>
						</tr>
						<tr>
							<td>还款来源：</td>
							<td>销售货款回笼、营业收入</td>
						</tr>
						<tr class="bn">
							<td>发标详情：</td>
							<td><span>1.借款金额：50万元整</span>
								<span>2.借款期限：6个月</span>
								<span>3.借款利息：年化利率18.44%</span>
								<span>4.还款方式：按月付息，到期还本</span>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="ul_content">
				<table>
					<tbody>
						<tr>
							<td>序号</td>
							<td>投标人</td>
							<td>投标金额</td>
							<td>有效金额</td>
							<td>投标时间</td>
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
							<td>账户总额：￥0元</td>
							<td>可用总额：￥0元</td>
							<td>冻结总额：￥0元</td>
						</tr>
						<tr>
							<td>充值总额：￥0元</td>
							<td>提现总额：￥0元</td>
						</tr>
					</tbody>
				</table>
				<p>注：公开的账户资金详情在标的借款全部还清后将自动不再公开显示。</p>
			</div>
			<div class="ul_content">
				<table>
					<tbody>
						<tr>
							<td>借款总额:￥0元</td>
							<td>已还款总额:￥0元</td>
							<td>待还款总额:￥0元</td>
						</tr>
						<tr>
							<td>逾期总额:￥0元</td>
							<td>借款成功:0次</td>
							<td>待还款期数:0期</td>
						</tr>
						<tr>
							<td>已成功还款：0期</td>
						</tr>
					</tbody>
				</table>
			</div>
			 <div class="ul_content">
			 	<p>借款人未选择公开标投资详情</p>
			 </div>
			 <div class="ul_content">
			 	<table>
			 		<tbody>
			 			<tr>
			 				<td>性别：-</td>
			 				<td>婚姻状况：-</td>
			 				<td>现居住地：-</td>
			 			</tr>
			 			<tr>
			 				<td>出生年月：-</td>
			 				<td>文化程度：-</td>
			 				<td>职业：-</td>
			 			</tr>
			 		</tbody>
			 	</table>
			 </div>
			 <div class="ul_content">
			 	<table>
			 		<tbody>
			 			<tr>
			 				<td>序号</td>
			 				<td>资料类型</td>
			 				<td>资料说明</td>
			 				<td>积分</td>
			 				<td>状态</td>
			 				<td>审核时间</td>
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