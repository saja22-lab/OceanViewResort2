<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register - Ocean View Resort</title>
    <style>
        body {
            margin:0; padding:0;
            font-family: Arial, sans-serif;
            background: url('images/home.jpg') no-repeat center center fixed;
            background-size: cover;
        }
        .register-container {
            width: 400px;
            margin: 100px auto;
            background: rgba(255,255,255,0.95);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.3);
        }
        h2 { text-align:center; color:#0080c0; margin-bottom:20px; }
        input, select { 
            width:100%; 
            padding:12px; 
            margin:10px 0; 
            border-radius:8px; 
            border:1px solid #ccc; 
        }
        input[type="submit"] { 
            background:#0080c0; 
            color:#fff; 
            border:none; 
            cursor:pointer; 
            font-weight:bold; 
        }
        input[type="submit"]:hover { background:#005a80; }
        .error { color:red; text-align:center; margin-bottom:10px; }
        .success { color:green; text-align:center; margin-bottom:10px; }
        .link { text-align:center; margin-top:15px; }
        .link a { color:#0080c0; text-decoration:none; font-weight:bold; }
    </style>
</head>
<body>
    <div class="register-container">
        <h2>Register</h2>

        <% if(request.getParameter("error") != null){ %>
            <p class="error"><%= request.getParameter("error") %></p>
        <% } %>

        <% if(request.getParameter("success") != null){ %>
            <p class="success"><%= request.getParameter("success") %></p>
        <% } %>

        <form action="RegisterServlet" method="post">
            <input type="text" name="username" placeholder="Username" required>
            <input type="email" name="email" placeholder="Email">
            <input type="password" name="password" placeholder="Password" required>
            <input type="password" name="confirmPassword" placeholder="Confirm Password" required>
            
            <!-- Role Selection -->
            <select name="role" required>
                <option value="">Select Role</option>
                <option value="user">User</option>
                <option value="staff">Staff</option>
                <option value="admin">Admin</option>
            </select>

            <input type="submit" value="Register">
        </form>

        <div class="link">
            Already registered? <a href="login.jsp">Login here</a>
        </div>
    </div>
</body>
</html>