<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
<style>
* {
	box-sizing: border-box;
}

html, body {
	height: 100%;
}

body {
	display: grid;
	place-items: center;
	margin: 0;
	padding: 0 35px;
	background: #f5f5f5;
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

.card {
	overflow: hidden;
	position: relative;
	z-index: 3;
	width: 100%;
	margin: 0 20px;
	padding: 145px 30px 10px;
	border-radius: 1.20rem;
	background: #fff;
	text-align: center;
	box-shadow: 0 100px 100px rgb(0 0 0/ 10%);
}

.card::before {
	content: "";
	position: absolute;
	top: -880px;
	left: 50%;
	translate: -50% 0;
	width: 1000px;
	height: 1000px;
	border-radius: 50%;
	background: #2b82c9;
}

@media ( width >= 500px) {
	.card {
		margin: 0;
		width: 400px;
	}
}

.card .logo {
	position: absolute;
	border: #ebebeb;
	top: 30px;
	left: 50%;
	translate: -50% 0;
	width: 64px;
	height: 64px;
}

.card>h2 {
	font-size: 22px;
	font-weight: 300;
	margin: 0 0 30px;
	color: #2a3444;
}

.card>footer {
	color: #a1a1a1;
}

.card>footer>a {
	color: #2b82c9;
}

.form {
	display: grid;
	gap: 16px;
	margin: 0 0 36px;
}

.form>input, .form>button {
	width: 100%;
	height: 45px;
	border-radius: 25px;
}

.form>input {
	border: 2px solid #ebebeb;
	font-family: inherit;
	font-size: 16px;
	padding: 0 24px;
	color: #11274c;
}

.form>input::placeholder {
	color: #cac8c8;
}

.form>button {
	cursor: pointer;
	width: 100%;
	height: 45px;
	padding: 0 16px;
	background: #2b82c9;
	color: #f9f9f9;
	border: 0;
	font-family: inherit;
	font-size: 1rem;
	font-weight: 600;
	text-align: center;
	letter-spacing: 3px;
	transition: all 0.375s;
}

button[type="submit"]:hover {
	background-color: #333;
}
</style>
</head>
<body>
	<div class="background"></div>
	<div class="card">
		<img class="logo"
			src="https://i.pinimg.com/originals/30/ea/08/30ea08ae670abbf911442565d7d36ad0.jpg" />
		<h2>Contact Us</h2>
		<form class="form" action="./Registration_Servlet" method="post">
			<input type="text" name="name" placeholder="Name" /> <input
				type="text" name="phno" placeholder="Mobile" /> <input type="email"
				name="email" placeholder="Email" /> <input type="text"
				name="subject" placeholder="Subject" /> <input type="text"
				name="message" placeholder="Message" />
			<button type="submit">SUBMIT</button>
		</form>

	</div>
</body>
</html>