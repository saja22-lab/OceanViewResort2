<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Help - OceanView Resort</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('images/25.jpg') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
        }

        .help-container {
            max-width: 900px;
            margin: 50px auto;
            background: rgba(255, 255, 255, 0.95);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
            animation: fadeIn 1s ease-in-out;
        }

        h1 {
            text-align: center;
            color: #007BFF;
            margin-bottom: 30px;
        }

        h2 {
            color: #333;
            margin-top: 30px;
        }

        p, li {
            color: #555;
            line-height: 1.6;
        }

        ul {
            margin-left: 20px;
            color: #555;
        }

        li {
            margin-bottom: 10px;
        }

        .report {
            margin-top: 30px;
            padding: 20px;
            background: linear-gradient(135deg, #43cea2, #185a9d);
            color: white;
            font-size: 20px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 5px 15px rgba(0,0,0,0.15);
        }

        .back-btn {
            display: inline-block;
            margin-top: 30px;
            text-decoration: none;
            background: linear-gradient(135deg, #43cea2, #185a9d);
            color: #fff;
            padding: 12px 25px;
            border-radius: 8px;
            font-weight: bold;
            transition: all 0.3s ease;
        }

        .back-btn:hover {
            background: linear-gradient(135deg, #185a9d, #43cea2);
            transform: scale(1.05);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <div class="help-container">
        <h1>Staff Help Guide</h1>

        <h2>Getting Started</h2>
        <p>Welcome to the OceanView Resort Reservation System! This guide will help new staff members use the system effectively.</p>

        <h2>Steps to Make a Reservation</h2>
        <ul>
            <li>Login to the system using your staff credentials.</li>
            <li>Navigate to the <strong>Reservations</strong> section from the dashboard.</li>
            <li>Click on <strong>Add Reservation</strong> to create a new booking.</li>
            <li>Enter guest details including name, contact information, and reservation dates.</li>
            <li>Select the room type and check availability.</li>
            <li>Submit the reservation to confirm the booking.</li>
        </ul>

        <h2>Viewing and Managing Reservations</h2>
        <ul>
            <li>Go to the <strong>View Reservations</strong> page to see all bookings.</li>
            <li>Use the search or filter options to find specific reservations.</li>
            <li>Edit or cancel reservations as needed using the corresponding buttons.</li>
        </ul>

        <h2>Current Reservation Stats</h2>
        <%
            int totalReservations = 0;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/oceanviewdb","root","");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT COUNT(*) FROM reservations");
                if(rs.next()) {
                    totalReservations = rs.getInt(1);
                }
                rs.close();
                st.close();
                con.close();
            } catch(Exception e) {
                out.println("<p style='color:red;'>Error fetching reservations: " + e.getMessage() + "</p>");
            }
        %>
        <div class="report">
            Total Reservations: <b><%= totalReservations %></b>
        </div>

        <h2>Contact and Support</h2>
        <ul>
            <li>For any technical issues, contact the system administrator.</li>
            <li>Use the <strong>Help</strong> section for guidance on any features.</li>
        </ul>

        <a href="staffDashboard.jsp" class="back-btn">Back to Dashboard</a>
    </div>
</body>
</html>