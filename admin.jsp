<!DOCTYPE html>
<html>
<head>
<title>Admin Dashboard</title>
<style>
body{font-family:Arial; background:#f0f4f7;}
.container{
    width:400px; margin:80px auto; background:white;
    padding:30px; border-radius:10px; text-align:center;
    box-shadow:0 4px 10px rgba(0,0,0,0.1);
}
h2{color:#0a6ebd; margin-bottom:20px;}
a{
    display:block; margin:10px 0; padding:10px;
    background:#0a6ebd; color:white;
    text-decoration:none; border-radius:5px;
    transition:0.3s;
}
a:hover{background:#084a8a;}
</style>
</head>
<body>
<div class="container">
<h2>Admin Menu</h2>
<a href="addReservation.jsp">Add Reservation</a>
<a href="viewReservation.jsp">View Reservation</a>
<a href="inquries.jsp">Inquires </a>
<a href="login.jsp">Logout</a>
</div>
</body>
</html>