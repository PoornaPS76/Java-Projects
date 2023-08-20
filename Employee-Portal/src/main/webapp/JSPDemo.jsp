<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Demo</title>
</head>
<body>
<form action="./Validate.jsp">
Enter 1st number:<input type="number" name="fno"/><br>
Enter 2nd number:<input type="number" name="sno"/><br>
Add:<input type="radio" name="r1" checked="checked" value="add">
Sub:<input type="radio" name="r1" value="sub">
Mul:<input type="radio" name="r1" value="mul"><br>
<input type="submit" value="submit"/>
</form>
</body>
</html>