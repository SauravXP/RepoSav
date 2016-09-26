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
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Locale;
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
        String act=request.getParameter("inst");
        System.out.println("ACTION KUN"+act);
        
        String p1=request.getParameter("spcode");
        System.out.println(p1);
        String p2=request.getParameter("cat");
        System.out.println("CATS"+p2);
        AgentSuperiorsB asb;
    asb = new AgentSuperiorsB();
        //asb.setCode(request.getParameter("spcode"));
        asb.setCategory(request.getParameter("cat"));
                asb.setBranch(request.getParameter("brn"));
                asb.setName(request.getParameter("sname"));
                asb.setAddress(request.getParameter("addres"));
                asb.setAgentCode(request.getParameter("pagtcode"));
               asb.setPhone(request.getParameter("phno"));
        asb.setMobile(request.getParameter("mobil"));
                asb.setNepName(request.getParameter("agnamen"));
                //Date qlfy;
               // qlfy = new Date(request.getParameter("sqfdt"));
               // Date ren;
                //ren = new Date(request.getParameter("srnldt"));                
                
             // asb.setQualifiyDate(request.getParameter("sqfdt"));
            // System.out.println("QualifyDate"+qlfy);
             //System.out.println("RenewalDate"+ren);
             //String q=request.getParameter("sqfdt");
             //System.out.println("QualifyDate"+q);
             
            // String R=request.getParameter("srnldt");
            // System.out.println("RenewalDate"+R);
            // SimpleDateFormat  df=new SimpleDateFormat("DD/MM/YYYY");
         //    String qd=df.format(request.getParameter("sqfdt"));
      try {
        //DateTimeFormatter
       // rn =new SimpleDateFormat("MM/DD/YYYY HH:MM:SS",Locale.ENGLISH).parse(rd);
       //asb.setQualifiyDate(new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").parse(request.getParameter("sqfdt")));
       Date qlfy=new SimpleDateFormat("MM/dd/YYYY").parse(request.getParameter("sqfdt"));
       System.out.println("QLFYDAATE:-"+qlfy);
       asb.setQualifiyDate(qlfy);
      } catch (ParseException ex) {
        Logger.getLogger(AgtSuperCont.class.getName()).log(Level.SEVERE, null, ex);
        ex.printStackTrace();
    }
        //  Date QLFY;
       // QLFY = new Date(request.getParameter("sqfdt"));
       // asb.setRenewalDate(QLFY);
        
        //String prmstr=request.getParameter("qlfy");
        //Date Qlfy1=null;
    //try {
     //   Qlfy1=txtFrm.parse(prmstr);
      //  asb.setQualifiyDate(Qlfy1);
   // } catch (ParseException ex) {
    //    Logger.getLogger(AgtSuperCont.class.getName()).log(Level.SEVERE, null, ex);
   // }
         //Date Qlfy;
       // Qlfy = new Date(request.getParameter("qlfy"));
       // asb.setQualifiyDate(Qlfy);
        
       
         asb.setStatus(request.getParameter("crrsts"));
         //String rd=request.getParameter("srnldt");
       //  Date RNLY;
       // RNLY = new Date(request.getParameter("srnldt"));
       // asb.setRenewalDate(RNLY);
         Date rn=new Date();
    try {
        //DateTimeFormatter
       // rn =new SimpleDateFormat("MM/DD/YYYY HH:MM:SS",Locale.ENGLISH).parse(rd);
       //asb.setRenewalDate(new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").parse(request.getParameter("srnldt")));
     Date rens=new SimpleDateFormat("MM/dd/YYYY").parse(request.getParameter("srnldt"));
       System.out.println("RENEWQAL:-"+rens);
       asb.setRenewalDate(rens);  
    } catch (ParseException ex) {
        Logger.getLogger(AgtSuperCont.class.getName()).log(Level.SEVERE, null, ex);
        ex.printStackTrace();
    } 
                System.out.println("RENEWALDATE:-"+request.getParameter("sqfdt"));
        // asb.setRenewalDate(rn);       
         
         
       // Date RenlD;
      //  RenlD = new Date(request.getParameter("sqfdt"));
        //     asb.setRenewalDate(RenlD);
             
                //asb.setQualifiyDate(qlfy);
       //asb.setRenewalDate((ren));
      
      asb.setSuperiorManagerCode(request.getParameter("mgrcod"));   
        asb.setCommPayType(request.getParameter("comty"));
        asb.setSeniorManagerCode(request.getParameter("smgrcode"));   
        
        String action=request.getParameter("action");
        //System.out.println("HERE"+action);
        
        String Code=request.getParameter("spcode");
        if(Code==null || Code.isEmpty()){
            System.out.println("CODE is "+Code);
            
            asdi.addSuperiors(asb);
           
           
        }
        else{
            
            asb.setCode(Integer.parseInt(Code));
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
