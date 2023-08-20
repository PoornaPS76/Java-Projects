<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Poppins", sans-serif;
}

header {
	position: relative;
	background-color: #145ca4;
	top: 0;
	width: 100%;
	padding: 43px 100px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.logo {
	position: absolute;
	border: #ebebeb;
	top: -1;
	translate: 0;
	width: 400px;
	height: 70px;
}

.content {
	max-width: 650px;
	margin: 110px 100px;
}

.content .info h2 {
	color: #1567c4;
	font-size: 60px;
	text-transform: uppercase;
	font-weight: 800;
	letter-spacing: 2px;
	line-height: 80px;
	margin-bottom: 30px;
}

.content .info p {
	font-size: 30px;
	font-weight: 500;
	margin-bottom: 40px;
}

.content .info-btn {
	color: #fff;
	position: relative;
	background: #1567c4;
	text-decoration: none;
	text-transform: uppercase;
	font-weight: 700;
	letter-spacing: 2px;
	padding: 10px 20px;
	border-radius: 5px;
	transition: 0.3s;
	bottom: -20px;
	transition-property: background;
}

.content .info-btn:hover {
	background: #333;
}

.img-bg {
	position: absolute;
	width: 600px;
	top: 90px;
	right: 50px;
}

.login-button {
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
	left: 80.4%;
	transform: translateY(-10%);
}

.signup-button {
	color: #fbfcfb;
	padding: 10px 25px;
	background: transparent;
	border: none;
	font-size: 22px;
	border-radius: 20px;
	outline: none;
	cursor: pointer;
	position: absolute;
	top: 3%;
	left: 86%;
	transform: translateY(-10%);
}

.contact-button {
	color: #fbfcfb;
	padding: 10px 25px;
	background: transparent;
	border: none;
	font-size: 22px;
	border-radius: 20px;
	outline: none;
	cursor: pointer;
	position: absolute;
	top: 3%;
	left: 72%;
	transform: translateY(-10%);
}

.services-button {
	color: #fbfcfb;
	padding: 10px 25px;
	background: transparent;
	border: none;
	font-size: 22px;
	border-radius: 20px;
	outline: none;
	cursor: pointer;
	position: absolute;
	top: 3%;
	left: 64%;
	transform: translateY(-10%);
}

.about-button {
	color: #fbfcfb;
	padding: 10px 25px;
	background: transparent;
	border: none;
	font-size: 22px;
	border-radius: 20px;
	outline: none;
	cursor: pointer;
	position: absolute;
	top: 3%;
	left: 57.5%;
	transform: translateY(-10%);
}

.home-button {
	color: #fbfcfb;
	padding: 10px 25px;
	background: transparent;
	border: none;
	font-size: 22px;
	border-radius: 20px;
	outline: none;
	cursor: pointer;
	position: absolute;
	top: 3%;
	left: 51%;
	transform: translateY(-10%);
}

button[type="submit"]:hover {
	border: 0.5px solid #fff;
	padding: 2px 10px;
	border-radius: 5px;
	transform: translateZ(-10%);
}
</style>
</head>
<body>
	<header>
		<img class="logo"
			src="https://i.pinimg.com/originals/ee/38/b0/ee38b0a68b148a9cf4a9a64d4eb2c850.png" />
	</header>
	<div class="content">
		<div class="info">
			<h2>
				Get Trained <br>Get Placed!
			</h2>
			<p>
				Full Stack Java Training with <br>Placement assistance
			</p>
			<a href="#" class="info-btn">More Info</a>
		</div>
		<img class="img-bg"
			src="https://i.pinimg.com/originals/db/a9/c7/dba9c7a656997da02f42bb3df2501244.jpg"
			alt="my bg">
	</div>
	<button class="login-button" onclick="location.href='Login.jsp'"
		type="submit">Login</button>
	<button class="signup-button" onclick="location.href='Signup.jsp'"
		type="submit">Sign Up</button>
	<button class="home-button" onclick="location.href='Home.jsp'"
		type="submit">
		<b>Home</b>
	</button>
	<button class="about-button" onclick="location.href='About.jsp'"
		type="submit">About</button>
	<button class="services-button" onclick="location.href='Service.jsp'"
		type="submit">Services</button>
	<button class="contact-button" onclick="location.href='Contact.jsp'"
		type="submit">Contact</button>
	<footer>
		<!-- <h2>Packet Prep</h2> -->
	</footer>

</body>
</html>