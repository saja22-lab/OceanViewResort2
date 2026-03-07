<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oceanview.model.User"%>
<%@ page session="true" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null || !"staff".equalsIgnoreCase(user.getRole())) {
        response.sendRedirect("../login.jsp"); // redirect if not logged in or not staff
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Staff Dashboard - Ocean View Resort</title>
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
            padding: 20px 40px;
            color: #fff;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            margin-left: 20px;
            font-weight: bold;
        }

        nav a.btn {
            background: #0080c0;
            padding: 8px 15px;
            border-radius: 6px;
        }

        nav a.btn:hover {
            background: #005a80;
        }

        .container {
            width: 800px;
            margin: 120px auto;
            text-align: center;
            color: white;
        }

        h2 {
            color: #ffffff;
            font-size: 40px;
            margin-bottom: 40px;
        }

        .btn {
            display: inline-block;
            padding: 15px 25px;
            margin: 10px;
            background: #0080c0;
            color: white;
            text-decoration: none;
            border-radius: 6px;
            font-size: 18px;
        }

        .btn:hover {
            background: #005a80;
        }
    </style>
</head>
<body>

<nav>
    <div>Welcome, <b><%= user.getUsername() %></b> (Staff)</div>
    <div>
        <a class="btn" href="viewReservation.jsp">View Reservations</a>
        <a class="btn" href="addReservation.jsp">Book Room</a>
        <a class="btn" href="staffReports.jsp">View Reports</a>
        <a class="btn" href="help.jsp">Help</a>
        <a class="btn" href="LogoutServlet">Logout</a>
        
    </div>
</nav>

<div class="container">
    <h2>Staff Dashboard</h2>
    <p>Use the buttons above to manage reservations and view reports.</p>
</div>

</body>
</html>