<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Successful</title>
<style>
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            max-width: 320px;
            width: 300%;
            height: 300px;
            justify-content: center;
            margin: 0px 20px;
            position: relative;
            display: flex;
            top: 110px;
            left: 540px;
            align-items: center;
            text-align: center;
            animation: containerAnimation 1s ease;
        }

        @keyframes containerAnimation {
            0% {
                opacity: 0;
                transform: translateY(-50px);
            }

            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        #message-box {
            width: 300px;
            margin: 100px auto;
            text-align: center;
            background-color: #f0f8ea;
            padding: 20px;
            position: relative;
            top: -50px;
            border: 1px solid #7ac365;
            border-radius: 5px;
        }

        .success-icon {
            font-size: 50px;
            color: #7ac365;
            animation: tickAnimation 1s infinite;
        }

        .success-message {
            font-size: 18px;
            margin-top: 10px;
            color: #333;
        }

        .h2 {
            font-size: 18px;
            margin-top: 10px;
            color: #333;
        }

        @keyframes tickAnimation {
            0% {
                transform: scale(0);
            }

            50% {
                transform: scale(1.2);
            }

            100% {
                transform: scale(1);
            }
        }

        .h2 {
            text-align: center;
            position: relative;
            top: 20px;
        }

        .login-button {
            background-color: #2b82c9;
            color: #fff;
            border: none;
            position: relative;
            top: 100px;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .login-button:hover {
            background-color: #333;
        }
    </style>
</head>

<body>
    <div class="container">
        <div id="message-box">
            <div class="success-icon">&#10004;</div>
            <div class="success-message">Details Updated Successfully!</div>
            <div class="h2">Please click here to view your details..</div>
            <button class="login-button" onclick="location.href='View_Profile.jsp'">View Profile</button>
        </div>
    </div>
</body>
</html>