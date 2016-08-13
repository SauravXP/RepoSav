/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.doa;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mvc.bean.AgentTrainingSchedule;
import com.mvc.util.DBConnection;
import java.sql.PreparedStatement;
/**
 *
 * @author saurav.paudel
 */
public class trainingSchedule {
    
    private final Connection connection;
    
    public trainingSchedule(){
        
        connection=DBConnection.createConnection();
        Statement st=null;
        ResultSet rs=null;
        
    }

    /**
     *
     * @param ATrsc
     * @return
     */
    public String addtraingSche(AgentTrainingSchedule ATrsc){
       String tid="";
        String brn="";
        String ven="";
        String std="";
        String end="";
        String rem="";
        try{
            Statement st=null;
            ResultSet rs=null;
            //PreparedStatement prpst=null;
            PreparedStatement prpst=connection.prepareStatement("insert into tblAgentTraining   values(?,?,?,?,?,?)");
         //st=connection.createStatement();
         //rs=st.executeUpdate("insert into tblAgentTraining   values(?,?,?,?,?,?)");
         // prpst.setInt(1,ATrsc.getTrainingID());
           //  prpst.setString(1,ATrsc.getTrainingID());
          prpst.setString(2,ATrsc.getBranch());
          prpst.setString(3,ATrsc.getVenue());
          prpst.setString(4, ATrsc.getStdate());
          prpst.setString(5, ATrsc.getEddate());
          prpst.setString(6, ATrsc.getRemarks());          
          prpst.executeUpdate();
          
          System.out.println("your Data has been inserted");
          
        }catch(SQLException ex)
        {
            System.out.println("SQLEXCEPTION:-"+ex);
        }
        //return "Data not inserted";
        return null;
        
    }
}
