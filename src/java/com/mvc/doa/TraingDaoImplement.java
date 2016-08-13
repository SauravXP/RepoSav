/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.doa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mvc.bean.AgentTrainingSchedule;
import com.mvc.util.DBConnection;
import java.sql.Statement;

/**
 *
 * @author saurav.paudel
 */
public class TraingDaoImplement implements TrainingDAO {

    private final Connection conn;

    public TraingDaoImplement() {
        conn = DBConnection.createConnection();
    }

    @Override
    public void addTraining(AgentTrainingSchedule ats) {
        // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        try {
            System.out.println("i am on InsertingData");
            String Query = "insert into tblAgentTrainingSchedule Values(?,?,?,?,?,?)";
            PreparedStatement ppds = conn.prepareStatement(Query);
           // ppds.setInt(1, ats.getTrainingID());
            ppds.setString(1, ats.getTrainingID());
            ppds.setString(2, ats.getBranch());
            ppds.setString(3, ats.getVenue());
            ppds.setString(4, ats.getStdate());
            ppds.setString(5, ats.getEddate());
            ppds.setString(6, ats.getRemarks());
            //int executeUpdate;
            //executeUpdate = 
            ppds.executeUpdate();
            ppds.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    //@Override
    public void deleteTraining(String tid) {
        // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        try {
            String Query = "delete from tblAgentTrainingSchedule where TrainingID=?";
            PreparedStatement ppds = conn.prepareStatement(Query);
            //ppds.setInt(1, tid);
            //ppds.setString(1, Integer.toString(tid));
            ppds.setString(1,tid);
            ppds.executeUpdate();
            ppds.close();

        } catch (SQLException ex) {

        }

    }

    @Override
    public void updateTraining(AgentTrainingSchedule ats) {
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        try{
            String Query="update tblAgentTrainingSchedule set Branch=?,Venue=?,StartDate=?,EndDate=?,Remarks=? where TrainingID=?";
            PreparedStatement   ppds=conn.prepareStatement(Query);
            ppds.setString(1,ats.getBranch());
            ppds.setString(2,ats.getVenue());
            ppds.setString(3,ats.getStdate());
            ppds.setString(4,ats.getEddate());
            ppds.setString(5,ats.getRemarks());
            ppds.setString(6, ats.getTrainingID());
            ppds.executeUpdate();
            ppds.close();
        }
        catch(SQLException Ex){
            Ex.printStackTrace();
        }
    }

    @Override
    public List<AgentTrainingSchedule> getallTrainings() {
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        //return ;
        List<AgentTrainingSchedule> atsa=new ArrayList<>();
        try{
            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery("select * From tblAgentTrainingSchedule");
            while( rs.next() ){
                AgentTrainingSchedule ats=new AgentTrainingSchedule();
                //ats.setTrainingID(rs.getInt("TrainingID"));
                ats.setTrainingID(rs.getString("TrainingID"));
                ats.setBranch(rs.getString("Branch"));
                ats.setVenue(rs.getString("Venue"));
                ats.setStdate(rs.getString("StartDate"));
                ats.setEddate(rs.getString("EndDate"));
                ats.setRemarks(rs.getString("Remarks"));
                atsa.add(ats);
            }
            rs.close();
            stmt.close();
        }catch(SQLException e){
            e.printStackTrace();
            System.out.println("Excetion:"+e);
        }
        return atsa;
    }

    //@Override
    public AgentTrainingSchedule getTrainingById (String tid) {
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        AgentTrainingSchedule ats=new AgentTrainingSchedule();

            try{
                //String Query="SELECT TrainingID,Branch,Venue,StartDate=convert(varchar(12),StartDate,101),EndDate=convert(varchar(12),EndDate,101) From tblAgentTrainingSchedule where TrainingID=?";
                String Query="SELECT TrainingID,Branch,Venue,StartDate,EndDate From tblAgentTrainingSchedule where TrainingID=?";
            try (PreparedStatement ppds = conn.prepareStatement(Query)) {
                //ppds.setInt(1, tid);
                ppds.setString(1,tid);
                ResultSet rs=ppds.executeQuery();
                while(rs.next()){
                    //ats.setTrainingID(rs.getInt(tid));
                    ats.setTrainingID(rs.getString(tid));
                    ats.setBranch(rs.getString("branch"));
                    ats.setVenue(rs.getString("Venu"));
                    ats.setStdate(rs.getString("StartDate"));
                    ats.setEddate(rs.getString("EndDate"));
                    ats.setRemarks(rs.getString("Remarks"));
                    
                    
                }
                rs.close();
            }
            }
            catch(SQLException e){
                e.printStackTrace();
            }
            return ats;
    }

    //@Override
    //public AgentTrainingSchedule getTrainingById(String tid) {
      //  throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
   // }

    //@Override
   // public void deleteTraining(int tid) {
     //   throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    //}

}
