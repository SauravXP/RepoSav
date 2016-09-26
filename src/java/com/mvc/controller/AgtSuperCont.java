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

import com.mvc.bean.AgentSuperiorsB;
import com.mvc.doa.AgentSuperiorsDaoImplement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
/**
 *
 * @author alpha
 */
public class AgtSuperCont extends HttpServlet {

private static final long serialVersionUID = 1L;
private static final String INSERT_OR_EDIT = "/actkar/updateSuperior.jsp";
private static final String LIST_SUPER = "/listSuperior.jsp";
private static final String ADD_SUPER = "/agtSuperiorsDetails.jsp";
private final AgentSuperiorsDaoImplement asdi;

    public AgtSuperCont() {
       // this.asdi = asdi;
        asdi=new AgentSuperiorsDaoImplement();
    }
    


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AgtSuperCont</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AgtSuperCont at " + request.getContextPath() + "</h1>");
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
        String forward="";
        if(request.getParameter("action")!=null){
            String action=request.getParameter("action");
            
            if(action.equalsIgnoreCase("delete")){
                String Code=request.getParameter("Code");
                asdi.deleteSuperiors(Code);
                forward=LIST_SUPER;
                request.setAttribute("supers", asdi.getallSuperiors());
            }else if(action.equalsIgnoreCase("edit")){
                forward=INSERT_OR_EDIT;
                String Code=request.getParameter("Code");
                AgentSuperiorsB asb=asdi.getSuperiorsByID(Code);
                request.setAttribute("super", asb);
            }else if (action.equalsIgnoreCase("listSuperior")){
                forward=LIST_SUPER;
                request.setAttribute("supers", asdi.getallSuperiors());
            }
            else {
                forward=ADD_SUPER;
                
            }
            
        }else{
            forward=LIST_SUPER;
            request.setAttribute("supers",asdi.getallSuperiors());
        }
        RequestDispatcher view=request.getRequestDispatcher(forward);
        view.forward(request, response);
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
        String cd=request.getParameter("spcode");
        System.out.println("CODE"+cd);
        String cats=request.getParameter("cat");
        System.out.println("CAT"+cats);
       // if(cats.equals("OF")){
        //    System.out.println("CAT"+cats);
       // }
        System.out.println("CATEGORY:-"+ cats);
        String brn=request.getParameter("brn");
        System.out.println("Branch"+brn);
        //
        String phone=request.getParameter("phno");
        System.out.println("CAT"+phone);
        
//        SimpleDateFormat qlfy=new SimpleDateFormat( "yyyy-MM-dd");
//SimpleDateFormat qlfy=new SimpleDateFormat( "DD/MM/YYYY HH:MM:SS");
SimpleDateFormat qlfy=new SimpleDateFormat( "YYYY-MM-DD HH:MM:SS");

        String sqfdt=request.getParameter("sqfdt");
    //try {
     //   Date d1=qlfy.parse(sqfdt);
      //  System.out.println("QUALIFIYDATED1"+d1);
   // }/ catch (ParseException ex) {
     //   Logger.getLogger(AgtSuperCont.class.getName()).log(Level.SEVERE, null, ex);
   // }
    SimpleDateFormat fmt=new SimpleDateFormat("yyyy-MM-dd HH:MM:SS");
    //System.out.println("QUALIFIYDATEE"+fmt);
    System.out.println("QUALIFIYDATEM-"+sqfdt);
   // System.out.println("QUALIFIYDATES"+qlfy);    
       
        AgentSuperiorsB asb=new AgentSuperiorsB();
        System.out.println("HERE I AM");
        asb.setCode(request.getParameter("spcode"));
        asb.setCategory(request.getParameter("cat"));
                asb.setBranch(request.getParameter("brn"));
                asb.setName(request.getParameter("sname"));
                asb.setAddress(request.getParameter("address"));
                asb.setAgentCode(request.getParameter("pagtcode"));
               asb.setPhone(request.getParameter("phno"));
        asb.setMobile(request.getParameter("mobil"));
                asb.setNepName(request.getParameter("agnamnp"));
         // asb.setQualifiyDate(new java.util.Date(request.getParameter("sqfdt")));
           
       asb.setQualifiyDate(qlfy);
       asb.setRenewalDate(new java.util.Date(request.getParameter("srnldt")));
        asb.setStatus(request.getParameter("crrsts"));
        asb.setCommPayType(request.getParameter("compty"));
        asb.setSuperiorManagerCode(request.getParameter("mgrcod"));
        asb.setSeniorManagerCode(request.getParameter("smgrcode"));   
        
        String Code=request.getParameter("Code");
        if(Code==null || Code.isEmpty()){
            asdi.addSuperiors(asb);
        }
        else{
            asb.setCode(Code);
            asdi.updateSuperiors(asb);
        }
        RequestDispatcher view=request.getRequestDispatcher(LIST_SUPER);
        request.setAttribute("supers", asdi.getallSuperiors());
        view.forward(request, response);
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
