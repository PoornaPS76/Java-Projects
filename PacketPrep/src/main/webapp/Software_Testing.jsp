<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Testing</title>
<style>
	@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');
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

	.container {
		max-width: 400px;
		margin: 0 auto;
        
		position: relative;
		top: 100px;
		background-color: #f9f9f9;
		border-radius: 5px;
		padding: 00px;
		transition: transform 0.3s ease;
		box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
	}

	
	.container-wrapper {
		display: flex;
		justify-content: space-between;
		flex-wrap: wrap;
	}

	.container {
		flex: 0 0 calc(32% - 20px);
		margin-bottom: 20px;
        
	}

	.card img {
		width: 100%;
		height: auto;
	}

	.container h2 {
		font-size: 20px;
	}

	.card button {
		left: 50%;
		transform: translateX(-50%);
	}
	.container h2 {
		color: rgb(0 0 0 /90%);
		position: relative;
		top: 10px;
		font-family: sans-serif;
		font-size: 25px;
		left: 25px;
		align-items: center;
		justify-content: center;
	}

	.container p {
		color: rgb(0 0 0 /70%);
	}

	.card img {
		width: 350px;
		height: 210px;
		object-fit: fill;
		top: 25px;
		align-items: center;
		left: 25px;
		position: relative;
		margin-right: 30px;
		border-radius: inherit;
		box-shadow: 0 60px 40px rgb(0 0 0 /8%);
	}

	.card button {
		border: none;
		background: none;
		color: black;
		text-decoration: none;
		cursor: pointer;
		position: relative;
		transition: color 0.3s ease;
		left: 250px;
		cursor: pointer;
		top: -20px;
		font-family: inherit;
		font-size: 16px;
		text-decoration: none;
		transition: text-decoration 0.3s ease;
	}

	.card button:before {
		content: "";
		position: absolute;
		left: 0;
		bottom: -2px;
		width: 100%;
		height: 2px;
		background-color: black;
		transform: scaleX(0);
		transition: transform 0.3s ease;
	}

	.card button:hover {
		color: black;
	}

	.card button:hover::before {
		transform: scaleZ(1);
	}

	@media (max-width: 740px) {
		.container {
			width: 100
		}
		.card img {
			margin: -100px 0 30px 0;
			width: 100%;
			max-width: 1000px;
		}
	}

	.container:hover {
		transform: scale(1.05);
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
		position: fixed;
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
		position: fixed;
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
		position: fixed;
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
		position: fixed;
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
		position: fixed;
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
		position: fixed;
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
		<img class="logo" src="https://i.pinimg.com/originals/ee/38/b0/ee38b0a68b148a9cf4a9a64d4eb2c850.png"/>
	</header> 
	<div class="container-wrapper">
	<div class="container">
		<div class="card">
			<img src="https://i.pinimg.com/originals/76/8e/93/768e93c2ee03a89f324443f81e000f28.jpg"/>
			<div>
				<br>
				<h2>Automation Testing</h2>
				<br>
				<br>
				<br>
				<button class="enroll-button" onclick="location.href='Java_Developer.html'" type="submit">Enroll Now &rarr;</button>
				<br>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="card">
			<img src="https://i.pinimg.com/originals/ba/08/87/ba0887ab5f023f571f59b5f076aaa0bf.jpg"/>
			<div>
				<br>
				<h2>Manual Testing</h2>
				<br>
				<br>
				<br>
				<button class="enroll-button" onclick="location.href='Python_Developer.html'" type="submit">Enroll Now &rarr;</button>
				<br>
			</div>
		</div>
	</div>
	</div>
	<button class="login-button" onclick="location.href='Login.jsp'" type="submit">Login</button>           
	<button class="signup-button" onclick="location.href='Signup.jsp'" type="submit">Sign Up</button>           
	<button class="home-button" onclick="location.href='Home.jsp'" type="submit">Home</button>            
	<button class="about-button" onclick="location.href='About.jsp'" type="submit">About</button>           
	<button class="services-button" onclick="location.href='Service.jsp'" type="submit"><b>Services</b></button>
	<button class="contact-button" onclick="location.href='Contact.jsp'" type="submit">Contact</button>  
</body>
</html>