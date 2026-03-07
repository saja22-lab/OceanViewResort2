<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<title>Manage Users</title>

<style>
body{
font-family:Arial;
background:#f4f4f4;
}

.container{
width:900px;
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
color:red;
}

button{
padding:10px;
background:#0080c0;
color:white;
border:none;
}
</style>

</head>

<body>

<div class="container">

<h2>Manage Users</h2>

<a href="Dashboard.jsp">Back to Dashboard</a>

<br><br>

<table>

<tr>
<th>ID</th>
<th>Username</th>
<th>Email</th>
<th>Action</th>
</tr>

<%

Class.forName("com.mysql.cj.jdbc.Driver");

Connection con=DriverManager.getConnection(
"jdbc:mysql://localhost:3306/oceanview","root","");

Statement st=con.createStatement();

ResultSet rs=st.executeQuery("SELECT * FROM users");

while(rs.next()){
%>

<tr>

<td><%=rs.getInt("id")%></td>
<td><%=rs.getString("username")%></td>
<td><%=rs.getString("email")%></td>

<td>
<a href="DeleteUserServlet?id=<%=rs.getInt("id")%>">Delete</a>
</td>

</tr>

<% } %>

</table>

</div>

</body>
</html>