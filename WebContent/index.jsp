<%@ page language="java" contentType="text/html; charset=utf-8"    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
  String path = request.getContextPath();
%>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>×××管理平台</title>
<script type="text/javascript" src="<%=path%>/js/jquery/jquery-1.11.1.js"></script>
<script type="text/javascript">
</script>
<!-- 
<link rel="stylesheet" href="<%=path %>/css/kk.css" type="text/css" />
<style type="text/css"> 
}
</style>
--> 

</head>

<body >
	-------------我们
	
	<a href="<%=path %>/rest/test/test">test</a>
	<br>
	<a href="<%=path %>/rest/manager/user/findall">findall</a>
	<br>
	<a href="<%=path %>/manager/login.jsp">后台登陆</a>
	
	<br>
	<a href="<%=path %>/showpage/index.html">主页</a>
	<br><br>
	<a href="<%=path %>/rest/showpage/daikuan/createDaikuan">创建</a>
	<br><br>
	<a href="<%=path %>/rest/showpage/index">展示页面</a>
</body>
</html>
