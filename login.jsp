<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login - Ocean View Resort</title>
    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background: url('images/home.jpg') no-repeat center center fixed;
            background-size: cover;
        }

        /* Center Container */
        .center-container{
            display:flex;
            justify-content:center;
            align-items:center;
            height:100vh;
        }

        /* Login Box */
        .login-box{
            background: rgba(255,255,255,0.95);
            padding: 30px;
            width: 400px;
            border-radius:10px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.3);
        }

        .login-box h2{
            text-align:center;
            color:#0080c0;
            margin-bottom:20px;
        }

        .login-box input[type="text"],
        .login-box input[type="password"],
        .login-box select{
            width:100%;
            padding:12px;
            margin-bottom:15px;
            border-radius:8px;
            border:1px solid #ccc;
        }

        .login-box input[type="submit"]{
            width:100%;
            padding:12px;
            background:#0080c0;
            color:#fff;
            border:none;
            border-radius:8px;
            font-weight:bold;
            cursor:pointer;
            transition:0.3s;
        }

        .login-box input[type="submit"]:hover{
            background:#005a80;
        }

        .error{
            color:red;
            text-align:center;
            margin-bottom:10px;
        }

        .register-link, .back-link{
            text-align:center;
            margin-top:15px;
        }

        .register-link a, .back-link a{
            color:#0080c0;
            text-decoration:none;
            font-weight:bold;
        }

        .register-link a:hover, .back-link a:hover{
            text-decoration:underline;
        }
    </style>
</head>
<body>

    <div class="center-container">
        <div class="login-box">
            <h2>Login</h2>
            <form action="LoginServlet" method="post">
                <input type="text" name="username" placeholder="Username" required/>
                <input type="password" name="password" placeholder="Password" required/>
                
                <!-- Role Selection -->
                <select name="role" required>
                    <option value="">Select Role</option>
                    <option value="user">User</option>
                    <option value="staff">Staff</option>
                    <option value="admin">Admin</option>
                </select>

                <input type="submit" value="Login"/>
            </form>

            <% if(request.getParameter("error") != null){ %>
                <p class="error"><%= request.getParameter("error") %></p>
            <% } %>

            <div class="register-link">
                New user? <a href="register.jsp">Register here</a>
            </div>

            <!-- Back Button -->
            <div class="back-link">
                <a href="first.jsp">Back to Home</a>
            </div>
        </div>
    </div>

</body>
</html>