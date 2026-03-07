package com.oceanview.controller;

import java.io.IOException;
import java.util.List;

import com.oceanview.dao.ContactDAO;
import com.oceanview.model.Contact;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/InquiriesServlet")
public class InquiriesServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            // create DAO object
            ContactDAO dao = new ContactDAO();

            // get all inquiries
            List<Contact> contactList = dao.getAllContacts();

            // send data to JSP
            request.setAttribute("contactList", contactList);

            // forward to JSP page
            request.getRequestDispatcher("inquries.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}