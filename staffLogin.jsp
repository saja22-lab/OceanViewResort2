<!DOCTYPE html>
<html>
<head>
<title>Staff Login - Ocean View Resort</title>

<style>
body{
font-family:Arial;
background:url('../images/home.jpg') no-repeat center center fixed;
background-size:cover;
}

.container{
width:350px;
margin:120px auto;
background:rgba(255,255,255,0.95);
padding:30px;
border-radius:10px;
box-shadow:0 8px 20px rgba(0,0,0,0.3);
}

h2{
text-align:center;
color:#0080c0;
}

input{
width:100%;
padding:12px;
margin:10px 0;
border-radius:8px;
border:1px solid #ccc;
}

input[type=submit]{
background:#0080c0;
color:white;
border:none;
cursor:pointer;
}

input[type=submit]:hover{
background:#005a80;
}

.back{
text-align:center;
margin-top:10px;
}

.back a{
color:#0080c0;
text-decoration:none;
}
</style>

</head>

<body>

<div class="container">

<h2>Staff Login</h2>

<form action="../StaffLoginServlet" method="post">

<input type="text" name="username" placeholder="Staff Username" required>

<input type="password" name="password" placeholder="Password" required>

<input type="submit" value="Login">

</form>

<div class="back">
<a href="../login.jsp">Back to Main Login</a>
</div>

</div>

</body>
</html>