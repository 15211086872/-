<%@ page contentType="text/html; charset=gb2312" language="java" import="product.*,java.util.*,java.io.*" errorPage="error.jsp" %>
<% request.setCharacterEncoding("gb2312");%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css/style.css" type="text/css" />
</head>

<jsp:useBean id="categoryBean" class="product.CategoryBean" scope="page"/>
<body>
<% 
String categoryId=request.getParameter("categoryId");
Category category=categoryBean.getCategroyInfo(categoryId);
%>
<div class="page-title">����һ�����</div>
<div class="main">
	<form action="modifyCategroy_do.jsp" method="post">
		<table class="add_table">
			<tr>
				<td>��ţ�</td>
				<td><input type="text" name="categoryId" readonly="" value="<%=category.getCategoryId()%>"></td>
			</tr>
			<tr>
				<td>������ƣ�</td>
				<td><input type="text" name="name" value="<%=category.getName() %>"></td>
			</tr>
			<tr>
				<td>������</td>
				<td><input type="text" name="description" value="<%=category.getDescription() %>"></td>
			</tr>
			<tr><td colspan="2"><input type=submit value=�ύ></td></tr>
		</table>
	</form>
</div>
</body>
</html>
