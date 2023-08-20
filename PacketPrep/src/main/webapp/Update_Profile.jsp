<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.sql.*" %>
    <%@ page import="java.sql.*, com.mysql.jdbc.Driver" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Profile</title>
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
/* table style */
table {
	border-collapse: collapse;
	width: 100%;
	margin-bottom: 20px;
}

h2 {
	position: absolute;
	font-size: 50px;
	top: 35px;
	left: 570px;
}

/* table header style */
th {
	background-color: #f2f2f2;
	text-align: left;
	padding: 8px;
}

/* table cell style */
td {
	border: 1px solid #ddd;
	padding: 8px;
}

/* alternating row color */
tr:nth-child(even) {
	background-color: #f2f2f2;
}

/* form style */
form {
	max-width: 500px;
	margin: 0 auto;
	position: relative;
	top: 100px;
	background-color: #fff;
	border-radius: 5px;
	padding: 20px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
}

/* label style */
label {
	display: inline-block;
	margin-bottom: 5px;
	font-weight: bold;
	font-size: 14px;
	color: #333;
}

/* input style */
input[type="text"], input[type="password"], input[type="email"], input[type="tel"],
	select {
	width: 100%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-bottom: 10px;
	font-size: 14px;
	color: #333;
}

/* button style */
input[type="submit"] {
	background-color: #2b82c9;
	color: white;
	padding: 12px 20px;
	border: none;
	position: relative;
	align-items: center;
	top: 10px;
	left: 200px;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
	font-weight: bold;
	text-transform: uppercase;
	transition: background-color 0.2s ease-in-out;
}

/* button hover style */
input[type="submit"]:hover {
	background-color: #333;
}

/* error message style */
.error {
	color: red;
	font-size: 12px;
	margin-top: 5px;
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
	left: 50%;
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
	left: 56.5%;
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
	left: 67%;
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
	left: 78%;
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
<%-- <%
String empid=request.getParameter("EmployeeID");
out.println(empid);
    Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection
			("jdbc:mysql://localhost:3306/project","root","Ps@mysql76");
	String sql = "UPDATE registration SET id=?, firstname=?, lastname=?, username=?, password=?, confirmpassword=?, gender=?, dob=?, email=?, mobile=?, location=?, state=?, pincode=? WHERE username = ?";
            PreparedStatement statement = con.prepareStatement(sql);

            String username = (String)session.getAttribute("username"); 
            statement.setString(1,username);
            int r = statement.executeUpdate(); 
            
            if(r!=0) 
            	
                       
        %> --%>
	<header> </header>
	<div class="background"></div>
	<div class="card">
		<h2>Update Profile</h2>
		<br> <br><%  String username = (String)session.getAttribute("username"); 
         %>
		<form method="post" action="./Update_Profile">
      <label for="id">Employee ID</label>
      <input type="text" id="id" name="id" placeholder="Enter your employee ID">
      
      <label for="firstname">First Name</label>
      <input type="text" id="firstname" name="firstname" placeholder="Enter your first name">
        
      <label for="lastname">Last Name</label>
      <input type="text" id="lastname" name="lastname" placeholder="Enter your last name">
        
      <label for="username">User Name</label>
      <input type="text" id="username" name="username" placeholder="Enter your user name">
        
      <label for="password">Password</label>
      <input type="password" id="password" name="password" placeholder="Enter your password">
        
      <label for="confirmpassword">Confirm Password</label>
      <input type="password" id="confirmpassword" name="confirmpassword" placeholder="Confirm Password">
        
      <label for="gender">Gender</label>
      <select id="gender" name="gender">
        <option value="male">Male</option>
        <option value="female">Female</option>
        <option value="other">Other</option>
      </select>
      
      <label for="dob">DOB</label>
      <input type="date" id="dob" name="dob">
      <br>
      
      <input type="email" id="email" name="email" placeholder="Email">
      
      <label for="mobile">Mobile</label>
      <input type="text" id="mobile" name="mobile" placeholder="Mobile">
      
      <label for="location">Location</label>
      <input type="text" id="location" name="location" placeholder="Location">
      
      <label for="state">State</label>
      <input type="text" id="state" name="state" placeholder="State">
      
      <label for="pincode">Pincode</label>
      <input type="text" id="pincode" name="pincode" placeholder="Pincode">
      
      <input type="submit" value="Update">
    </form>
		 <button class="home-button" onclick="location.href='Employee_Home.jsp'"type="submit">Home</button>
        <button class="viewprofile-button" onclick="location.href='View_Profile.jsp'" type="submit"><b>View Profile</b></button>
        <button class="viewleaves-button" onclick="location.href='View_Leaves.jsp'" type="submit">View Leaves</button>
        <button class="applyleave-button" onclick="location.href='Apply_Leave.jsp'" type="submit">Apply Leave</button>
		<button class="signout-button" onclick="location.href='Home.jsp'" type="submit">Sign Out</button>
	</div>
</body>
</html>