/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAL.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.account;
import utils.NumberToEnum.UserRole;

/**
 *
 * @author Admin
 */
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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("login.jsp").forward(request, response);
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
        String mail = request.getParameter("email");
        String pass = request.getParameter("password");
        String check = request.getParameter("check");

        HttpSession session = request.getSession();

        // set cookie for email and password
        Cookie cookie1 = new Cookie("email", mail);
        cookie1.setMaxAge(60 * 60 * 24);
        Cookie cookie2 = new Cookie("password", pass);
        if (check != null) {
            cookie2.setMaxAge(60 * 60 * 24);
        } else {
            cookie2.setMaxAge(0);
        }
        response.addCookie(cookie1);
        response.addCookie(cookie2);

        // check account
        AccountDAO accountDAO = new AccountDAO();
        account account = accountDAO.checkAccount(mail, pass);
        // set session
        if (account != null) {
            if (account.getRole() == UserRole.ADMIN.getValue()) {
                session.setAttribute("role", "admin");
                session.setAttribute("acc", account);
                session.setAttribute("name", account.getName());
                response.sendRedirect("manage?id=0");
            }
            if (account.getRole() == UserRole.USER.getValue()) {
                session.setAttribute("role", "user");
                session.setAttribute("acc", account);
                session.setAttribute("name", account.getName());
                response.sendRedirect("home");
            }

        } else {

//            session.setAttribute("loginmessage", "Login failed");
            request.setAttribute("error", "Email or password is incorrect");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

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
