<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.*" %>
    <%@ page import="java.sql.*, com.mysql.jdbc.Driver" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Leaves</title>
    <style>
          body {
            font-family: Arial, sans-serif;
            background-color: transparant;
            font-family: Arial, sans-serif;
            font-size: 16px;
            line-height: 1.5;
            margin: 0;
            padding: 0;
        }

        @media (width >=500px) {
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

        h2 {
            text-align: center;
            margin-top: 20px;
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            position: relative;
            top: 100px;
            background-color: #fff;
            padding: 40px;
            border-radius: 4px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group input[type="text"],
        .form-group select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-actions {
            text-align: center;
            margin-top: 20px;
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
            left: 43%;
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
            left: 49.5%;
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
            left: 63%;
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
            left: 76%;
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

        .form-actions button {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #2b82c9;
            color: #fff;
            border: none;
            border-radius: 20px;
            cursor: pointer;
        }

        button:hover {
            border: 1px solid #fff;
            padding: 3px 15px;
            border-radius: 5px;
            transform: translateY(-10%);
        }

        .form-actions button:hover {
            background-color: #333;
        }
    </style>
</head>
<body>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Ps@mysql76");
String sql = "select username from registration";
Statement statement = con.createStatement();

String username = request.getParameter("username");  

ResultSet rs = statement.executeQuery(sql); // Execute the SQL query here
%>

    <header> </header>
    <div class="background"></div>
    <div class="card">
        <div class="container">
            <h2>Add Employee Leaves</h2>
            <form method="post" action="./AddLeave_Servlet">
                <div class="form-group">
                    <label for="username">User Name:</label>
                    <select id="username" name="username">
                        <option value="">Select : username</option>
                    <% while (rs.next()) { %>
                    <option value="<%= rs.getString(1) %>"><%= rs.getString(1) %></option>
                    <% } %>
                        
                    </select>
                </div>
                <div class="form-group">
                    <label for="casualLeave">Casual Leaves:</label>
                    <input type="text" id="casual_leaves" name="casual_leaves">
                </div>
                <div class="form-group">
                    <label for="sickLeave">Sick Leaves:</label>
                    <input type="text" id="sick_leaves" name="sick_leaves">
                </div>
                <div class="form-group">
                    <label for="payoffLeave">PayOff Leaves:</label>
                    <input type="text" id="payoff_leaves" name="payoff_leaves">
                </div>
                <div class="form-group">
                    <label for="payoffLeave">Leaves Used:</label>
                    <input type="text" id="leaves_used" name="leaves_used">
                </div>
                <div class="form-group">
                    <label for="payoffLeave">Total Leaves:</label>
                    <input type="text" id="total_leaves" name="total_leaves">
                </div>
                <div class="form-actions">
                    <button type="submit">Submit</button>
                </div>
            </form>
        </div>
    </div>
     
    <button class="home-button" onclick="location.href='Manager_Home.jsp'" type="submit">Home</button>
    <button class="viewprofile-button" onclick="location.href='View_Employees.jsp'" type="submit">View
        Employees</button>
    <button class="viewleaves-button" onclick="location.href='Manage_Leaves.jsp'" type="submit"><b>Manage
            Leaves</b></button>
    <button class="applyleave-button" onclick="location.href='Approve_Leave_Home.jsp'" type="submit">Approve Leave</button>
    <button class="signout-button" onclick="location.href='Home.jsp'" type="submit">Sign Out</button>
</body>
</html>