<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Error - OceanView Resort</title>
    <style>
        /* Body styles */
        body {
            font-family: 'Arial', sans-serif;
            background: url('images/25.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Container for error message */
        .error-container {
            background: rgba(248, 215, 218, 0.9); /* semi-transparent red */
            padding: 40px 60px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
            text-align: center;
            animation: fadeIn 1s ease-in-out;
        }

        /* Heading */
        h2 {
            color: #721c24;
            font-size: 32px;
            margin-bottom: 20px;
        }

        /* Paragraph for message */
        p {
            color: #721c24;
            font-size: 18px;
            margin-bottom: 25px;
        }

        /* Back link */
        a {
            text-decoration: none;
            color: #ffffff;
            background: linear-gradient(135deg, #dc3545, #a71d2a); /* red gradient */
            padding: 12px 30px;
            border-radius: 8px;
            font-weight: bold;
            transition: all 0.3s ease;
        }

        a:hover {
            background: linear-gradient(135deg, #a71d2a, #dc3545);
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
    <div class="error-container">
        <h2>An Error Occurred!</h2>
        <% String msg = request.getParameter("msg"); 
           if(msg != null){ %>
            <p><%= msg %></p>
        <% } %>
        <a href="dashboard.jsp">Back to Dashboard</a>
    </div>
</body>
</html>