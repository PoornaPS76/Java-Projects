<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Home</title>
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
    top: 150px;
    left: 265px;
	margin-bottom: 30px;
}

.employee-image {
	display: block;
	margin: 30px auto 0;
	width: 150px;
	height: 150px;
	object-fit: cover;
	object-position: center;
	border-radius: 50%;
	border: 5px solid #FFFFFF;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
}


.home-button{
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
        left: 50%;
        transform: translateY(-10%);
}
.viewprofile-button{
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
        left: 56.6%;
        transform: translateY(-10%);
}
.viewleaves-button{
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
        left: 67%;
        transform: translateY(-10%);
}
.applyleave-button{
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
        left: 78%;
        transform: translateY(-10%);
}
.signout-button{
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
header{
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
		<% String username = (String)session.getAttribute("username"); %>
		
			<h2><%="WELCOME : "+username %></h2>			
        <button class="home-button" onclick="location.href='Employee_Home.jsp'"type="submit"><b>Home</b></button>
        <button class="viewprofile-button" onclick="location.href='View_Profile.jsp'" type="submit">View Profile</button>
        <button class="viewleaves-button" onclick="location.href='View_Leaves.jsp'" type="submit">View Leaves</button>
        <button class="applyleave-button" onclick="location.href='Apply_Leave.jsp'" type="submit">Apply Leave</button>
		<button class="signout-button" onclick="location.href='Home.jsp'" type="submit">Sign Out</button>
		</div>
	</div>
</body>
</html>