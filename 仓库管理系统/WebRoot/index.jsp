<%@ page contentType="text/html; charset=gb2312" language="java" import="product.*,java.util.*,java.io.*" errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>��ҳ��</title>
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
<div class="page-title">�ֿ����ϵͳ</div>

<div class="main">
	
	<form action="searchProductByCategory.jsp" method="post" class="findByCategory">
		 ����Ʒ����Ŀ��ѯ��<input type="text" name="category">
		<input type="submit" value="��ѯ">
	</form>

	<div class="module">
		<a href="addProduct.jsp">���ӿ��</a>
		<a href="deleteProduct.jsp">ɾ�����</a>
		<a href="modifyProduct.jsp">���Ŀ����Ϣ</a>
		<a href="viewProduct.jsp">�鿴�ֿ���Ϣ</a>
	</div>
	
	<div class="module">
		<a href="addCategory.jsp">������Ŀ</a>
		<a href="deleteCategory.jsp">ɾ����Ŀ</a>
		<a href="modifyCategory.jsp">������Ŀ��Ϣ</a>
		<a href="viewCategory.jsp">�鿴������Ŀ</a>
	</div>

</div>

<%
	String msg = (String)session.getAttribute("msg") ; 
	if(null!=msg&&msg.equals("success")){
%>
		<script>alert('�ɹ�!')</script>
<%
		session.setAttribute("msg", null);
	}
%>
</body>
</html>