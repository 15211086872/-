<%@ page contentType="text/html; charset=gb2312" language="java" import="product.*,java.util.*,java.io.*" errorPage="error.jsp" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css/style.css" type="text/css" />
</head>
<jsp:useBean id="category" class="product.ViewCategory" scope="page"/>
<body>
<script language="JavaScript">
<!--
function RgTest()
{ 
   if(document.product.productId.value=="")
     {
	   window.alert("��������������Ϣ��");
	   document.product.productId.focus();
	   return false;
	}
	if(document.product.name.value=="")
     {
	   window.alert("��������������Ϣ��");
	   document.product.name.focus();
	   return false;
	}
	if(document.product.price.value=="")
     {
	   window.alert("��������������Ϣ��");
	   document.product.price.focus();
	   return false;
	}if(document.product.producer.value=="")
     {
	   window.alert("��������������Ϣ��");
	   document.product.producer.focus();
	   return false;
	}
	if(document.product.description.value=="")
     {
	   window.alert("��������������Ϣ��");
	   document.product.description.focus();
	   return false;
	}
	   
	   
	   return true;
}
//-->
</script>
<div class="page-title">������Ʒ</div>
<div class="main">
	<form action="addProduct_do.jsp" method="post" name="product">
	<table class="add_table" style="height:460px">
		<tr>
			<td>��ƷID��</td>
			<td><input type="text" name="productId"></td>
		</tr>
		<tr>
			<td>��Ʒ���ƣ�</td>
			<td><input type="text" name="name"></td>
		</tr>
		
		<tr>
			<td>��Ʒ�۸�</td>
			<td><input type="text" name="price"></td>
		</tr>
		<tr>
			<td>���̣�</td>
			<td><input type="text" name="producer"></td>
		</tr>
		<tr>
			<td>������</td>
			<td><input type="text" name="description"></td>
		</tr>
		<tr>
			<td>���</td>
			<td><select name="categoryId">
	<% 
	Collection categorys=category.getAllCategory();
	Iterator it=categorys.iterator();
	while(it.hasNext())
	{
	    Category temp=(Category)it.next();
		out.println("<option value="+temp.getCategoryId()+">"+temp.getCategoryId()+"</option>");
	}
	%>
	</select></td></tr>
	<tr>
		<td colspan="2" ><input type="submit" value="�ύ"  onClick="return RgTest()"></td>
	</tr>
	</table>
	</form>
</div>
</body>
</html>
