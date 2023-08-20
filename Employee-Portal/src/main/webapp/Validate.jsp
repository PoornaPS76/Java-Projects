<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int n1=Integer.parseInt(request.getParameter("fno"));
int n2=Integer.parseInt(request.getParameter("sno"));
String op=request.getParameter("r1");

if(op.equals("Sub"))
	out.println("sub="+(n1-n2));
else if(op.equals("Mul"))
	out.println("mul="+(n1*n2));
else 
	out.println("sum="+(n1+n2));
%>
</body>
</html>