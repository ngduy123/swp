/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin.mangageTicket;

import jakarta.servlet.ServletContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.queryEvent;
import model.queryUser;
import schema.Event;

/**
 *
 * @author LENOVO
 */
public class RenderListEvent extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        // check permission go here
        ServletContext context = getServletContext();
        List<String> permisson = (List<String>) context.getAttribute("permission");
        if (!permisson.contains("view_ticket")) {
            res.sendRedirect("http://localhost:8080/views/client/404Page/404Page.html");
            return;
        }
        //end

        // get all data from db ticket
        queryEvent qEvent = queryEvent.createInstance();
        ServletContext servletContext = getServletContext();
        String token = (String) servletContext.getAttribute("token");
        queryUser qUser = queryUser.createQueryUSer();
        List<Event> listEvent = qEvent.getEventByCreator(qUser.getIdByToken(token));
        req.setAttribute("event", listEvent);
        //end
//         / views / admin / pages / event / dashboard.js
        req.getRequestDispatcher("/views/admin/pages/event/dashboard.jsp").forward(req, res);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
