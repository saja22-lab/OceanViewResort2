package com.oceanview.controller;
import com.oceanview.service.ReservationService;
import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class DeleteServlet extends HttpServlet{
    protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        int id=Integer.parseInt(request.getParameter("id"));
        new ReservationService().deleteReservation(id);
        response.sendRedirect("viewReservation.jsp");
    }
}