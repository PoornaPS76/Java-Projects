<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
body {
	font-family: Arial, sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-color: #f5f5f5;
}

.container {
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
	max-width: 320px;
	width: 300%;
	margin: 0px 20px;
	text-align: center;
}

h1 {
	margin-bottom: 20px;
	color: #333;
}

label {
	display: block;
	margin-bottom: 5px;
	color: #333;
	text-align: left;
}

input[type="text"], input[type="password"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 20px;
	border: none;
	box-sizing: border-box;
	border-radius: 5px;
	background-color: #f7f7f7;
	color: #333;
	font-size: 16px;
	text-align: left;
}

input[type="submit"] {
	background-color: #2b82c9;
	color: #fff;
	border: none;
	border-radius: 5px;
	padding: 10px 20px;
	cursor: pointer;
	transition: all 0.3s ease;
}

input[type="submit"]:hover {
	background-color: #555;
}

button[type="submit"] {
	background-color: transparent;
	color: #333;
	border: none;
	border-radius: 5px;
	padding: 10px 20px;
	cursor: pointer;
	transition: all 0.3s ease;
}

button[type="submit"]:hover {
	background-color: #c4c1c1;
}
</style>
</head>
<body>
<div class="container">
		<form action="Login_Code.jsp">
			<h1>Login</h1>
			<br> 
			<input type="text" name="username" placeholder="Username" />
			<input type="password" name="password" placeholder="password" /> <br>
			<input type="submit" value="Login">
		</form>
		
	</div>
</body>
</html>