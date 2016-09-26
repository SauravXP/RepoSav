/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.doa; 
import java.sql.Connection;  
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mvc.bean.AgentSuperiorsB;
import com.mvc.util.DBConnection;
//import java.sql.Date.*;
import java.util.Date;
/**
 *
 * @author alpha
 */
public class AgentSuperiorsDaoImplement implements AgentSuperiorsDAO{
        private final Connection conn;
        
       //pub Date ds=new Date();
        
        public AgentSuperiorsDaoImplement(){
            conn=DBConnection.createConnection();
        }
        
   
        public void addSuperiors(AgentSuperiorsB asb){
            try{
                //In insert/add call get Method like abs.getCode()//
        String   Query1="insert into tblAgentSuperiors Values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement ppds=conn.prepareStatement(Query1);
                ppds.setString(1, asb.getCategory());
                ppds.setString(2,asb.getCode());
                ppds.setString(3,asb.getBranch());
                ppds.setString(4,asb.getName());                
                ppds.setString(5,asb.getNepName());
                ppds.setString(6,asb.getAddress());
                ppds.setString(7,asb.getAgentCode());                
                ppds.setString(8,asb.getPhone());
                ppds.setDate(9,new java.sql.Date(asb.getQualifiyDate().getTime()));
                ppds.setString(10,asb.getStatus());                
                ppds.setDate(11,new java.sql.Date(asb.getRenewalDate().getTime()));                
                ppds.setString(12,asb.getMobile());
                ppds.setString(13,asb.getSuperiorManagerCode());
                ppds.setString(14,asb.getCommPayType());
                ppds.setString(15,asb.getSeniorManagerCode());  
                ppds.executeUpdate();
                ppds.close();
            }catch(SQLException e){
                e.printStackTrace();
            }
            
        }
    
        public void deleteSuperiors(String Code){
          try{
              String Query2="DELETE FROM tblAgentSuperiors WHERE Code=?";
              PreparedStatement ppds=conn.prepareStatement(Query2);
              ppds.setString(1, Code);
              ppds.executeQuery();
              ppds.close();
          }  catch(SQLException ex){
              ex.printStackTrace();
          }
        }
   
        public void updateSuperiors(AgentSuperiorsB asb){
            
            try{
                String Query3="UPDATE tblAgentSuperiors set Category=?,Branch=?,Name=?,"
                        + "NepName=?,Address=?,AgentCode=?,Phone=?,QualifyDate=?,Status=?"
                        + "RenewalDate=?,Mobile=?,SuperiorManagerCode=?,CommPayType"
                        + "SeniorManagerCode=? where Code=?";
                PreparedStatement ppds=conn.prepareStatement(Query3);
                ppds.setString(1,asb.getCategory());
                ppds.setString(2,asb.getBranch());
                ppds.setString(3,asb.getName());
                ppds.setString(4, asb.getNepName());
                ppds.setString(5, asb.getAddress());
                ppds.setString(6, asb.getAgentCode());
                ppds.setString(7, asb.getPhone());
                ppds.setDate(8,new java.sql.Date(asb.getQualifiyDate().getTime()));
                ppds.setString(9, asb.getStatus());
                ppds.setDate(10,new java.sql.Date(asb.getRenewalDate().getTime()));
                ppds.setString(11, asb.getMobile());
                ppds.setString(12, asb.getSuperiorManagerCode());
                ppds.setString(13, asb.getCommPayType());
                ppds.setString(14, asb.getSeniorManagerCode());
                ppds.setString(15, asb.getCode());
                ppds.executeUpdate();
                ppds.close();
            }catch(SQLException ex){
                ex.printStackTrace();
            }
        }
   
        public List<AgentSuperiorsB> getallSuperiors(){
            List<AgentSuperiorsB> asbl=new ArrayList<>();
            try{
                Statement st=conn.createStatement();
                ResultSet rs=st.executeQuery("SELECT * FROM tblAgentSuperiors");
                while(rs.next()){
                    //AgentSuperiorsB asb=new AgentSuperiorsB(String Category, String Code, String Branch, String Name, String NepName,String Address,String AgentCode,String Phone,Date QualifiyDate,String Status,Date RenewalDate,String Mobile,String SuperiorManagerCode,String CommPayType,String SeniorManagerCode);
                    AgentSuperiorsB asb=new AgentSuperiorsB();
                    asb.setCategory(rs.getString("Category"));
                    asb.setCode(rs.getString("Code"));
                    asb.setName(rs.getString("Name"));
                    asb.setNepName(rs.getString("NepName"));
                    asb.setAddress(rs.getString("Address"));
                    asb.setAgentCode(rs.getString("AgentCode"));
                    asb.setPhone(rs.getString("Phone"));
                    asb.setQualifiyDate(rs.getDate("QualifyDate"));
                    asb.setStatus(rs.getString("Status"));
                    asb.setRenewalDate(rs.getDate("RenewalDate"));
                    asb.setMobile(rs.getString("Mobile"));
                    asb.setSuperiorManagerCode(rs.getString("SuperiorManagerCode"));
                    asb.setCommPayType(rs.getString("CommPayType"));
                    asb.setSeniorManagerCode(rs.getString("SeniorManagerCode"));
                    asbl.add(asb);
                    
                    
                }
                rs.close();
                st.close();
            }catch(SQLException ex){
                ex.printStackTrace();
            }
            return asbl;
            
        }
        public AgentSuperiorsB getSuperiorsByID(String Code){
            return null;
            
        }

    @Override
    public AgentSuperiorsB getSuperiorsbyID(String Code) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
