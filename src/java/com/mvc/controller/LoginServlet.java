/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.controller;

import com.mvc.bean.LoginBean;
import com.mvc.doa.LoginDoa;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author saurav.paudel
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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
        RequestDispatcher requestDispatcher; 
requestDispatcher = request.getRequestDispatcher("Login.jsp"); 
requestDispatcher.forward(request, response);
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
     /*     String userName=request.getParameter("username");
        String password=request.getParameter("password");
       LoginBean lgbean=new LoginBean();
       lgbean.setUserName(userName);
       lgbean.setPassword(password);
       LoginDoa lda=new LoginDoa();
       String userValidate=lda.authenticateUser(lgbean);
       */
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
           String userName=request.getParameter("username");
        String password=request.getParameter("password");
       
        LoginBean loginBean= new LoginBean();
        loginBean.setUserName(userName);
        loginBean.setPassword(password);
        
       LoginDoa logDoa=new LoginDoa();
       String userValidate=logDoa.authenticateUser(loginBean);
      //PrintWriter out = response.getWriter();
       
       if(userValidate.equals("SUCCESS")){
           request.setAttribute("userName", userName);
       HttpSession htpssion=request.getSession(true);
       htpssion.setAttribute("currentSessionUser", userName); //setting the Session Attribute
     
       //out.println("<html>");
      //out.println("<link href=css/bootstrap.min.css rel=stylesheet>");
       //out.println("<link href=css/font-awesome.min.css rel=stylesheet>");
      // out.println("<link href=css/main.css rel=stylesheet>");
      // out.println("<link href=css/stylemrqu.css rel=stylesheet>");
      // out.println("<link href=css/thememrqu.css rel=stylesheet>");
      // out.println("<%@page include=/templates/header.jsp %> ");
         
       request.getRequestDispatcher("/Home.jsp").forward(request, response);
       
       }
       else{
           request.setAttribute("errMessage",userValidate);
           //request.getRequestDispatcher("/Login.jsp").forward(request, response);
           RequestDispatcher rd=getServletContext().getRequestDispatcher("/Login.jsp");
           PrintWriter out=response.getWriter();
           out.println("<font color=red>Either user name or password is wrong.</font>");
           rd.include(request, response);
           
       }
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
