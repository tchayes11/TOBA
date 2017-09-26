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
public class NewCustomerServlet extends HttpServlet {

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
        
          
        
        
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String zipcode = request.getParameter("zipcode");
        String email = request.getParameter("email");
        
         //Store Data in User object
         User user = new User(firstName,lastName,phone,address,city,state,zipcode,email);
         //Validate the parameters
         if (UserDB.emailExists(user.getEmail())){
        String message = "This account already exists.<br>" +
                 "Please re-enter all fields.";
         String url ="/index.jsp";
                 }
    else{
            String message ="";
            String url = "/success.jsp";
            UserDB.insert(user);
            }
        
         
         
        
        String url = "/new_customer.jsp";
         
        
        String message;
        if(firstName.isEmpty() || lastName.isEmpty() || phone.isEmpty() || address.isEmpty()
                || city.isEmpty() || state.isEmpty() || zipcode.isEmpty() || email.isEmpty() )
                {
            message = "Please fill out all the form fields.";
           // url = "/new_customer.jsp"; 
            request.setAttribute("message", message);
            
            
        }
        
        else{ 
            
            String username = (lastName + zipcode);
            String password ="welcome1";
            
            HttpSession session = request.getSession();
            //User user = new User(firstName, lastName, phone, address, city, state, zipcode, email);
            session.setAttribute("user", user);
              url = "/success.jsp";
              
      
           // User user = (User)request.getAttribute("user");
        
       
                
                
                
                //HttpSession session = request.getSession();
               // User user = (User) session.getAttribute("user");
                //url = "/success.jsp";
                
            }

    
       
        
        
     getServletContext().getRequestDispatcher(url).forward(request, response);
    }
        //try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
       // }
       

    

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




