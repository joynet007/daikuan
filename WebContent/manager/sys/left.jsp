<%@page import="com.daikuan.util.system.SessionManager"%>
<%@page import="com.daikuan.util.system.SystemConfig"%>
<%@ page language="java" contentType="text/html; charset=GBK"    pageEncoding="GBK"%>
<%
    String projectPath = SystemConfig.getSysPath(request, "manager");
    String projectPathRest = SystemConfig.getSysPath(request, "rest/manager");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>��Ŀ����ϵͳ by www.mycodes.net</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(<%=projectPath%>/images/left.gif);
}
-->
</style>
<link href="<%=projectPath%>/css/css.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT language=JavaScript>

function loginout(){
	if(confirm("ȷ��Ҫ�˳�ô��")){
		window.parent.location.href="<%=projectPathRest%>/loginOut";
	}
	
}
function tupian(idt){
    var nametu="xiaotu"+idt;
    var tp = document.getElementById(nametu);
    tp.src="<%=projectPath%>/images/ico05.gif";//ͼƬico04Ϊ��ɫ��������
	
	for(var i=1;i<30;i++)
	{
	  
	  var nametu2="xiaotu"+i;
	  if(i!=idt*1)
	  {
	    var tp2=document.getElementById('xiaotu'+i);
		if(tp2!=undefined)
	    {tp2.src="<%=projectPath%>/images/ico06.gif";}//ͼƬico06Ϊ��ɫ��������
	  }
	}
}

function list(idstr){
	var name1="subtree"+idstr;
	var name2="img"+idstr;
	var objectobj=document.all(name1);
	var imgobj=document.all(name2);
	
	
	//alert(imgobj);
	
	if(objectobj.style.display=="none"){
		for(i=1;i<10;i++){
			var name3="img"+i;
			var name="subtree"+i;
			var o=document.all(name);
			if(o!=undefined){
				o.style.display="none";
				var image=document.all(name3);
				//alert(image);
				image.src="<%=projectPath%>/images/ico04.gif";
			}
		}
		objectobj.style.display="";
		imgobj.src="<%=projectPath%>/images/ico03.gif";
	}
	else{
		objectobj.style.display="none";
		imgobj.src="<%=projectPath%>/images/ico04.gif";
	}
}

</SCRIPT>

