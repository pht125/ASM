/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAL.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import static java.util.Collections.list;
import java.util.List;
import model.cart;
import model.item;
import model.product;

/**
 *
 * @author Admin
 */
public class AddCartServlet extends HttpServlet {

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
        HttpSession session = request.getSession();
        ProductDAO pdao = new ProductDAO();
        List<product> list = pdao.getAllProduct();
        Cookie[] arr = request.getCookies();
        String txt = "";
        if (arr != null) {
            for (Cookie o : arr) {
                if (o.getName().equals("cart")) {
                    txt = txt+ o.getValue();
                }
            }
        }
        cart cart = new cart(txt, list);
        List<item> listItem = cart.getItems();
        product p = new product();
        if(session.getAttribute("currentid")==null){
            response.sendRedirect("index.html");
        }else{
            p = (product) session.getAttribute("currentid");
        }
        
        request.setAttribute("detail", p);
        request.getRequestDispatcher("detail.jsp").forward(request, response);
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
        
//        if (request.getParameter("id") == null) {
//            response.sendRedirect("cart.jsp");
//        }else{
//            String id = request.getParameter("id");
//            product p = pdao.getDetailById(id);
//            Cookie[] cookies = request.getCookies();
//            String list = null;
//            String listnumb = null;
//            int flag = 0;
//            for (Cookie cookie : cookies) {
//                if(cookie.getName().equals("cart")){
//                    list = cookie.getValue();
//                    list = list + id + "|";
//                    cookie.setValue(list);
//                    response.addCookie(cookie);
//                    flag = 1;
//                }
//                if(cookie.getName().equals("cartnumb")){
//                    listnumb = cookie.getValue();
//                    listnumb = listnumb + "1" + "|";
//                    cookie.setValue(listnumb);
//                    response.addCookie(cookie);
//                    flag = 1;
//                }
//            }
//            if(flag != 1){
//                String val = id + "|";
//                String valnumb = "1|";
//                Cookie cart = new Cookie("cart", val);
//                Cookie cartnumb = new Cookie("cartnumb", valnumb);
//                cart.setMaxAge(60*60*24*7);
//                cartnumb.setMaxAge(60*60*24*7);
//                response.addCookie(cart);
//                response.addCookie(cartnumb);
//            }
//            response.sendRedirect("detail?id="+id);
//        String id = request.getParameter("id");
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
