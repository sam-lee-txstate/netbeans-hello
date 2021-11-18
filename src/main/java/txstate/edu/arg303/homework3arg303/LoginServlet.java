/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package txstate.edu.arg303.homework3arg303;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Austin's NetBeans
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

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
            throws ServletException, IOException 
    {
        String userName = request.getParameter("uname");
        String emailAddress = request.getParameter("email");
        
        Student student = new Student();
        student.setUserName(userName);
        student.setEmail(emailAddress);
        
        //Save the user data in the session
        HttpSession session = request.getSession();
        session.setAttribute("Member", student);
        
        ArrayList<Course> catalog = new ArrayList<Course>();
        catalog.add(new Course("01977", "Basic Lightstaber Training", 50.00));
        catalog.add(new Course("01980", "Basic Force Training", 55.00));
        catalog.add(new Course("01983", "Advanced Force Training", 70.00));
        catalog.add(new Course("01999", "Advanced Dual Lightsaber Training", 80.00));
        catalog.add(new Course("02005", "Resisting The Darkside 101", 60.00));
        
        session.setAttribute("Catalog", catalog);
        
        
        request.getRequestDispatcher("CourseCatalog.jsp").forward(request, response); 

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
