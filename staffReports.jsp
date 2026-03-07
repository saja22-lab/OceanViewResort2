<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Staff Reports - OceanView Resort</title>
    <style>
        /* Body */
        body {
            font-family: 'Arial', sans-serif;
            
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: url('images/25.jpg') no-repeat center center fixed;
            background-size: cover;
        }

        /* Container Card */
        .container {
            width: 650px;
            
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            text-align: center;
            animation: fadeIn 1s ease-in-out;
        }

        /* Header */
        h2 {
            color: #0080c0;
            font-size: 36px;
            margin-bottom: 30px;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.2);
        }

        /* Report info */
        .report {
            font-size: 24px;
            margin: 20px 0;
            color: #333;
            background: linear-gradient(135deg, #43cea2, #185a9d);
            color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.15);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .report:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.25);
        }

        /* Back link button */
        a {
            display: inline-block;
            margin-top: 30px;
            text-decoration: none;
            background: linear-gradient(135deg, #43cea2, #185a9d);
            color: #fff;
            padding: 12px 30px;
            border-radius: 8px;
            font-weight: bold;
            transition: all 0.3s ease;
        }

        a:hover {
            background: linear-gradient(135deg, #185a9d, #43cea2);
            transform: scale(1.05);
        }

        /* Fade-in animation */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Responsive */
        @media (max-width: 700px) {
            .container {
                width: 90%;
                padding: 30px;
            }

            h2 {
                font-size: 28px;
            }

            .report {
                font-size: 20px;
                padding: 15px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Reservation Report</h2>

        <%
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/oceanviewdb","root","");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT COUNT(*) FROM reservations");
            rs.next();
            int total = rs.getInt(1);
        %>

        <div class="report">
            Total Reservations : <b><%=total%></b>
        </div>

        <a href="staffDashboard.jsp">Back to Dashboard</a>
    </div>
</body>
</html>