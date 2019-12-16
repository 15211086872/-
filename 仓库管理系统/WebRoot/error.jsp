<%@ page contentType="text/html; charset=gb2312" language="java" isErrorPage="true" %>
<html>
<head>
<title>出错了！</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<body>
出错了！<br>
发生了以下的错误：
<br><hr><font color=red>
 <%=exception.getMessage()%>
</font></body>
</html>
