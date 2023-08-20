<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
    <%@ page import="java.sql.*, com.mysql.jdbc.Driver" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Approve Leave Home</title>
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
	width: 70vmin;
	height: 80vmin;
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
   header{
            position: absolute;
            background-color: #65c8ff;
            top: 0;
            right: -10px;
            width: 100%;
            padding: 40px 100px;
            display: flex;
            justify-content: space-between;
            align-items: center;
          }
          .form{
          background-color: #fff;
        border-radius: 5px;
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
        left: 43%;
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
        left: 49.5%;
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
        left: 63%;
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
        left: 76%;
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

    h1 {
      text-align: center;
      top: 90px;
      position: relative;
      font-size: 40px;

    }

    table {
      position: relative;
      top: 100px;
      left: 35px;
      justify-content: center;
      align-items: center;
      width: 95%;
      border-collapse: collapse;
    }

    th, td {
      padding: 10px;
      text-align: left;
      border: 1px solid #333;
    }

    th {
      background-color: #fff;
      font-weight: bold;
      border: 1px solid #333;
    }

    tr:hover {
      background-color: #65c8ff;
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
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Ps@mysql76");
String sql = " select lr.username,l.casual_leaves,l.sick_leaves,l.payoff_leaves,lr.from_date,lr.to_date,lr.no_of_days,lr.subject,lr.reason,lr.status from leavereport lr join leaves l on lr.username=l.username";
Statement statement = con.createStatement();

String username = request.getParameter("username");  

ResultSet rs = statement.executeQuery(sql); // Execute the SQL query here
%>
 <header></header>
    <div class="background"></div>
	<div class="card">
  <h1>Employee Leaves</h1>
  <form>
  <table>
  <tr>
    <th>User name</th>
    <th>Casual Leaves</th>
    <th>Sick Leaves</th>
    <th>Payoff Leaves</th>
    <th>From Date</th>
    <th>To Date</th>
    <th>No.of Days</th>
    <th>Subject</th>
    <th>Reason</th>
    <th>Status</th>
  </tr>
  <% while (rs.next()) { %>
  <tr>
    <td><a href="Approve_Leave.jsp?username=<%= rs.getString(1) %>"><%= rs.getString(1) %></a></td>
    <td><%= rs.getString(2) %></td>
    <td><%= rs.getString(3) %></td>
    <td><%= rs.getString(4) %></td>
    <td><%= rs.getString(5) %></td>
    <td><%= rs.getString(6) %></td>
    <td><%= rs.getString(7)%></td>
    <td><%= rs.getString(8) %></td>
    <td><%= rs.getString(9) %></td>
    <td><%= rs.getString(10)%></td>
  </tr>
  <% } %>
</table>
  </form>
    </div>
  <button class="home-button" onclick="location.href='Manager_Home.jsp'"type="submit">Home</button>
  <button class="viewprofile-button" onclick="location.href='View_Employees.jsp'" type="submit">View Employees</button>
  <button class="viewleaves-button" onclick="location.href='Manage_Leaves.jsp'" type="submit">Manage Leaves</button>
  <button class="applyleave-button" onclick="location.href='Approve_Leave_Home.jsp'" type="submit"><b>Approve Leave</b></button>
  <button class="signout-button" onclick="location.href='Home.jsp'" type="submit">Sign Out</button>
</body>
</html>