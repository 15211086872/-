<%@ page contentType="text/html; charset=gb2312" language="java" import="product.*,java.util.*,java.io.*" errorPage="error.jsp" %>
<%request.setCharacterEncoding("gb2312"); %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css/style.css" type="text/css" />
</head>
<jsp:useBean id="product" class="product.ProductBean" scope="page"/>
<body>

<% String category=request.getParameter("category");%>
<div class="page-title">查看类别为【<%=category%>】的商品</div>
<div class="main2">
<table class="m_table" cellspacing="0">
<tr class="table-header">
<td>id</td><td>类别</td><td>名称</td><td>出厂商</td><td>价格</td><td>描述</td>
</tr>
<%
Collection products=product.getProductByCategory(category);
Iterator it=products.iterator();
int index = 0 ;
while(it.hasNext())
{
	String className = "tdStyle1" ;
	if(index++%2==0){
		className="tdStyle2";
	}
    Product temp=(Product)it.next();
	out.println("<tr class='"+className+"'>");
	out.println("<td>"+temp.getProductId()+"</td>");
	out.println("<td>"+temp.getCategoryId()+"</td>");
	try
   {
		out.println("<td>"+temp.getName()+"</td>");
		out.println("<td>"+temp.getProducer()+"</td>");
		out.println("<td>"+temp.getPrice()+"</td>");
		out.println("<td>"+temp.getDescription()+"</td>");
	}
    catch(Exception e)
   {}
	out.println("</tr>");
}

%>
</table>
<a class="back" href="index.jsp">返回</a>

</div>
</body>
</html>
