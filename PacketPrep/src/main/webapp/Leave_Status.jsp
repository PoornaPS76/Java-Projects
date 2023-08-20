<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.*, com.mysql.jdbc.Driver"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Leave_Status</title>
</head>
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

h1 {
	position: relative;
	text-align: center;
	top: 72px;
}
/* table style */
table {
	border-collapse: collapse;
	width: 100%;
	position: relative;
	margin-bottom: 20px;
}

/* table header style */
th {
	background-color: #fff;
	text-align: left;
	padding: 10px;
	border: 1px solid #ddd;
}

/* table cell style */
td {
	border: 1px solid #ddd;
	padding: 20px;
}

/* alternating row color */
tr:nth-child(even) {
	background-color: #fff;
}

/* form style */
form {
	max-width: 500px;
	margin: 0 auto;
	top: 70px;
	align-items: center;
	position: relative;
	background-color: #fff;
	border-radius: 5px;
	padding: 30px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
}

/* label style */
label {
	display: inline-block;
	margin-bottom: 5px;
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
<body>
	<%
	String username = (String) session.getAttribute("username");

	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "Ps@mysql76");

	String id = request.getParameter("username");
	String sql = "SELECT * FROM leavereport WHERE username = ?";
	PreparedStatement statement = con.prepareStatement(sql);
	statement.setString(1, username);

	ResultSet rs = statement.executeQuery();
	%>

	<header> </header>
	<div class="background"></div>
	<div class="card">

		<h1>Leave Status</h1>
		<form method="post"
			action="./Approve_Leave_Servlet?username=<%=username%>">

			<table>
				<%
				if (rs.next()) {
				%>
				<tr>
					<th>User name</th>
					<td><%=rs.getString(1)%></td>
				</tr>
				<tr>
					<th>From Date</th>
					<td><%=rs.getString(2)%></td>
				</tr>
				<tr>
					<th>To Date</th>
					<td><%=rs.getString(3)%></td>
				</tr>
				<tr>
					<th>No.of Days</th>
					<td><%=rs.getString(4)%></td>
				</tr>
				<tr>
					<th>Subject</th>
					<td><%=rs.getString(5)%></td>
				</tr>
				<tr>
					<th>Reason</th>
					<td><%=rs.getString(6)%></td>
				</tr>
				<tr>
					<th>Status</th>
					<td><%=rs.getString(7)%></td>
				</tr>
				<%
				}
				%>

			</table>

		</form>
	</div>


	<button class="home-button" onclick="location.href='Employee_Home.jsp'"
		type="submit">Home</button>
	<button class="viewprofile-button"
		onclick="location.href='View_Profile.jsp'" type="submit">View
		Profile</button>
	<button class="viewleaves-button"
		onclick="location.href='View_Leaves.jsp'" type="submit">
		<b>View Leaves</b>
	</button>
	<button class="applyleave-button"
		onclick="location.href='Apply_Leave.jsp'" type="submit">Apply
		Leave</button>
	<button class="signout-button" onclick="location.href='Home.jsp'"
		type="submit">Sign Out</button>
</body>
</html>