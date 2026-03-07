<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<title>Staff View Reservations</title>

<style>
body{
font-family:Arial;
background:#f4f4f4;
}

.container{
width:1000px;
margin:auto;
margin-top:50px;
background:white;
padding:20px;
border-radius:8px;
}

table{
width:100%;
border-collapse:collapse;
}

th,td{
padding:10px;
border:1px solid #ccc;
text-align:center;
}

th{
background:#0080c0;
color:white;
}

a{
text-decoration:none;
color:#0080c0;
}
</style>

</head>

<body>

<div class="container">

<h2>All Reservations</h2>

<a href="staffDashboard.jsp">Back to Dashboard</a>

<table>

<tr>
<th>ID</th>
<th>Guest Name</th>
<th>Email</th>
<th>Phone</th>
<th>Room Type</th>
<th>Check In</th>
<th>Check Out</th>
</tr>

<%

Class.forName("com.mysql.cj.jdbc.Driver");

Connection con=DriverManager.getConnection(
"jdbc:mysql://localhost:3306/oceanview","root","");

Statement st=con.createStatement();

ResultSet rs=st.executeQuery("SELECT * FROM reservations");

while(rs.next()){
%>

<tr>

<td><%=rs.getInt("id")%></td>
<td><%=rs.getString("guestName")%></td>
<td><%=rs.getString("email")%></td>
<td><%=rs.getString("phone")%></td>
<td><%=rs.getString("roomType")%></td>
<td><%=rs.getString("checkIn")%></td>
<td><%=rs.getString("checkOut")%></td>

</tr>

<% } %>

</table>

</div>

</body>
</html>