<body>
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="<%=projectPath%>/images/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="<%=projectPath%>/images/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" class="left-font01">���ã�<span class="left-font02"><%=SessionManager.getUser(session).getUserName() %></span></td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[&nbsp;<a href="javascript:loginout()" target="_top" class="left-font01">�˳�</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>
		


		<!--  ����ϵͳ��ʼ    -->
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img8" id="img8" src="<%=projectPath%>/images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('8');" >�û�����</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree8" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu20" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="<%=projectPath%>/files/addrenwu.htm" target="mainFrame" class="left-font03" onClick="tupian('20');">�û����͹���</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu21" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="<%=projectPathRest%>/user/list" target="mainFrame" class="left-font03" onClick="tupian('21');">�û�����</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu22" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="<%=projectPath%>/files/listrenwu.htm" target="mainFrame" class="left-font03" onClick="tupian('22');">�û�������Ϣ����</a></td>
				</tr>
      </table>
		<!--  ����ϵͳ����    -->

		

		<!--  ��Ϣϵͳ��ʼ    -->
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img7" id="img7" src="<%=projectPath%>/images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('7');" >��Ϣ����</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree7" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu17" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
						<a href="sendxiaoxi.htm" target="mainFrame" class="left-font03" onClick="tupian('17');">������Ϣ</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu18" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
					<a href="listtakexiaoxi.htm" target="mainFrame" class="left-font03" onClick="tupian('18');">�ռ���Ϣ�鿴</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu19" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
						<a href="listsendxiaoxi.htm" target="mainFrame" class="left-font03" onClick="tupian('19');">������Ϣ�鿴
							</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu24" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
						<a href="listxiaoxi.htm" target="mainFrame" class="left-font03" onClick="tupian('24');">��Ϣ��Ϣ�б�
							</a></td>
				</tr>
      </table>
		<!--  ��Ϣϵͳ����    -->



        <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img1" id="img1" src="<%=projectPath%>/images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('1');" >��Ŀϵͳ</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree1" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu1" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="listxiangmuxinxi.htm" target="mainFrame" class="left-font03" onClick="tupian('1');">��Ŀ������Ϣ�鿴</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu4" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="listjihua.htm" target="mainFrame" class="left-font03" onClick="tupian('4');">��Ŀ�ƻ���Ϣ�鿴</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu2" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="listxuqiu.htm" target="mainFrame" class="left-font03" onClick="tupian('2');">��Ŀ������Ϣ�鿴</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu5" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="listmokuai.htm" target="mainFrame" class="left-font03" onClick="tupian('5');">��Ŀģ����Ϣ�鿴</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu3" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="listgongneng.htm" target="mainFrame" class="left-font03" onClick="tupian('3');">��Ŀ������Ϣ�鿴</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu6" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="listshangchuan.htm" target="mainFrame" class="left-font03" onClick="tupian('6');">��Ŀ�ϴ���Ϣ�鿴</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu7" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="listchengbenxinxi.htm" target="mainFrame" class="left-font03" onClick="tupian('7');">��Ŀ�ɱ���Ϣ�鿴</a></td>
				</tr>
      </table>
		<!--  ��Ŀϵͳ����    -->

	  <!--  �ͻ�ϵͳ��ʼ    -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img2" id="img2" src="<%=projectPath%>/images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('2');" >�ͻ�ϵͳ</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree2" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        
		<tr>
          <td width="9%" height="20" ><img id="xiaotu7" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="listkehuxinxi.html" target="mainFrame" class="left-font03" onClick="tupian('7');">�ͻ���Ϣ�鿴</a></td>
        </tr>
      </table>

	  <!--  �ͻ�ϵͳ����    -->

	  <!--  ��Աϵͳ��ʼ    -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img3" id="img3" src="<%=projectPath%>/images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('3');" >��Աϵͳ</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree3" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20" ><img id="xiaotu8" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="listyuangong.html" target="mainFrame" class="left-font03" onClick="tupian('8');">��Ա��Ϣ�鿴</a></td>
        </tr>
		<tr>
          <td width="9%" height="20" ><img id="xiaotu9" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="listzhiwu.htm" target="mainFrame" class="left-font03" onClick="tupian('9');">ְ����Ϣ�鿴</a></td>
        </tr>
		<tr>
          <td width="9%" height="20" ><img id="xiaotu10" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="listMonthYuanGongGongZi.htm" target="mainFrame" class="left-font03" onClick="tupian('10');">Ա����������鿴</a></td>
        </tr>
      </table>
	
	  <!--  ��Աϵͳ����    -->

	   <!--  ����ϵͳ��ʼ    -->
	   <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img4" id="img4" src="<%=projectPath%>/images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('4');" >����ϵͳ</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree4" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
		<tr>
          <td width="9%" height="20" ><img id="xiaotu11" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="listGongZiType.htm" target="mainFrame" class="left-font03" onClick="tupian('11');">�������Ͳ鿴</a></td>
        </tr>
	  	<tr>
          <td width="9%" height="20" ><img id="xiaotu12" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="listMonthYuanGongGongZi.htm" target="mainFrame" class="left-font03" onClick="tupian('12');">Ա��������Ϣ�鿴</a></td>
        </tr>
      </table>

      <!--  ����ϵͳ����    -->

	  <!-- ����ϵͳ��ʼ -->
      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%"><img name="img5" id="img5" src="<%=projectPath%>/images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('5');">ϵͳ����</a></td>
                </tr>
            </table></td>
          </tr>
      </table>

	  <table id="subtree5" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20"><img id="xiaotu13" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="register.html" target="mainFrame" class="left-font03" onClick="tupian('13');">�����û�</a></td>
        </tr>
        <tr>
          <td height="20"><img id="xiaotu14" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
          <td><a href="addquanxian.html" target="mainFrame" class="left-font03" onClick="tupian('14');">���ӽ�ɫ</a></td>
        </tr>
      </table>
	  <!-- ����ϵͳ����-->

		
     <!-- ϵͳ������ʼ -->
      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
        <tr>
          <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="8%"><img name="img6" id="img6" src="<%=projectPath%>/images/ico04.gif" width="8" height="11" /></td>
                <td width="92%"><a href="mode.html" target="mainFrame" class="left-font03" onClick="list('6');">ϵͳ����</a></td>
              </tr>
          </table></td>
        </tr>
      </table>
	  <table id="subtree6" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20"><img id="xiaotu15" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="mode.html" target="mainFrame" class="left-font03" onClick="tupian('15');">�û��ֲ�</a></td>
        </tr>
        <tr>
          <td height="20"><img id="xiaotu16" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
          <td><a href="mode.html" target="mainFrame" class="left-font03" onClick="tupian('16');">�����ƶ�</a></td>
        </tr>
      </table>
	 <!-- ϵͳ��������-->

	 <!--������Ϣ������ʼ-->

		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img9" id="img9" src="<%=projectPath%>/images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('9');" >���˹���</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>

		<table id="subtree9" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="22" ><img id="xiaotu22" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="listgerenxinxi.htm" target="mainFrame" class="left-font03" 
						onClick="tupian('22');">������Ϣ�鿴</a></td>
				</tr>
				<tr>
				  <td width="9%" height="23" ><img id="xiaotu23" src="<%=projectPath%>/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="listgerenrenwu.htm" target="mainFrame" class="left-font03" 
						onClick="tupian('23');">������Ϣ�鿴</a></td>
				</tr>
      </table>
		<!--  ������Ϣ����    -->

	  </TD>
  </tr>
  
</table>
</body>
</html>