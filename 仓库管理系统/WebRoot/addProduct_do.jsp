<%@ page contentType="text/html; charset=gb2312" language="java" import="product.*,java.util.*,java.io.*" errorPage="error.jsp" %>
<%request.setCharacterEncoding("gb2312"); %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<jsp:useBean id="product" class="product.Product" scope="page">
<jsp:setProperty name="product" property="*"/>
</jsp:useBean>
<jsp:useBean id="productBean" class="product.ProductBean" scope="page"/>
<body>
<% 
productBean.addProduct(product);
session.setAttribute("msg", "success");
response.sendRedirect("index.jsp");
%>
</body>
</html>
