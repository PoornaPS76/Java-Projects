<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manager Home</title>
<style>
body {
	background-color: transparant;
	font-family: Arial, sans-serif;
	font-size: 16px;
	line-height: 1.5;
	margin: 0;
	padding: 0;
}

@media ( width >= 500px) {
	body {
		padding: 0;
	}
}

.background {
	position: fixed;
	top: -50vmin;
	left: -50vmin;
	width: 90vmin;
	height: 90vmin;
	border-radius: 47% 53% 61% 39%/45% 51% 49% 55%;
	background: #65c8ff;
}

.background::after {
	content: "";
	position: inherit;
	right: -50vmin;
	bottom: -55vmin;
	width: inherit;
	height: inherit;
	border-radius: inherit;
	background: #2b82c9;
}

.container {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	min-height: 100vh;
	padding: 20px;
	box-sizing: border-box;
	background-color: #FFFFFF;
}

h2 {
	color: #2C3E50;
	margin: 0;
	text-align: center;
	font-weight: bold;
	text-transform: uppercase;
	font-size: 70px;
	position: absolute;
	top: 130px;
	left: 265px;
	margin-bottom: 30px;
}

.home-button {
	color: #fbfcfb;
	padding: 10px 20px;
	background: transparent;
	border: none;
	font-size: 22px;
	border-radius: 20px;
	outline: none;
	cursor: pointer;
	position: absolute;
	top: 3%;
	left: 43%;
	transform: translateY(-10%);
}

.viewprofile-button {
	color: #fbfcfb;
	padding: 10px 20px;
	background: transparent;
	border: none;
	font-size: 22px;
	border-radius: 20px;
	outline: none;
	cursor: pointer;
	position: absolute;
	top: 3%;
	left: 49.5%;
	transform: translateY(-10%);
}

.viewleaves-button {
	color: #fbfcfb;
	padding: 10px 20px;
	background: transparent;
	border: none;
	font-size: 22px;
	border-radius: 20px;
	outline: none;
	cursor: pointer;
	position: absolute;
	top: 3%;
	left: 63%;
	transform: translateY(-10%);
}

.applyleave-button {
	color: #fbfcfb;
	padding: 10px 20px;
	background: transparent;
	border: none;
	font-size: 22px;
	border-radius: 20px;
	outline: none;
	cursor: pointer;
	position: absolute;
	top: 3%;
	left: 76%;
	transform: translateY(-10%);
}

.signout-button {
	color: #fbfcfb;
	padding: 10px 20px;
	background: transparent;
	border: none;
	font-size: 22px;
	border-radius: 20px;
	outline: none;
	cursor: pointer;
	position: absolute;
	top: 3%;
	left: 88.5%;
	transform: translateY(-10%);
}

header {
	position: absolute;
	background-color: #65c8ff;
	top: 0;
	right: 0px;
	width: 100%;
	padding: 40px 100px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

button:hover {
	border: 1px solid #fff;
	padding: 3px 15px;
	border-radius: 5px;
	transform: translateY(-10%);
}
</style>
</head>
<body>
	<header> </header>
	<div class="background"></div>
	<div class="card">
		<div class="container">
			<h2>Welcome: Manager</h2>
			<button class="home-button"
				onclick="location.href='Manager_Home.jsp'" type="submit">
				<b>Home</b>
			</button>
			<button class="viewprofile-button"
				onclick="location.href='View_Employees.jsp'" type="submit">View
				Employees</button>
			<button class="viewleaves-button"
				onclick="location.href='Manage_Leaves.jsp'" type="submit">Manage
				Leaves</button>
			<button class="applyleave-button"
				onclick="location.href='Approve_Leave_Home.jsp'" type="submit">Approve
				Leave</button>
			<button class="signout-button" onclick="location.href='Home.jsp'"
				type="submit">Sign Out</button>
		</div>
	</div>
</body>
</html>