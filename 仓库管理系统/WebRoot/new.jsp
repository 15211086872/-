<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="css/style.css" type="text/css" />

  </head>
<body>

<div class="page-title">注册用户</div>
<div class="main">
	<form action="LoginServlet" method="post" name="new">
		<table class="add_table">
			<tr>
				<td>账号：</td>
				<td><input type="text" name="use1"></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="text" name="pwd1"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="注册"  name="submit"></td>
			</tr>
		</table>
	</form>	
</div>
</body>
</html>
