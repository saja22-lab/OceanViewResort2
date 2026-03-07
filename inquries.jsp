<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.oceanview.model.Contact" %>
<%@ page import="com.oceanview.dao.ContactDAO" %>
<%
    // Fetch all contact inquiries
    ContactDAO contactDAO = new ContactDAO();
    List<Contact> contactList = contactDAO.getAllContacts();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Inquiries - Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
             background: url('images/36.jpg') no-repeat center center fixed;
            background-size: cover;
        }
        h2 {
            text-align: center;
            margin-top: 20px;
        }
        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #333;
            padding: 10px;
            text-align: left;
        }
        th {
            background: #0056b3;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .back-link {
    display: inline-block;       /* Make it behave like a button */
    padding: 10px 20px;          /* Space inside the button */
    background: #0056b3;   /* Green background */
    color: white;                /* White text */
    text-decoration: none;       /* Remove underline */
    border-radius: 5px;          /* Rounded corners */
    font-weight: bold;
    transition: background 0.3s; /* Smooth hover effect */
}

.back-link:hover {
    background-color: #45a049;   /* Darker green on hover */
}

/* Center the link */
.center {
    text-align: center;
    margin-top: 20px;            /* Optional spacing */
}
    </style>
</head>
<body>
    <h2>Guest Inquiries</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Message</th>
        </tr>
        <%
            if(contactList != null && !contactList.isEmpty()){
                for(Contact c : contactList){
        %>
        <tr>
            <td><%= c.getId() %></td>
            <td><%= c.getName() %></td>
            <td><%= c.getEmail() %></td>
            <td><%= c.getMessage() %></td>
        </tr>
        <% 
                }
            } else { 
        %>
        <tr>
            <td colspan="4" style="text-align:center;">No inquiries found.</td>
        </tr>
        <% } %>
    </table>
    <div class="center">
    <a href="dashboard.jsp" class="back-link">Back</a>
</div>


</body>
</html>