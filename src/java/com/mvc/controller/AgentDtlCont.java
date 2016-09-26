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

<<<<<<< HEAD
import com.mvc.bean.AgentDetailsB;
import com.mvc.doa.AgentDetailsDAOimple;
import com.mvc.doa.AgtDetailsDAO;
=======
>>>>>>> c28deca749f98439e3f41c54385b41d3208c19e0
/**
 *
 * @author saurav.paudel
 */
public class AgentDtlCont extends HttpServlet {
<<<<<<< HEAD
    private AgtDetailsDAO tado;
    
    
    
    
    public AgentDtlCont(){
        tado=new AgentDetailsDAOimple();
    }
    
    
    
    
=======

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
>>>>>>> c28deca749f98439e3f41c54385b41d3208c19e0
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AgentDtlCont</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AgentDtlCont at " + request.getContextPath() + "</h1>");
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
<<<<<<< HEAD
       // processRequest(request, response);
       AgentDetailsB adb=new AgentDetailsB();
       String brn=request.getParameter("branch");
       String dbo=request.getParameter("dob");
       String AgCode=request.getParameter("agcode");
       String Name=request.getParameter("name");
       String nepName=request.getParameter("nepname");
       String gender=request.getParameter("gender");
       String address=request.getParameter("addres");
       String Anchal=request.getParameter("anchal");
       String District=request.getParameter("district");
       String Location=request.getParameter("location");
       String quli=request.getParameter("quali");
       String occ=request.getParameter("occ");
       String ds=request.getParameter("docu");
       String ph=request.getParameter("phone");
       String mob=request.getParameter("mobile");
       String fax=request.getParameter("fax");
       
////////////////////////////////////////////////////////////////       
       adb.setBranch(request.getParameter("branch"));
       adb.setName(request.getParameter("name"));
       adb.setNepName(request.getParameter("nepname"));
       
       adb.setDateOfBirth(request.getParameter("dob"));
       adb.setGender(request.getParameter("gender"));
       adb.setAddress(request.getParameter("addres"));
       adb.setAnchal(request.getParameter("anchal"));
       adb.setDistrict(request.getParameter("district"));
       adb.setLocation(request.getParameter("location"));
       adb.setQualification(request.getParameter("quali"));
       adb.setOccupation(request.getParameter("occ"));
       adb.setDocumentSubmitted(request.getParameter("docu"));
       adb.setPhone(request.getParameter("phone"));
       adb.setMobile(request.getParameter("mobile"));
       
       adb.setFax(request.getParameter("fax"));
       adb.setEmail(request.getParameter("email"));
       adb.setMunicipalityName(request.getParameter("muni"));
       adb.setRegisterDate(request.getParameter("regdate"));
       adb.setLicenseNo(request.getParameter("licno"));
       adb.setLicenseExpDate(request.getParameter("licex"));
       adb.setRenewalDate(request.getParameter("renewD"));
       adb.setStatus(request.getParameter("sts"));
       adb.setAcNumber(request.getParameter("acno"));
       adb.setLicenseIssuedFrom(request.getParameter("licfrom"));
       adb.setCommPayMode(request.getParameter("copym"));
       adb.setCommPayType(request.getParameter("compty"));
       
       adb.setRemarks(request.getParameter("comrem"));
       adb.setNomineeName(request.getParameter("nom"));
       adb.setNomineeRelation(request.getParameter("rel"));
       adb.setNomineeAdd(request.getParameter("nadd"));
       adb.setDateOfDeath(request.getParameter("ddate"));
       adb.setBOCode(request.getParameter("bdcode"));
       adb.setBMCode(request.getParameter("bmcode"));
       adb.setIsSupervisor(request.getParameter("issoff"));
       adb.setIsManager(request.getParameter("isMang"));
       adb.setSupervisorQualifyDate(request.getParameter("issoffQ"));
       adb.setManagerQualifyDate(request.getParameter("isMangQ"));
       adb.setSalesCenter(request.getParameter("subr"));
       System.out.println("DATATS"+brn +"-" +dbo +" " );
       
       tado.addAgentDetails(adb);
=======
        processRequest(request, response);
>>>>>>> c28deca749f98439e3f41c54385b41d3208c19e0
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
