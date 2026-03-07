<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oceanview.model.Reservation, com.oceanview.service.ReservationService, com.oceanview.model.User" %>
<%@ page session="true" %>
<%
    // Check if user is logged in
    User user=(User)session.getAttribute("user");
    if(user==null){ response.sendRedirect("login.jsp"); return; }

    // Get reservation id from request
    int id=Integer.parseInt(request.getParameter("id"));

    // Fetch reservation data
    Reservation r=new ReservationService().getReservationById(id);
%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Reservation - Ocean View Resort</title>
    <style>
        body { font-family:Arial,sans-serif; margin:0; padding:0; background:#f0f2f5; }
        .container { width:500px; margin:50px auto; background:#fff; padding:30px; border-radius:10px; box-shadow:0 8px 20px rgba(0,0,0,0.2); }
        h2 { text-align:center; color:#0080c0; margin-bottom:20px; }
        input, select { width:100%; padding:12px; margin:10px 0; border-radius:8px; border:1px solid #ccc; font-size:14px; }
        input[type="submit"] { background:#0080c0; color:#fff; border:none; cursor:pointer; font-weight:bold; transition:0.3s; }
        input[type="submit"]:hover { background:#005a80; }
        .btn-back { display:block; text-align:center; margin-top:15px; color:#0080c0; text-decoration:none; font-weight:bold; }
        .btn-back:hover { text-decoration:underline; }
    </style>
</head>
<body>
    <div class="container"></div>
        <h2>Edit Reservation</h2>
        
        <form action="UpdateReservationServlet1" method="post">
    <input type="hidden" name="id" value="<%= reservation.getId() %>">
    <input type="text" name="guestName" value="<%= reservation.getGuestName() %>" required>
    <input type="text" name="email" value="<%= reservation.getEmail() %>">
    <input type="text" name="phone" value="<%= reservation.getPhone() %>">
    <select name="roomType">
        <option value="Standard" <%= "Standard".equals(reservation.getRoomType()) ? "selected" : "" %>>Standard</option>
        <option value="Deluxe" <%= "Deluxe".equals(reservation.getRoomType()) ? "selected" : "" %>>Deluxe</option>
        <option value="Suite" <%= "Suite".equals(reservation.getRoomType()) ? "selected" : "" %>>Suite</option>
    </select>
    <input type="date" name="checkIn" value="<%= reservation.getCheckIn() %>" required>
    <input type="date" name="checkOut" value="<%= reservation.getCheckOut() %>" required>
    <input type="submit" value="Update Reservation1">
</form>
        
     