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
public class StudentList extends HttpServlet {

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
        out.println("<title>Servlet StudentList</title>");            
        out.println("</head>");
        out.println("<body>");
        HttpSession hs = request.getSession(false);
            int visit = (int) hs.getAttribute("visit");
                ++visit;
                out.println("<h3>");
                    out.println("Visit Number: "+ visit);
                out.println("</h3>");
                hs.setAttribute("visit", String.valueOf(visit));
   
        out.println("<h1>Student List</h1>");
        out.println("<table border='1'>");
        out.println("<tr><th>SAP ID</th><th>Name</th></tr>");
        out.println("<tr><td>101</td><td>John Doe</td></tr>");
        out.println("<tr><td>102</td><td>Jane Smith</td></tr>");
        out.println("<tr><td>103</td><td>Michael Johnson</td></tr>");
        out.println("<tr><td>104</td><td>Emily Davis</td></tr>");
        out.println("</table>");
        out.println("<div>");
            out.println("<a href = \"Home\">Home</a>");
            out.println("<a href = \"SubjectList\">SubjectList</a>");
            out.println("</div>");
            out.println("<div>");
            out.println("<a href = \"StudentList\">StudentList</a>");
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
