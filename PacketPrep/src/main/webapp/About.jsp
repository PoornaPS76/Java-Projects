<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About</title>
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
	margin: 50px 100px;
}

.content .info h2 {
	color: #1567c4;
	font-size: 50px;
	text-transform: uppercase;
	font-weight: 800;
	letter-spacing: 3px;
	line-height: 80px;
	margin-bottom: 30px;
}

.content .info pre {
	font-size: 30px;
	font-weight: 500;
	line-height: 70px;
	margin-bottom: 40px;
	margin-left: -155px;
}

.content .info h3 {
	color: #1567c4;
	font-size: 50px;
	text-transform: uppercase;
	font-weight: 800;
	letter-spacing: 3px;
	line-height: 80px;
	margin-bottom: 10px;
	margin-top: -70px;
}

.content .info pre {
	font-size: 30px;
	font-weight: 500;
	line-height: 70px;
	margin-bottom: 30px;
	margin-left: -155px;
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
	font-weight: 100px;
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

footer {
	position: relative;
	background-color: #145ca4;
	bottom: 0;
	width: 100%;
	padding: 100px 100px;
	display: flex;
	justify-content: space-between;
	align-items: center;
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
			<h2>About PacketPrep</h2>
			<pre>
                    An Edtech Company founded in 2018 by educators and technology innovators with 
                    over  2 decades of  experience in  the field of  technology,  education, and Business.
                    We are specialized  in  placement driven training on technologies like Java, Dotnet,
                    Python, and  Frontend. Our quality  training and delivery  has  helped  thousands of 
                    students crack with their first job in top multinational companies.
                    </pre>

			<h3>Vision</h3>
			<pre>
                    To Make Millions of Graduates Employable
                    </pre>

			<h3>Mission</h3>
			<pre>
                    To create a platform to inspire students to code, upskill on technologies
                    that are in demand and bring ample job opportunities to choose from.
                    </pre>
		</div>

	</div>
	<button class="login-button" onclick="location.href='Login.jsp'"
		type="submit">Login</button>
	<button class="signup-button" onclick="location.href='Signup.jsp'"
		type="submit">Sign Up</button>
	<button class="home-button" onclick="location.href='Home.jsp'"
		type="submit">Home</button>
	<button class="about-button" onclick="location.href='About.jsp'"
		type="submit">
		<b>About</b>
	</button>
	<button class="services-button" onclick="location.href='Service.jsp'"
		type="submit">Services</button>
	<button class="contact-button" onclick="location.href='Contact.jsp'"
		type="submit">Contact</button>

	<footer>
		<h2>Packet Prep</h2>
	</footer>
</body>
</html>