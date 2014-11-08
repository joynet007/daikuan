<%@page import="com.daikuan.util.system.SystemConfig"%>
<%@ page language="java" contentType="text/html; charset=GBK"    pageEncoding="GBK"%>
<%
    String projectPath = SystemConfig.getSysPath(request, "manager");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>***项目管理系统 </title>
</head>

<frameset rows="59,*" cols="*"  frameborder="no" border="0" framespacing="0">
  <frame src="<%=projectPath %>/sys/top.html" name="topFrame" scrolling="no" noresize="noresize" id="topFrame" title="topFrame" />
  <frameset cols="213,*" frameborder="no" border="0" framespacing="0">
    <frame src="<%=projectPath %>/sys/left.jsp" name="leftFrame" scrolling="no" noresize="noresize" id="leftFrame" title="leftFrame" />
    <frame src="<%=projectPath %>/sys/mainfra.html" name="mainFrame" id="mainFrame" title="mainFrame" />
  </frameset>
</frameset>
<noframes><body>
</body>
</noframes></html>