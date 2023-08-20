<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.sql.*, com.mysql.jdbc.Driver" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Profile</title>
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
        h1{
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
        padding: 8px;
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
        position: relative;
        background-color: #fff;
        border-radius: 5px;
        padding: 30px;
        box-shadow: 0px 0px 10px rgba(0,0,0,0.2);
      }
      
      /* label style */
      label {
        display: inline-block;
        margin-bottom: 5px;
      }
      
      /* input style */
      input[type="text"],
      input[type="password"],
      input[type="email"],
      input[type="tel"],
      select {
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        margin-bottom: 10px;
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
        left: 56.5%;
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
      
      /* button style */
      input[type="submit"] {
        background-color: #2b82c9;
        color: white;
        padding: 10px 20px;
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
    </style>
</head>
<body>
<header></header>
<div class="background"></div>
	<div class="card">
    
    <%
    Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection
			("jdbc:mysql://localhost:3306/project","root","Ps@mysql76");
        	String sql = "select * from registration where username = ?";
            PreparedStatement statement = con.prepareStatement(sql);

            String username = (String)session.getAttribute("username"); 
            statement.setString(1,username);
            ResultSet rs = statement.executeQuery(); 

            if(rs.next()) {
                       
        %>
    <h1>View Profile</h1>
    <form  action="Update_Profile.jsp">
    
    <table>
      <tr>
        <th>Employee ID</th>
        <td><%=rs.getString(1)%></td>
      </tr>
      <tr>
        <th>First Name</th>
        <td><%=rs.getString(2)%></td>
      </tr>
      <tr>
        <th>Last Name</th>
        <td><%=rs.getString(3)%></td>
      </tr>
      <tr>
        <th>User Name</th>
        <td><%=rs.getString(4)%></td>
      </tr>
      <tr>
        <th>Password</th>
        <td>********</td>
      </tr>
      <tr>
        <th>Confirm Password</th>
        <td>********</td>
      </tr>
      <tr>
        <th>Gender</th>
        <td><%=rs.getString(7)%></td>
      </tr>
      <tr>
        <th>DOB</th>
        <td><%=rs.getString(8)%></td>
      </tr>
      <tr>
        <th>Email</th>
        <td><%=rs.getString(9)%></td>
      </tr>
      <tr>
        <th>Mobile</th>
        <td><%=rs.getString(10)%></td>
      </tr>
      <tr>
        <th>Location</th>
        <td><%=rs.getString(11)%></td>
      </tr>
      <tr>
        <th>State</th>
        <td><%=rs.getString(12)%></td>
      </tr>
      <tr>
        <th>Pincode</th>
        <td><%=rs.getString(13)%></td>
      </tr>
    </table>
     <%} %>
  <div class="two">
            <input type="submit" value ="Edit">
        </div>

    </form>
    </div>
    <button class="home-button" onclick="location.href='Employee_Home.jsp'"type="submit">Home</button>
    <button class="viewprofile-button" onclick="location.href='View_Profile.jsp'" type="submit"><b>View Profile</b></button>
    <button class="viewleaves-button" onclick="location.href='View_Leaves.jsp'" type="submit">View Leaves</button>
    <button class="applyleave-button" onclick="location.href='Apply_Leave.jsp'" type="submit">Apply Leave</button>
    <button class="signout-button" onclick="location.href='Home.jsp'" type="submit">Sign Out</button>
</body>
</html>