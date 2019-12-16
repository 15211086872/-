<%@ page contentType="text/html; charset=gb2312" language="java" import="product.*,java.util.*,java.io.*" errorPage="error.jsp" %>
<%request.setCharacterEncoding("gb2312"); %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<jsp:useBean id="productBean" class="product.ProductBean" scope="page"/>
<body>
<% 
productBean.deleteProduct((String)request.getParameter("productId"));
response.sendRedirect("deleteProduct.jsp");
%>
</body>
</html>
