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
		isxiawu="����";
	}else{
		isxiawu="����";
	}
	
	if (date.getDay() == 5){
		week="������";
	}else if (date.getDay() == 6){
		week="������";
	}else if(date.getDay() == 0){
		week="������";
	}else if(date.getDay() == 1){
		week="����һ";
	}else if(date.getDay() == 2){
		week="���ڶ�";
	}else if(date.getDay() == 3){
		week="������";
	}else if(date.getDay() == 4){
		week="������";
	}
	document.getElementById("p_time").innerText=year+'��'+month+'��'+day+'�� '+'  '+isxiawu+"  "+hour+':'+minute+':'+second+'  '+week;
}

function dologinout(){
	layer.confirm('ȷ���˳���',function(){
	    window.location.href="${contextPath}/rest/showpage/loginout";
	});
};

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
					
</script>

<!-- 
<script type="text/javascript">
	document.write(year+'��'+month+'��'+day+'�� '+'&nbsp;&nbsp;'+isxiawu+"&nbsp;&nbsp;"+hour+':'+minute+':'+second+'&nbsp;&nbsp;'+week);
</script>
 -->
<!-- Ư������ -->
 <div class="float">
		<span id="close">��</span>
		<ul>
			<li><span class="tel_num">����绰</span></br><span class="tel_num">400-622-8363</span></li>
			<li><span>�����ѯ</span></br><span class="pic_QQ" id="jiekuanQQ">QQ��̸</span></li>
			<li><span>Ͷ�ʹ���</span></br><span class="pic_QQ" id="touziQQ">QQ��̸</span></li>
			<li><span>ɨ��ά��</span></br><span class="ewm_img"></span></li>
		</ul>
</div>
 <!-- ������ -->
<div class="header">
		<div class="top_part">
			<div class="top_part_inner">
				<p id="p_time">
				&nbsp;&nbsp;
				<script>
					document.getElementById("p_time").innerText=year+'��'+month+'��'+day+'�� '+'  '+isxiawu+"  "+hour+':'+minute+':'+second+'  '+week;
				</script>
				</p>
				 <c:if test="${sessionScope.sessionKey.userName==null}" >
					<div class="button">
						<a href="${contextPath}/rest/showpage/login">��¼</a>
						<a href="${contextPath}/rest/showpage/registeruser">���ע��</a>
					</div>
				</c:if>
				<c:if test="${sessionScope.sessionKey!= null}" >
					<div class="button">
						��ӭ  ${sessionScope.sessionKey.userName} , �ص���Ǩ������&nbsp;&nbsp;
						<a href="${contextPath}/rest/showpage/account/accountcenter">�˻�����</a>&nbsp;
						<a href="javascript:dologinout();">�˳�</a>
					</div>
				</c:if>
			</div>
		</div>
		<div class="cl"></div>
		<div class="center_part">
				<a href="${contextPath}/rest/showpage/index">
					<h1 class="logo"></h1>
				</a>
				<div class="hotline">������ߣ�<span class="telNumber">400-804-0456</span></div>
		</div>
		<div class="cl"></div>
		<div class="nav">
			<ul class="nav_content">
				<li class="fuli">
					<a class="fu_a" href="${contextPath}/rest/showpage/index">��վ��ҳ</a>
					<ul class="menu">
						<li><a href="#">��������</a></li>
						<li><a href="#">��˾֤��</a></li>
						<li><a href="#">���¹���</a></li>
						<li><a href="#">��վ�ʷ�</a></li>
					</ul>
				</li>
				<li class="fuli">
					<a class="fu_a" href="#">��ҪͶ��</a>
					<ul class="menu">
						<li><a href="#">���Ͷ��</a></li>
						<li><a href="#">���Ͷ��</a></li>
						<li><a href="#">���Ͷ��</a></li>
						<li><a href="#">���Ͷ��</a></li>
					</ul>
				</li>
				<li class="fuli">
					<a class="fu_a" href="#">��Ҫ���</a>
					<ul class="menu">
						<li><a href="#">��ν��</a></li>
						<li><a href="#">������Ѻ��</a></li>
						<li><a href="#">������֤��</a></li>
					</ul>
				</li>
				<li class="fuli">
					<a class="fu_a" href="#">�ҵ��˻�</a>
					<ul class="menu">
						<li><a href="#">�ҵ��˻�</a></li>
						<li><a href="#">�˻���ֵ</a></li>
						<li><a href="#">�˻�����</a></li>
						<li><a href="#">��Ҫ����</a></li>
					</ul>
				</li>
				<li class="fuli">
					<a class="fu_a" href="#">ծȯת��</a>
				</li>
				<li class="fuli">
					<a class="fu_a" href="#">��Ѷ����</a>
					<ul class="menu">
						<li><a href="#">����ָ��</a></li>
						<li><a href="#">��վ����</a></li>
						<li><a href="#">��ȫ����</a></li>
						<li><a href="#">���߷���</a></li>
						<li><a href="#">���߿ͷ�</a></li>
						<li><a href="#">Э�鷶��</a></li>
						<li><a href="#">��ϵ����</a></li>
					</ul>
				</li>
				<li class="fuli"><a class="fu_a" href="#">������̳</a></li>
			</ul>
		</div>
	</div>