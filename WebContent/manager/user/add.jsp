<%@page import="com.daikuan.util.StringUtil"%>
<%@page import="com.daikuan.util.system.SystemConfig"%>
<%@ page language="java" contentType="text/html; charset=GBK"    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    String projectPath = SystemConfig.getSysPath(request, "manager");
    String projectPathRest = SystemConfig.getSysPath(request, "rest/manager");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��Ŀ����ϵͳ by www.mycodes.net</title>
<!-- 
<link rel="stylesheet" rev="stylesheet" href="<%=projectPath%>/css/style.css" type="text/css" media="all" />
 -->

<link href="<%=projectPath%>/css/css.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">

</script>
<link href="<%=projectPath%>/css/style.css" rel="stylesheet" type="text/css" />


<script language="JavaScript" type="text/javascript">
function tishi()
{
  var a=confirm('���ݿ��б����и���Ա������Ϣ���������޸Ļ�������Ϣ��');
  if(a!=true)return false;
  window.open("��ͻҳ.htm","","depended=0,alwaysRaised=1,width=800,height=400,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
}

function check()
{
document.getElementById("aa").style.display="";
}


function link(){
	var form = document.getElementById("createUserForm");
	form.submit();
}



</script>
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>

<body class="ContentBody">
<div class="MainDiv">
	<table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
		<%
			String pageInfo = (String)request.getAttribute(SystemConfig.Page_Info);
			if(!StringUtil.isEmpty(pageInfo)){
		%>
		<tr>
	        <td height="20">
	         		<span style="font-size: 14px;color: red;"><%=pageInfo %></span>
		    </td>
	    </tr>
		<%		
			}
		%>
		<tr>
	        <td height="20">
	         		<span class="newfont07">�û����� &gt;&gt;�û�����&gt;&gt;�½��û�</span>
		    </td>
	    </tr>
	</table>
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >�������ҳ��</th>
  </tr>
  <tr>
    <td class="CPanel">
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		<form action="<%=projectPathRest %>/user/createUser" method="post" id="createUserForm">
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>����û�</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
						  <tr>
						    <td nowrap align="right" width="13%">�û�����:</td>
						    <td width="41%"><input name="userName" class="text" style="width:250px" type="text" size="40" />
					        <span class="red"> *</span></td>
						    <td align="right" width="19%">�û�����:</td>
						    <td width="27%"><input name="userPassword" id="Input22" class="text" style="width:154px" /></td>
						    </tr>
						  <tr>
						    <td nowrap align="right">�û�Email:</td>
						    <td><input name="userEmail" id="" class="text" style="width:154px" /></td>
						    <td align="right">�û�����:</td>
						    <td>
						    	<select name="userType" style="width:154px;">
						    		<option value ="">--��ѡ��--</option>
						    		<option value ="<%=SystemConfig.UserType_Normal %>">��ͨ�û�</option>
						    		<option value ="<%=SystemConfig.UserType_Vip %>">VIP�û�</option>
						    		<option value ="<%=SystemConfig.UserType_System %>">ϵͳ����Ա</option>
						    	</select>
						    </td>
						  </tr>
						  <tr>
						    <td nowrap align="right">�û��绰:</td>
						    <td><input name="userTel" id="" class="text" style="width:154px" /></td>
						    <td align="right">&nbsp;</td>
						    <td align="right">&nbsp;</td>
						  </tr>
					  </table>
				 <br />
				</fieldset>			
			</TD>
		</TR>
		</form>
		</table>
	
	 </td>
  </tr>
		
  <TR>
		<TD colspan="2" align="center" height="50px">
			<input type="button" name="Submit" value="����" class="button" onclick="link();"/>��
			<input type="button" name="Submit2" value="����" class="button" onclick="window.history.go(-1);"/></TD>
  </TR>
</TABLE>
	
</td>
</tr>
</table>

</div>

</body>
</html>
