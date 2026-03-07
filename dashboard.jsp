<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oceanview.model.User"%>
<%@ page session="true" %>
<%
    User user=(User)session.getAttribute("user");
    if(user==null){
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard - Ocean View Resort</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('images/home1.jpg') no-repeat center center fixed;
            background-size: cover;
        }

        /* Dark overlay for better text visibility */
        body::before {
            content: "";
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: -1;
        }

        nav {
            background: linear-gradient(135deg, #0A3D62, #1B4F72, #5DADE2);
            padding: 30px;
            color: #fff;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        nav a {
            color: #0080c0;
            text-decoration: none;
            margin-left: 20px;
        }

        .container {
            padding: 40px;
            text-align: center;
            color: white;
        }

        h2 {
            color: #ffffff;
            font-size: 50px;
        }

        .btn {
            padding: 10px 20px;
            background: #0080c0;
            color: #fff;
            border: none;
            border-radius: 8px;
            text-decoration: none;
        }

        .btn:hover {
            background: #005a80;
        }
    </style>
</head>
<body>
    <nav>
        <div>Welcome, <b><%= user.getUsername() %></b></div>
        <div>
            <a class="btn" href="addReservation.jsp">Add Reservation</a>
            <a class="btn" href="viewReservation.jsp">View Reservations</a>
            <a class="btn" href="inquries.jsp">inquires</a>
            <a class="btn" href="LogoutServlet">Logout</a>
        </div>
    </nav>

    <div class="container">
        <h2>Dashboard</h2>
        <p>Use the buttons above to manage reservations.</p>
    </div>
</body>
</html>