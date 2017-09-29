/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Toba_Bank;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import toba.data.UserDB;


/**
 *
 * @author TinaCH
 */
public class ResetPasswordServlet extends HttpServlet {

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
        User user = (User) session.getAttribute("user");
        String url = "/account_activity.jsp";

        String action = request.getParameter("action");
        if (action == null) {
            action = "reset";
        }
        
        if (action.equals("login")) {
        url = "/login.jsp";}
        
        else if(action.equals("reset")){
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String message;
            url = "/account_activity.jsp";
        
        
            if(user == null)
                url="/password_reset.jsp";
            
            user.setPassword(password);
            message = "";
            session.setAttribute("user", user);
            // UserDB.update(user);
            request.setAttribute("message", message);
            
        }

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    
        
        
    }
         /*  HttpSession session = request.getSession();
        
        String message = "";
        String url;
        
        
        //String username = (String)session.getAttribute("username");
        User user = (User)session.getAttribute("user"); 
        String newPassword = (String)request.getParameter("newPassword");
        
        
        if(newPassword == null || newPassword.isEmpty()){
            
            url="/password_reset.jsp";
            message ="Please fill in both boxes";
        }
        else{
         user.setPassword(newPassword);    
         session.setAttribute("user",user);
         
        
         
        url="/Account_activity.jsp";
        }
        
        
         
             
             
                     
      
        request.setAttribute("message",message);
        getServletContext().getRequestDispatcher(url)
                    .forward(request, response); 
    }*/

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
