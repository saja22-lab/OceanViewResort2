<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Success - OceanView Resort</title>
    <style>
        /* Body styles */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #d4edda, #a8e6cf);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background: url('images/25.jpg') no-repeat center center fixed;
            background-size: cover;
        }

        /* Container for success message */
        .success-container {
            
            padding: 40px 60px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
            text-align: center;
            animation: fadeIn 1s ease-in-out;
        }

        /* Heading */
        h2 {
            color: #155724;
            font-size: 32px;
            margin-bottom: 20px;
        }

        /* Back link */
        a {
            text-decoration: none;
            color: #ffffff;
            background: linear-gradient(135deg, #43cea2, #185a9d);
            padding: 12px 30px;
            border-radius: 8px;
            font-weight: bold;
            transition: all 0.3s ease;
        }

        a:hover {
            background: linear-gradient(135deg, #218838, #1e7e34);
            transform: scale(1.05);
        }

        /* Fade-in animation */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <div class="success-container">
        <h2>Operation Successful!</h2>
        <a href="dashboard.jsp">Back to Dashboard</a>
    </div>
</body>
</html>