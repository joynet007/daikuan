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
<title>项目管理系统 by www.mycodes.net</title>
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
  var a=confirm('数据库中保存有该人员基本信息，您可以修改或保留该信息。');
  if(a!=true)return false;
  window.open("冲突页.htm","","depended=0,alwaysRaised=1,width=800,height=400,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
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
	         		<span class="newfont07">用户管理 &gt;&gt;用户管理&gt;&gt;新建用户</span>
		    </td>
	    </tr>
	</table>
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >任务添加页面</th>
  </tr>
  <tr>
    <td class="CPanel">
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		<form action="<%=projectPathRest %>/user/createUser" method="post" id="createUserForm">
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>添加用户</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
						  <tr>
						    <td nowrap align="right" width="13%">用户名称:</td>
						    <td width="41%"><input name="userName" class="text" style="width:250px" type="text" size="40" />
					        <span class="red"> *</span></td>
						    <td align="right" width="19%">用户密码:</td>
						    <td width="27%"><input name="userPassword" id="Input22" class="text" style="width:154px" /></td>
						    </tr>
						  <tr>
						    <td nowrap align="right">用户Email:</td>
						    <td><input name="userEmail" id="" class="text" style="width:154px" /></td>
						    <td align="right">用户类型:</td>
						    <td>
						    	<select name="userType" style="width:154px;">
						    		<option value ="">--请选择--</option>
						    		<option value ="<%=SystemConfig.UserType_Normal %>">普通用户</option>
						    		<option value ="<%=SystemConfig.UserType_Vip %>">VIP用户</option>
						    		<option value ="<%=SystemConfig.UserType_System %>">系统管理员</option>
						    	</select>
						    </td>
						  </tr>
						  <tr>
						    <td nowrap align="right">用户电话:</td>
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
			<input type="button" name="Submit" value="保存" class="button" onclick="link();"/>　
			<input type="button" name="Submit2" value="返回" class="button" onclick="window.history.go(-1);"/></TD>
  </TR>
</TABLE>
	
</td>
</tr>
</table>

</div>

</body>
</html>
