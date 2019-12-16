<%@ page contentType="text/html; charset=gb2312" language="java" import="product.*,java.util.*,java.io.*" errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>首页面</title>
<link rel="stylesheet" href="css/style.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style>
body{
	background-image:url(images/gz.jpg);
	background-attachment: fixed;
}
</style>
</head>

<body>
<div class="page-title">仓库管理系统</div>

<div class="main">
	
	<form action="searchProductByCategory.jsp" method="post" class="findByCategory">
		 按产品的类目查询：<input type="text" name="category">
		<input type="submit" value="查询">
	</form>

	<div class="module">
		<a href="addProduct.jsp">增加库存</a>
		<a href="deleteProduct.jsp">删除库存</a>
		<a href="modifyProduct.jsp">更改库存信息</a>
		<a href="viewProduct.jsp">查看仓库信息</a>
	</div>
	
	<div class="module">
		<a href="addCategory.jsp">增加类目</a>
		<a href="deleteCategory.jsp">删除类目</a>
		<a href="modifyCategory.jsp">更改类目信息</a>
		<a href="viewCategory.jsp">查看所有类目</a>
	</div>

</div>

<%
	String msg = (String)session.getAttribute("msg") ; 
	if(null!=msg&&msg.equals("success")){
%>
		<script>alert('成功!')</script>
<%
		session.setAttribute("msg", null);
	}
%>
</body>
</html>