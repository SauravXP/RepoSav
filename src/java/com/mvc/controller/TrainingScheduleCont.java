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

import com.mvc.bean.AgentTrainingSchedule;
import com.mvc.doa.TrainingDAO;
import com.mvc.doa.TraingDaoImplement;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;


/**
 *
 * @author saurav.paudel
 */
@WebServlet("/trainingScheduleCont.gar")
//@WebServlet("/actkar/TrainingDetails.gar")
public class TrainingScheduleCont extends HttpServlet {

        private TrainingDAO tdao;
        private static final long serialVersionUID = 1L;
    public static final String lIST_Training = "/actkar/listTraining.jsp";
    public static final String INSERT_OR_EDIT = "/actkar/trainingDetails.jsp";
    
    public TrainingScheduleCont(){
        tdao=new TraingDaoImplement();
    }
    
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
            out.println("<title>Servlet trainingScheduleCont</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet trainingScheduleCont at " + request.getContextPath() + "</h1>");
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

         String forword="";
        String action=request.getParameter("action");
        if(action.equalsIgnoreCase("delete")){
            forword=lIST_Training;
            //int tid=Integer.parseInt(request.getParameter("tid"));
            String tid=request.getParameter("tid");
            tdao.deleteTraining(tid);
            request.setAttribute("Trainings", tdao.getallTrainings());
        }
        if(action.equalsIgnoreCase("edit")){
            forword=INSERT_OR_EDIT;
            //int tid=Integer.parseInt(request.getParameter("tid"));
            String tid=null;
            tid=request.getParameter("tid");
            //TrainingDAO
           AgentTrainingSchedule ats=tdao.getTrainingById(tid);
           request.setAttribute("Training", ats);
        }
        else if(action.equalsIgnoreCase("insert")){
           // System.out.println("TESTS");
            forword=INSERT_OR_EDIT;
            
        }
        else{
            forword=lIST_Training;
            request.setAttribute("Trainings", tdao.getallTrainings());
        }
        RequestDispatcher view=request.getRequestDispatcher(forword);
        view.forward(request, response);
        
        
        
    }
    


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
String tid1=request.getParameter("tid");
                String brn1=request.getParameter("brn");
                String ven1=request.getParameter("venu");
                int t1=Integer.parseInt(tid1);
                System.out.println("Data From Form are:"+tid1+brn1+ven1+tid1);
                
       /*     response.setContentType("text/html:charset=UTF-8");
            try{
                PrintWriter pou=response.getWriter();
                String tid=request.getParameter("tid");
                String brn=request.getParameter("brn");
                String ven=request.getParameter("venu");
                String stdate=request.getParameter("stdate");
                String eddate=request.getParameter("eddate");
                String remar=request.getParameter("remark");
                
                List errorList=new LinkedList();
                
                if(tid.length()==0){
                    
                    errorList.add("Enter TrainningID");
                }
                
                if(!errorList.isEmpty()){
                    RequestDispatcher dis=request.getRequestDispatcher("/Error.view");
                    dis.forward(request,response);
                    return ;
                }
                AgentTrainingSchedule ats=new AgentTrainingSchedule(tid, brn, ven, stdate, eddate, remar);
                ats.setTrainingID(tid);
                ats.setBranch(brn);
                ats.setVenue(ven);
                ats.setStdate(stdate);
                ats.setEddate(eddate);
                ats.setRemarks(remar);
                
                trainingSchedule trsch;
                trsch = new trainingSchedule();
                    String datainst=trsch.addtraingSche(ats);
                //calling the constructor
                //AgentTrainingSchedule tsch=new AgentTrainingSchedule(tid,brn, ven,stdate,eddate,remar);
                //AgentTrainingSchedule tsch=new AgentTrainingSchedule(tid,brn, ven,stdate,eddate,remar);
                //trainingSchedule ts=new trainingSchedule(tid, brn, ven, stdate, eddate, remar);
                //ts.addtraingSche(tid, brn, ven, stdate, eddate, remar);
               // AgentTrainingSchedule tsch=new AgentTrainingSchedule();
                System.out.println("Data inserted");
            }
            catch(IOException | ServletException ex){
                System.out.println("EXCEPTION:-"+ex);
            }
               */
        AgentTrainingSchedule ats=new AgentTrainingSchedule();
        //ats.setTrainingID( Integer.parseInt(request.getParameter("tid")));
        ats.setTrainingID(request.getParameter("tid"));
        ats.setBranch(request.getParameter("bra"));
        ats.setVenue(request.getParameter("venu"));
        ats.setStdate(request.getParameter("stdate"));
        ats.setEddate((request.getParameter("endate")));
        ats.setRemarks(request.getParameter("remark"));
        String tid = null;
            tid = request.getParameter(tid);
            //String tid=(request.getParameter(Integer.toString("tid")));
        if( tid == null || tid.isEmpty() )
        { System.out.println("test on up");
            tdao.addTraining(ats);
                    System.out.println("test on downt");
        }
        else {
           // ats.setTrainingID(Integer.parseInt(tid));
             ats.setTrainingID(tid);
            tdao.updateTraining(ats);
        }
        RequestDispatcher view = request.getRequestDispatcher( lIST_Training );
        request.setAttribute("Trainings", tdao.getallTrainings());
        view.forward(request, response);
    }


        @Override
    public String getServletInfo() {
        return "Short description";
    }

}
