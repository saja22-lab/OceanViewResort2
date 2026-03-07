<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oceanview.model.Reservation, com.oceanview.service.ReservationService, com.oceanview.model.User" %>
<%@ page session="true" %>
<%
    User user=(User)session.getAttribute("user");
    if(user==null){ response.sendRedirect("login.jsp"); return; }

    int id=Integer.parseInt(request.getParameter("id"));
    Reservation r=new ReservationService().getReservationById(id);
%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Reservation - Ocean View Resort</title>
    <style>
        body { font-family:Arial,sans-serif; margin:0; background:#f0f2f5; }
        .container { width:500px; margin:50px auto; background:#fff; padding:30px; border-radius:10px; box-shadow:0 8px 20px rgba(0,0,0,0.2); }
        h2 { text-align:center; color:#0080c0; }
        input, select { width:100%; padding:12px; margin:10px 0; border-radius:8px; border:1px solid #ccc; }
        input[type="submit"] { background:#0080c0; color:#fff; border:none; cursor:pointer; }
        input[type="submit"]:hover { background:#005a80; }
        .btn-back { display:block; text-align:center; margin-top:10px; color:#0080c0; text-decoration:none; }
    </style>
</head>
<body>
    <div class="container">
        <h2>Edit Reservation</h2>
        <form action="UpdateReservationServlet" method="post">
            <input type="hidden" name="id" value="<%= r.getId() %>">
            <input type="text" name="guestName" placeholder="Guest Name" value="<%= r.getGuestName() %>" required>
            <input type="email" name="email" placeholder="Email" value="<%= r.getEmail() %>">
            <input type="text" name="phone" placeholder="Phone" value="<%= r.getPhone() %>">
            <select name="roomType" required>
                <option value="Standard" <%= r.getRoomType().equals("Standard")?"selected":"" %>>Standard</option>
                <option value="Deluxe" <%= r.getRoomType().equals("Deluxe")?"selected":"" %>>Deluxe</option>
                <option value="Suite" <%= r.getRoomType().equals("Suite")?"selected":"" %>>Suite</option>
            </select>
            <input type="date" name="checkIn" value="<%= r.getCheckIn() %>" required>
            <input type="date" name="checkOut" value="<%= r.getCheckOut() %>" required>
            <input type="submit" value="Update Reservation">
        </form>
        <a class="btn-back" href="viewReservation.jsp">Back to Reservations</a>
    </div>
</body>
</html>