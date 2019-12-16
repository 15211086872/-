<%@ page contentType="text/html; charset=gb2312" language="java" import="product.*,java.util.*,java.io.*" errorPage="error.jsp" %>
<html>
<head>
<title>Untitled Document</title>
<link rel="stylesheet" href="css/style.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<body>

<div class="page-title">添加类别</div>
<div class="main">
	<form action="addCategory_do.jsp" method="post" name="category">
		<table class="add_table">
			<tr>
				<td>类别ID：</td>
				<td><input type="text" name="categoryId"></td>
			</tr>
			<tr>
				<td>类别名称：</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>描述：</td>
				<td><input type="text" name="description"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="提交"  name="submit"></td>
			</tr>
		</table>
	</form>	
</div>
</body>
</html>
