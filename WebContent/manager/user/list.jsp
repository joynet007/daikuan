<%@page import="com.daikuan.util.TimeUtil"%>
<%@page import="com.daikuan.util.StringUtil"%>
<%@page import="com.daikuan.manager.model.User"%>
<%@page import="java.util.List"%>
<%@page import="com.daikuan.util.system.SystemConfig"%>
<%@ page language="java" contentType="text/html; charset=GBK"    pageEncoding="GBK"%>
<%
	String projectPath = SystemConfig.getSysPath(request, "manager");
	String projectPathRest = SystemConfig.getSysPath(request, "rest/manager");
	List<User> users = (List<User>)request.getAttribute("users");
	Integer allpage = (Integer)request.getAttribute("allpage");//总页数
	Integer pageNumber = (Integer)request.getAttribute("pageNumber");//当前页
	Integer allcount = (Integer)request.getAttribute("allcount");//总个数
	
	String userName = (String)request.getAttribute("userName");
	String userEmail = (String)request.getAttribute("userEmail");
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>项目管理系统 by www.mycodes.net</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.tabfont01 {	
	font-family: "宋体";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}
.font051 {font-family: "宋体";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "宋体";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "宋体";
	font-size: 14px;
	height: 37px;
}
html { overflow-x: auto; overflow-y: auto; border:0;} 
-->
</style>

<link href="<%=projectPath%>/css/css.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">

</script>
<link href="<%=projectPath%>/css/style.css" rel="stylesheet" type="text/css" />
</head>
<script language="JavaScript" >
<!--
	function findByValues(pageCount){
		if(undefined == pageCount){
			pageCount = 0;
		}
		var form = document.getElementById('findbyvaluesForm');
		
		var page = document.getElementById("page");
		page.value = pageCount;
		
		form.submit();
	 
	}
	

-->
</script>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30">      
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="<%=projectPath%>/images/nav04.gif">
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		   <form action="<%=projectPathRest %>/user/findbyvalues" method="post" id="findbyvaluesForm">
		   <input type="hidden" value="" name="page" id="page" />
		    <tr>
			  <td width="21"><img src="<%=projectPath%>/images/ico07.gif" width="20" height="18" /></td>
			  <td width="538">
			  	用户名：<input name="userName" id="userName" value="<%=StringUtil.displayString(userName) %>" type="text" size="12" />
				用户Email:<input name="userEmail" id="userEmail" value="<%=StringUtil.displayString(userEmail) %>" type="text" size="12" />
				<input name="Submit4" type="button" class="right-button02" value="查 询" onclick="findByValues();" />
			  </td>
			  <td width="144" align="left">
			  <!-- 
			  	<a href="#" onclick="sousuo()"><input name="Submit3" type="button" class="right-button07" value="高级搜索" /></a>
			   -->
			  </td>	
		    </tr>
		   </form>
          </table></td>
        </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
          	 <tr>
               <td height="20">
               		<span class="newfont07">用户管理 &gt;&gt;用户管理 </span>( <a href="<%=projectPathRest %>/user/adduser" class="right-font08" onclick="selectAll();">新建用户</a> )
               		<!-- 
               		<span class="newfont07">选择：<a href="#" class="right-font08" onclick="selectAll();">全选</a>-<a href="#" class="right-font08" onclick="unselectAll();">反选</a></span>
	              <input name="Submit" type="button" class="right-button08" value="删除所选任务" />
	              <input name="Submit2" type="button" class="right-button08" value="添加任务" onclick="link();"/>
               		 -->
	              </td>
          	 </tr>
              <tr>
                <td height="40" class="font42">
				<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				 <tr class="CTitle" >
                    	<td height="22" colspan="8" align="left" style="font-size:14px;font-weight: bold;">用户列表</td>
                  </tr>
                  <tr bgcolor="#EEEEEE">
				    <td width="4%"  align="center" height="30">选择</td>
                    <td width="10%" align="center">用户名称</td>
					<td width="10%" align="center">用户Email</td>
                    <td width="10%" align="center">用户电话</td>
					<td width="10%" align="center">用户类型</td>
					<td width="10%" align="center">用户状态</td>
					<td width="10%" align="center">最后登录时间</td>
					<td width="10%" align="center">操作</td>
                  </tr>
                  
                  <%
                  	if(null == users){
                  %>
                  	<tr class="CTitle" >
                    	<td height="22" colspan="8" align="left" style="font-size:14px;font-weight: bold;">用户列表</td>
                  	</tr>
                  <% 
                  	}else{
                  		for(int i=0;i<users.size();i++){
                  			User user = users.get(i);
                  			if(null != user){
                  %>
                  	<tr bgcolor="#FFFFFF">
				    <td height="20"><input type="checkbox" name="delid"/></td>
                    <td ><%=StringUtil.displayString(user.getUserName()) %></td>
					<td><%=StringUtil.displayString(user.getUserEmail()) %></td>
                    <td><%=StringUtil.displayString(user.getUserTel()) %></td>
                    <td>
                    <%
                    	String userType = StringUtil.displayString(user.getUserType()); 
                    	if(SystemConfig.UserType_Normal.equals(userType)){
                    		out.print("普通");
                    	}else if(SystemConfig.UserType_Vip.equals(userType)){
                    		out.print("VIP");
                    	}else if(SystemConfig.UserType_System.equals(userType)){
                    		out.print("管理员");
                    	}else{
                    		out.print("--");
                    	}
                    %>
                    
                    </td>
                    <td>
                    <%
                    String userStatus = StringUtil.displayString(user.getUserStatus());
                    if(SystemConfig.UserStatus_Start.equals(userStatus)){
                    	out.print("启动");
                    }else if(SystemConfig.UserStatus_Stop.equals(userStatus)){
                    	out.print("停止");
                    }else {
                    	out.print("--");
                    }
                    %>
                    </td>
                    <td><%=TimeUtil.getDisplyTime(user.getLastLoginTime()) %></td>
                    <td align="center">
                    	<a href="editrenwu.htm">编辑</a>&nbsp;
                    	<a href="listrenwumingxi.htm">查看</a>&nbsp;
						<a href="#">删除</a>
					</td>
                  </tr>
                  <%		
                  			}
                  		}
                  	}
                  %>
                  
            </table></td>
        </tr>
      </table>
      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="6"><img src="<%=projectPath%>/images/spacer.gif" width="1" height="1" /></td>
        </tr>
        <tr>
          <td height="33"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
              <tr>
                <td width="50%">总共<span class="right-text09"><%=allcount %></span>条 | 共 <span class="right-text09"><%=allpage %></span> 页 | 第 <span class="right-text09"><%=pageNumber+1 %></span> 页</td>
                <td width="49%" align="right">[<a href="<%=projectPathRest%>/user/list" class="right-font08">首页</a> | <a href="javascript:findByValues('<%=pageNumber-1 %>')" class="right-font08">上一页</a> | <a href="javascript:findByValues('<%=pageNumber+1 %>')" class="right-font08">下一页</a> | <a href="<%=projectPathRest%>/user/list?page=<%=allpage %>" class="right-font08">末页</a>] 转至：</td>
                <td width="1%"><table width="20" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="1%"><input name="textfield3" type="text" class="right-textfield03" size="1" /></td>
                      <td width="87%"><input name="Submit23222" type="submit" class="right-button06" value=" " />
                      </td>
                    </tr>
                </table></td>
              </tr>
          </table></td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
