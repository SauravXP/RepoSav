/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.mvc.bean.*;
/**
 *
 * @author saurav.paudel
 */
public class LogoutServlet extends HttpServlet {
 private static final long serialVersionUID = 1L;
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
            out.println("<title>Servlet LogoutServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LogoutServlet at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
      
      /*  try{
            LoginBean user=new LoginBean();
            //user.removeUserName();
            //user.removePassword();
            HttpSession session=request.getSession();
                if(session !=null ){
                    try{
                        session.invalidate();
                        response.setHeader("Cache-Control", "no-cache, no-store");
                        response.setHeader("Pragma", "no-cache");
                        response.setDateHeader ("Expires", 0); 
                        session.removeAttribute("currentSessionUser");
                        request.getSession(false).invalidate();
                        String pageToForward=request.getContextPath();
                        response.sendRedirect(pageToForward +"/Login.jsp");
                    }
                    catch(Exception sqle){
                        System.out.println("error UserValidateServlet message"+sqle.getMessage());
                        System.out.println("error UserValidateServlet exception"+sqle);
                    }
                }
                else
                 //   out.println("Session is already Expired");
           //session.invalidate();         
           //session.removeAttribute("currentSessionUser");
           System.out.println("Session is already Expired");     
                
            
            
            //user.removeUserName();
            //user.removePassword();
            response.sendRedirect("Login.jsp");
           super.doPost(request, response);
             return;
        }
        catch(Throwable theException){
            System.out.println(theException);
        } */
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
          
        
        request.getRequestDispatcher("Login.jsp").include(request, response);
        
        HttpSession session=request.getSession();
        session.invalidate();
        //System.out.println("Before"+ session.getAttribute("currentSessionUser"));
        session.removeAttribute("currentSessionUser");
        session=request.getSession(false);
        //System.out.println("After"+ session.getAttribute("currentSessionUser"));
         response.setHeader("Cache-Control", "no-cache, no-store");
         response.setHeader("Pragma", "no-cache");
         response.setDateHeader ("Expires", 0); 
         response.getWriter().println("session"+session);
         session.setAttribute("currentSessionUser",null);
        
        System.out.println("Hellow iam here2");
        out.print("You are Successfully logged out!");
        out.close();
                
       
        
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
        //processRequest(request, response);
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
