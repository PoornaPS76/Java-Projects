<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ page import="java.sql.*" %>
    <%@ page import="java.sql.*, com.mysql.jdbc.Driver" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apply Leave</title>
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

h1 {
	text-align: center;
	top: 200px;
	font-size: 35px;
}
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
label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

input[type="text"], input[type="date"], textarea {
	width: 100%;
	padding: 8px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type="number"] {
	width: 50px;
}

textarea {
	height: 100px;
}

.btn-container {
	text-align: center;
}

.btn {
	padding: 10px 20px;
	background-color: #2b82c9;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-weight: bold;
}

.btn:hover {
	background-color: #333;
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
 
 <%
    Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection
			("jdbc:mysql://localhost:3306/project","root","Ps@mysql76");
        	String sql = "select casual_leaves,sick_leaves,payoff_leaves from leaves where username = ?";
            PreparedStatement statement = con.prepareStatement(sql);

            String username = (String)session.getAttribute("username"); 
            statement.setString(1,username);
            ResultSet rs = statement.executeQuery(); 

            if(rs.next()) {
            	
            }
                       
        %> 
    <header></header>
    <div class="background"></div>
	<div class="card">
    
    <form action="./LeaveApply_Servlet" method="post">
        <h1>Apply Leave</h1>
      <label for="employeeID">Employee username:</label>
      <input type="text" id="username" name="username" required>
     
    <table>
        <tr>
          <th>Casual Leaves</th>
          <td><%= rs.getString(1) %></td>
        </tr>
        <tr>
          <th>Sick Leaves</th>
          <td><%= rs.getString(2) %></td>
        </tr>
        <tr>
          <th>Payoff Leaves</th>
          <td><%= rs.getString(3) %></td>
        </tr>
      </table>
       
      <label for="fromDate">From:</label>
      <input type="date" id="from_date" name="from_date" required>
      
      <label for="toDate">To:</label>
      <input type="date" id="to_date" name="to_date" required>
      
      <label for="numberOfDays">Number of Days:</label>
      <input type="text" id="no_of_days" name="no_of_days" required>
      
      <label for="subject">Subject:</label>
      <input type="text" id="subject" name="subject" required>
      
      <label for="reason">Reason:</label>
      <textarea id="reason" name="reason" required></textarea>
      
      <div class="btn-container">
        <input type="submit" value="Apply" class="btn">
    </div>
  </form>
 
    	<button class="home-button" onclick="location.href='Employee_Home.jsp'"type="submit">Home</button>
        <button class="viewprofile-button" onclick="location.href='View_Profile.jsp'" type="submit">View Profile</button>
        <button class="viewleaves-button" onclick="location.href='View_Leaves.jsp'" type="submit">View Leaves</button>
        <button class="applyleave-button" onclick="location.href='Apply_Leave.jsp'" type="submit"><b>Apply Leave</b></button>
		<button class="signout-button" onclick="location.href='Home.jsp'" type="submit">Sign Out</button>
</div>

</body>
</html>