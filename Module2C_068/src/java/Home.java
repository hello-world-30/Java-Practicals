/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class Home extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Home</title>");            
            out.println("</head>");
            out.println("<body>");
            HttpSession hs = request.getSession(true);
            
            if(hs.isNew())
            {
                String name = request.getParameter("name");
                out.println("<h1>");
                out.println("Welcome " + name + " First Time on Home Page");
                out.println("</h1>");
                hs.setAttribute("name", name);
                hs.setAttribute("visit", "1");
            }
            else
            {
                String name = hs.getAttribute("name").toString();
                int visit = (int) hs.getAttribute("visit");
                ++visit;
                out.println("<h1>");
                out.println("Welcome Again " + name);
                out.println("</h1>");
                out.println("<h3>");
                out.println("Visit Number: "+ visit);
                out.println("</h3>");
                
                hs.setAttribute("visit", String.valueOf(visit));
            }
            out.println("<h4>");
            out.println("Session ID: " + hs.getId());
            out.println("</h4>");
            out.println("<img src = \"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6c2DGsJKl5OTTlwCL8bglURGgoTFHHJ7gZg&s\"/>");
            out.println("<div>");
            out.println("<a href = \"StudentList\">StudentList</a>");
            out.println("<a href = \"SubjectList\">SubjectList</a>");
            out.println("</div>");
            out.println("<div>");
            out.println("<a href = \"Achievements\">Achievements</a>");
            out.println("<a href = \"Logout\">Logout</a>");
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
        }
    }

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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
