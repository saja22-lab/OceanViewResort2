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
    <title>Add Reservation - Ocean View Resort</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            min-height: 100vh;
            background: url('images/25.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* Dark overlay */
        body::before {
            content: "";
            position: fixed;
            inset: 0;
            background: rgba(0,0,0,0.55);
            z-index: -1;
        }

        .container {
            width: 500px;
            background: rgba(255,255,255,0.95);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 15px 40px rgba(0,0,0,0.3);
        }

        h2 {
            text-align: center;
            color: #0A3D62;
            margin-bottom: 20px;
        }

        input, select {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 14px;
        }

        input:focus, select:focus {
            outline: none;
            border-color: #0080c0;
        }

        input[type="submit"] {
            background: linear-gradient(45deg, #0080c0, #00b4db);
            color: #fff;
            border: none;
            cursor: pointer;
            font-weight: bold;
            transition: 0.3s;
        }

        input[type="submit"]:hover {
            background: linear-gradient(45deg, #005f8f, #0080c0);
            transform: scale(1.03);
        }

        .btn-back {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #0080c0;
            font-weight: bold;
            text-decoration: none;
        }

        .btn-back:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Add Reservation</h2>
        <form action="ReservationServlet" method="post">
            <input type="text" name="guestName" placeholder="Guest Name" required>
            <input type="email" name="email" placeholder="Email">
            <input type="text" name="phone" placeholder="Phone">

            <select name="roomType" required>
                <option value="">Select Room Type</option>
                <option value="Standard">Standard</option>
                <option value="Deluxe">Deluxe</option>
                <option value="Suite">Suite</option>
            </select>

            <input type="date" name="checkIn" required>
            <input type="date" name="checkOut" required>

            <input type="submit" value="Add Reservation">
        </form>

        <a class="btn-back" href="dashboard.jsp">← Back to Dashboard</a>
    </div>

</body>
</html>