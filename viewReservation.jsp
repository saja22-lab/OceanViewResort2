<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.oceanview.model.Reservation, com.oceanview.service.ReservationService, com.oceanview.model.User"%>
<%@ page session="true" %>
<%
    User user=(User)session.getAttribute("user");
    if(user==null){ response.sendRedirect("login.jsp"); return; }
    List<Reservation> list=new ReservationService().getAllReservations();
%>
<!DOCTYPE html>
<html>
<head>
    <title>View Reservations</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            min-height: 100vh;
            background: url('images/25.jpg') no-repeat center center fixed;
            background-size: cover;
        }

        /* Dark overlay */
        body::before {
            content: "";
            position: fixed;
            inset: 0;
            background: rgba(0, 0, 0, 0.6);
            z-index: -1;
        }

        .container {
            width: 95%;
            margin: 40px auto;
            background: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 15px 40px rgba(0,0,0,0.4);
        }

        h2 {
            color: #0080c0;
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ccc;
        }

        th, td {
            padding: 10px;
            text-align: center;
        }

        th {
            background: #0080c0;
            color: #fff;
        }

        a.btn {
            padding: 6px 12px;
            border-radius: 6px;
            color: #fff;
            text-decoration: none;
            font-size: 14px;
        }

        .edit {
            background: #28a745;
        }

        .edit:hover {
            background: #218838;
        }

        .delete {
            background: #dc3545;
        }

        .delete:hover {
            background: #c82333;
        }

        .btn-back {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #0080c0;
            font-weight: bold;
            text-decoration: none;
        }

        .btn-back:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>All Reservations</h2>

        <table>
            <tr>
                <th>ID</th>
                <th>Guest Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Room Type</th>
                <th>Check In</th>
                <th>Check Out</th>
                <th>Actions</th>
            </tr>

            <% for(Reservation r:list){ %>
                <tr>
                    <td><%= r.getId() %></td>
                    <td><%= r.getGuestName() %></td>
                    <td><%= r.getEmail() %></td>
                    <td><%= r.getPhone() %></td>
                    <td><%= r.getRoomType() %></td>
                    <td><%= r.getCheckIn() %></td>
                    <td><%= r.getCheckOut() %></td>
                    <td>
                        <a class="btn edit" href="updateReservation.jsp?id=<%=r.getId()%>">Edit</a>
                        <a class="btn delete" href="DeleteServlet?id=<%=r.getId()%>">Delete</a>
                    </td>
                </tr>
            <% } %>
        </table>

        <a class="btn-back" href="dashboard.jsp">Back to Dashboard</a>
    </div>

</body>
</html>