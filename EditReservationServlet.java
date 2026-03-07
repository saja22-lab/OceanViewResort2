package com.oceanview.controller;

import com.oceanview.model.Reservation;
import com.oceanview.service.ReservationService;
import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class EditReservationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        try {
            // Create Reservation object from form data
            Reservation r = new Reservation();
            r.setId(Integer.parseInt(request.getParameter("id"))); // hidden field
            r.setGuestName(request.getParameter("guestName"));
            r.setEmail(request.getParameter("email"));
            r.setPhone(request.getParameter("phone"));
            r.setRoomType(request.getParameter("roomType"));
            r.setCheckIn(request.getParameter("checkIn"));
            r.setCheckOut(request.getParameter("checkOut"));

            // Call service to update in DB
            boolean updated = new ReservationService().updateReservation(r);

            if (updated) {
                // Success → redirect to reservations list
                response.sendRedirect("viewReservation.jsp");
            } else {
                // Failure → redirect to error page
                response.sendRedirect("error.jsp");
            }

        } catch(Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}

