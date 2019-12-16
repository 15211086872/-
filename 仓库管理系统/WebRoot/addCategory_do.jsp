<%@ page contentType="text/html; charset=gb2312" language="java" import="product.*,java.util.*,java.io.*" errorPage="error.jsp" %>
<%request.setCharacterEncoding("gb2312"); %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<jsp:useBean id="category" class="product.Category" scope="page">
	<jsp:setProperty name="category" property="*"/>
</jsp:useBean>
<jsp:useBean id="categoryBean" class="product.CategoryBean" scope="page"/>
<body>
<%
categoryBean.addCategory(category);
session.setAttribute("msg", "success");
response.sendRedirect("index.jsp");
%>
</body>
</html>
