<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="display.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	int fno = Integer.parseInt(request.getParameter("fno"));
	int sno = Integer.parseInt(request.getParameter("sno"));
	out.println(fno / sno);
	%>
</body>
</html>