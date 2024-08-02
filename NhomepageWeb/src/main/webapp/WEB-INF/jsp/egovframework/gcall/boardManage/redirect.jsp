<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String url = (String) request.getAttribute("url");
String msg = (String) request.getAttribute("msg");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>redirect</title>
</head>
<body>
	<script>
	alert('<%=msg%>')
	location.href="<%=url%>"
	</script>
</body>
</html>