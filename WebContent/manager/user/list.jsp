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
	Integer allpage = (Integer)request.getAttribute("allpage");//��ҳ��
	Integer pageNumber = (Integer)request.getAttribute("pageNumber");//��ǰҳ
	Integer allcount = (Integer)request.getAttribute("allcount");//�ܸ���
	
	String userName = (String)request.getAttribute("userName");
	String userEmail = (String)request.getAttribute("userEmail");
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��Ŀ����ϵͳ by www.mycodes.net</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.tabfont01 {	
	font-family: "����";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}
.font051 {font-family: "����";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "����";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "����";
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
			  	�û�����<input name="userName" id="userName" value="<%=StringUtil.displayString(userName) %>" type="text" size="12" />
				�û�Email:<input name="userEmail" id="userEmail" value="<%=StringUtil.displayString(userEmail) %>" type="text" size="12" />
				<input name="Submit4" type="button" class="right-button02" value="�� ѯ" onclick="findByValues();" />
			  </td>
			  <td width="144" align="left">
			  <!-- 
			  	<a href="#" onclick="sousuo()"><input name="Submit3" type="button" class="right-button07" value="�߼�����" /></a>
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
               		<span class="newfont07">�û����� &gt;&gt;�û����� </span>( <a href="<%=projectPathRest %>/user/adduser" class="right-font08" onclick="selectAll();">�½��û�</a> )
               		<!-- 
               		<span class="newfont07">ѡ��<a href="#" class="right-font08" onclick="selectAll();">ȫѡ</a>-<a href="#" class="right-font08" onclick="unselectAll();">��ѡ</a></span>
	              <input name="Submit" type="button" class="right-button08" value="ɾ����ѡ����" />
	              <input name="Submit2" type="button" class="right-button08" value="�������" onclick="link();"/>
               		 -->
	              </td>
          	 </tr>
              <tr>
                <td height="40" class="font42">
				<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				 <tr class="CTitle" >
                    	<td height="22" colspan="8" align="left" style="font-size:14px;font-weight: bold;">�û��б�</td>
                  </tr>
                  <tr bgcolor="#EEEEEE">
				    <td width="4%"  align="center" height="30">ѡ��</td>
                    <td width="10%" align="center">�û�����</td>
					<td width="10%" align="center">�û�Email</td>
                    <td width="10%" align="center">�û��绰</td>
					<td width="10%" align="center">�û�����</td>
					<td width="10%" align="center">�û�״̬</td>
					<td width="10%" align="center">����¼ʱ��</td>
					<td width="10%" align="center">����</td>
                  </tr>
                  
                  <%
                  	if(null == users){
                  %>
                  	<tr class="CTitle" >
                    	<td height="22" colspan="8" align="left" style="font-size:14px;font-weight: bold;">�û��б�</td>
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
                    		out.print("��ͨ");
                    	}else if(SystemConfig.UserType_Vip.equals(userType)){
                    		out.print("VIP");
                    	}else if(SystemConfig.UserType_System.equals(userType)){
                    		out.print("����Ա");
                    	}else{
                    		out.print("--");
                    	}
                    %>
                    
                    </td>
                    <td>
                    <%
                    String userStatus = StringUtil.displayString(user.getUserStatus());
                    if(SystemConfig.UserStatus_Start.equals(userStatus)){
                    	out.print("����");
                    }else if(SystemConfig.UserStatus_Stop.equals(userStatus)){
                    	out.print("ֹͣ");
                    }else {
                    	out.print("--");
                    }
                    %>
                    </td>
                    <td><%=TimeUtil.getDisplyTime(user.getLastLoginTime()) %></td>
                    <td align="center">
                    	<a href="editrenwu.htm">�༭</a>&nbsp;
                    	<a href="listrenwumingxi.htm">�鿴</a>&nbsp;
						<a href="#">ɾ��</a>
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
                <td width="50%">�ܹ�<span class="right-text09"><%=allcount %></span>�� | �� <span class="right-text09"><%=allpage %></span> ҳ | �� <span class="right-text09"><%=pageNumber+1 %></span> ҳ</td>
                <td width="49%" align="right">[<a href="<%=projectPathRest%>/user/list" class="right-font08">��ҳ</a> | <a href="javascript:findByValues('<%=pageNumber-1 %>')" class="right-font08">��һҳ</a> | <a href="javascript:findByValues('<%=pageNumber+1 %>')" class="right-font08">��һҳ</a> | <a href="<%=projectPathRest%>/user/list?page=<%=allpage %>" class="right-font08">ĩҳ</a>] ת����</td>
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
