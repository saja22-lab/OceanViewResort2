<%@ page session="true" %>

<html>
<head>
    <title>User Dashboard</title>
    <style>
        /* ===== General Styles ===== */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #5DADE2, #1B4F72);
            color: #fff;
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: url('images/home1.jpg') no-repeat center center fixed;
            background-size: cover;
        }
        

        /* ===== Container ===== */
        .dashboard-container {
            background-color: rgba(0, 0, 0, 0.6);
            padding: 40px;
            border-radius: 12px;
            text-align: center;
            box-shadow: 0 0 15px rgba(0,0,0,0.4);
        }

        h2 {
            margin-bottom: 30px;
            font-size: 28px;
            color: #ffde59;
        }

        /* ===== Links / Buttons ===== */
        a {
            display: block;
            background-color: #0080c0;
            color: #fff;
            text-decoration: none;
            padding: 12px 20px;
            margin: 10px auto;
            width: 200px;
            border-radius: 6px;
            font-weight: bold;
            transition: 0.3s;
        }

        a:hover {
            background-color: #005f8a;
            transform: translateY(-2px);
        }

        /* ===== Responsive ===== */
        @media (max-width: 600px) {
            .dashboard-container {
                padding: 20px;
            }
            a {
                width: 100%;
            }
        }
    </style>
</head>

<body>
    <div class="dashboard-container">
        <h2>Welcome Customer</h2>

        <a href="rooms.jsp">View Rooms</a>
        <a href="addReservation.jsp">Book Room</a>
        <a href="viewReservation.jsp">Booking Details</a>
        <a href="contact.jsp">Contact</a>
        <a href="LogoutServlet">Logout</a>
    </div>
</body>
</html>