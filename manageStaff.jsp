<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<title>Manage Staff</title>

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

input{
padding:8px;
margin:5px;
}

button{
padding:10px;
background:#0080c0;
color:white;
border:none;
}

a{
color:red;
text-decoration:none;
}

</style>

</head>

<body>

<div class="container">

<h2>Manage Staff</h2>

<a href="Dashboard.jsp">Back to Dashboard</a>

<h3>Add Staff</h3>

<form action="../AddStaffServlet" method="post">

<input type="text" name="username" placeholder="Staff Username" required>

<input type="password" name="password" placeholder="Password" required>

<button type="submit">Add Staff</button>

</form>

<br><br>

<h3>Staff List</h3>

<table>

<tr>
<th>ID</th>
<th>Username</th>
<th>Action</th>
</tr>

<%

Class.forName("com.mysql.cj.jdbc.Driver");

Connection con=DriverManager.getConnection(
"jdbc:mysql://localhost:3306/oceanview","root","");

Statement st=con.createStatement();

ResultSet rs=st.executeQuery("SELECT * FROM staff");

while(rs.next()){
%>

<tr>

<td><%=rs.getInt("id")%></td>

<td><%=rs.getString("username")%></td>

<td>
<a href="../DeleteStaffServlet?id=<%=rs.getInt("id")%>">Delete</a>
</td>

</tr>

<% } %>

</table>

</div>

</body>
</html>