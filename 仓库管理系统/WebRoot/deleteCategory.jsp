<%@ page contentType="text/html; charset=gb2312" language="java" import="product.*,java.util.*,java.io.*" errorPage="error.jsp" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css/style.css" type="text/css" />
</head>
<jsp:useBean id="categoryBean" class="product.CategoryBean" scope="page"/>
<jsp:useBean id="category" class="product.ViewCategory" scope="page"></jsp:useBean>
<body>
<div class="page-title">ɾ�����</div>
<div class="main2">
	<table class="m_table" cellspacing="0">
	<tr class="table-header">
		<td>���</td><td>����</td><td>����</td><td>ɾ��</td>
	</tr>
	<%
	Collection categorys=category.getAllCategory();
	Iterator it=categorys.iterator();
	int index = 0 ;
	while(it.hasNext())
	{
		String className = "tdStyle1" ;
		if(index++%2==0){
			className="tdStyle2";
		}
	    Category temp=(Category)it.next();
		out.println("<tr class='"+className+"'>");
		out.println("<td>"+temp.getCategoryId()+"</td>");
		out.println("<td>"+temp.getName()+"</td>");
		out.println("<td>"+temp.getDescription()+"</td>");
		
		out.println("<td><a href='deleteCategory_do.jsp?categoryId="+temp.getCategoryId()+"'>ɾ��</a>");
		out.println("</tr>");
	}
	%>
</table>
<a class="back" href="index.jsp">����</a>
</div>

</body>
</html>
