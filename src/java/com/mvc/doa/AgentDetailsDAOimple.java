/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.doa;
import com.mvc.bean.AgentDetailsB;
import com.mvc.doa.AgtDetailsDAO;
import com.mvc.util.DBConnection;
import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author saurav.paudel
 */
public class AgentDetailsDAOimple implements AgtDetailsDAO{
    
    private final Connection conn;
    public AgentDetailsDAOimple(){
        conn=DBConnection.createConnection();
    }

    @Override
    public void addAgentDetails(AgentDetailsB ads) {
        try{
          System.out.println("i am on InsertingData");
<<<<<<< HEAD
          String qry="insert into tblAgent values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?" //18
                  + ",?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"; //39
          PreparedStatement ppds=conn.prepareStatement(qry);
          ppds.setString(1,ads.getBranch());
          ppds.setString(2, ads.getName());
          ppds.setString(3, ads.getNepName());
          ppds.setString(4,ads.getDateOfBirth());
          ppds.setString(5,ads.getGender());
          ppds.setString(6,ads.getAddress() );
          ppds.setString(7,ads.getAnchal() );
          ppds.setString(8,ads.getDistrict() );
          ppds.setString(9,ads.getLocation());
          ppds.setString(10,ads.getQualification() );
          ppds.setString(11,ads.getOccupation() );
          ppds.setString(12,ads.getDocumentSubmitted() );
          ppds.setString(13,ads.getPhone());
          ppds.setString(14,ads.getMobile() );
          ppds.setString(15,ads.getFax() );
          ppds.setString(16,ads.getEmail() );
          ppds.setString(17,ads.getRegisterDate() );
          ppds.setString(18,ads.getLicenseNo() );
          ppds.setString(19,ads.getLicenseExpDate());
          ppds.setString(20,ads.getRenewalDate());
          ppds.setString(21,ads.getNomineeName());
          ppds.setString(22,ads.getNomineeRelation() );
          ppds.setString(23,ads.getNomineeAdd() );
          ppds.setString(24,ads.getDateOfDeath() );
          ppds.setString(25,ads.getBOCode() );
          ppds.setString(26,ads.getBMCode() );
          ppds.setString(27,ads.getAcNumber() );
          ppds.setString(28,ads.getStatus() );
          ppds.setString(29,ads.getRemarks() );
          ppds.setString(30,ads.getLicenseIssuedFrom() );
          ppds.setString(31,ads.getCommPayMode());
          ppds.setString(32,ads.getCommPayType() );
          ppds.setString(33,ads.getIsSupervisor() );
          ppds.setString(34,ads.getSupervisorQualifyDate() );
          ppds.setString(35,ads.getIsManager() );
          ppds.setString(36,ads.getManagerQualifyDate() );
          ppds.setString(37,ads.getTransCommToBrCode());
          ppds.setString(38,ads.getMunicipalityName() );
          ppds.setString(39,ads.getSalesCenter() );
          ppds.setInt(40,ads.getAgCode());
=======
          String qry="insert into tblAgent values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?"
                  + ",?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
          PreparedStatement ppds=conn.prepareStatement(qry);
          ppds.setString(1,ads.getBranch());
          ppds.setString(2, ads.getName());
          ppds.setString(3,ads.getNepName() );
          ppds.setString(4,ads.getNepName() );
          ppds.setString(5,ads.getNepName() );
          ppds.setString(6,ads.getNepName() );
          ppds.setString(7,ads.getNepName() );
          ppds.setString(8,ads.getNepName() );
          ppds.setString(9,ads.getNepName() );
          ppds.setString(10,ads.getNepName() );
          ppds.setString(11,ads.getNepName() );
          ppds.setString(12,ads.getNepName() );
          ppds.setString(13,ads.getNepName() );
          ppds.setString(14,ads.getNepName() );
          ppds.setString(15,ads.getNepName() );
          ppds.setString(16,ads.getNepName() );
          ppds.setString(17,ads.getNepName() );
          ppds.setString(18,ads.getNepName() );
          ppds.setString(19,ads.getNepName() );
          ppds.setString(20,ads.getNepName() );
          ppds.setString(21,ads.getNepName() );
          ppds.setString(22,ads.getNepName() );
          ppds.setString(23,ads.getNepName() );
          ppds.setString(24,ads.getNepName() );
          ppds.setString(25,ads.getNepName() );
          ppds.setString(26,ads.getNepName() );
          ppds.setString(27,ads.getNepName() );
          ppds.setString(28,ads.getNepName() );
          ppds.setString(29,ads.getNepName() );
          ppds.setString(30,ads.getNepName() );
          ppds.setString(31,ads.getNepName() );
          ppds.setString(32,ads.getNepName() );
          ppds.setString(33,ads.getNepName() );
          ppds.setString(34,ads.getNepName() );
          ppds.setString(35,ads.getNepName() );
          ppds.setString(36,ads.getNepName() );
          ppds.setString(37,ads.getNepName() );
          ppds.setString(38,ads.getNepName() );
          ppds.setString(39,ads.getNepName() );
>>>>>>> c28deca749f98439e3f41c54385b41d3208c19e0

          int exeUpdate;
          exeUpdate=ppds.executeUpdate();
          if(exeUpdate>0){
              System.out.println("A New BRO has been added:-"+ads.getAgCode()+ads.getBranch());
          }
          ppds.close();
      }catch(SQLException ex){
            ex.printStackTrace();
        }
        
        
<<<<<<< HEAD
     //   throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
=======
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
>>>>>>> c28deca749f98439e3f41c54385b41d3208c19e0
    }

    @Override
    public void deleteAgent(String AgtCode) {
      //  throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
try{
        String qry="DELETE FROM tblAgent where AgentCode=?";
        PreparedStatement ppds=conn.prepareStatement(qry);
        ppds.setString(1,AgtCode);
        int exeDelt;
        exeDelt=ppds.executeUpdate();
        if(exeDelt>0){
            System.out.println("BRO was DELETED Successfully with no Reference only");
        }
        ppds.close();
}   catch(SQLException ex){
    ex.printStackTrace();
}   
    }

    @Override
    public void updateAgent(AgentDetailsB adb) {
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
       System.out.println("AT updateAgents");
        try{
            String qry="update tblAgent set Branch=?,Name=?,NepName=?,DateOfBirth=?,Gender=?,"
                    + "Address=?,Anchal=?,District=?,Location=?,Qualification=?,Occupation=?,"
                    + "DocumentSubmitted=?,Phone=?,Mobile=?,Fax=?,Email=?,RegisterDate=?,LicenseNo=?,LicenseExpDate=?,"
                    + "RenewalDate=?,NomineeName=?,NomineeRelation=?,NomineeAdd=?,DateOfDeath=?,BOCode=?,BMCode=?,"
                    + "AcNumber=?,Status=?,Remarks=?,LicenseIssuedFrom=?,CommPayMode=?,CommPayType=?,"
                    + "IsSupervisor=?,SupervisorQualifyDate=?,IsManager=?,ManagerQualifyDate=?,TransCommToBrCode,"
                    + "MunicipalityName=?,SalesCenter where AgentCode=?";
            PreparedStatement ppds=conn.prepareStatement(qry);
            ppds.setString(1,adb.getBranch());
            ppds.setString(2,adb.getName());
            ppds.setString(3,adb.getNepName());
            ppds.setString(4,adb.getDateOfBirth());
          ppds.setString(5,adb.getGender());
          ppds.setString(6,adb.getAddress());
          ppds.setString(7,adb.getAnchal() );
          ppds.setString(8,adb.getDistrict());
          ppds.setString(9,adb.getLocation() );
          ppds.setString(10,adb.getQualification() );
          ppds.setString(11,adb.getOccupation());
          ppds.setString(12,adb.getDocumentSubmitted());
          ppds.setString(13,adb.getPhone() );
          ppds.setString(14,adb.getMobile() );
          ppds.setString(15,adb.getFax() );
          ppds.setString(16,adb.getEmail() );
          ppds.setString(17,adb.getRegisterDate() );
          ppds.setString(18,adb.getLicenseNo() );
          ppds.setString(19,adb.getLicenseExpDate() );
          ppds.setString(20,adb.getRenewalDate() );
          ppds.setString(21,adb.getNomineeName() );
          ppds.setString(22,adb.getNomineeRelation() );
          ppds.setString(23,adb.getNomineeAdd());
          ppds.setString(24,adb.getDateOfDeath() );
          ppds.setString(25,adb.getBOCode() );
          ppds.setString(26,adb.getBMCode() );
          ppds.setString(27,adb.getAcNumber() );
          ppds.setString(28,adb.getStatus() );
          ppds.setString(29,adb.getRemarks() );
          ppds.setString(30,adb.getLicenseIssuedFrom() );
          ppds.setString(31,adb.getCommPayMode() );
          ppds.setString(32,adb.getCommPayType());
          ppds.setString(33,adb.getIsSupervisor());
          ppds.setString(34,adb.getSupervisorQualifyDate() );
          ppds.setString(35,adb.getIsManager() );
          ppds.setString(36,adb.getManagerQualifyDate() );
          ppds.setString(37,adb.getTransCommToBrCode() );
          ppds.setString(38,adb.getMunicipalityName() );
          ppds.setString(39,adb.getSalesCenter() );
          
          int exeUpdate;
          exeUpdate= ppds.executeUpdate();
          if(exeUpdate>0){
              System.out.println("UPDATED AGENTDATE");
          }
            
        ppds.close();
        }
        
        catch(SQLException ex){
            ex.printStackTrace();
        }
    }

    @Override
    public List<AgentDetailsB> getAllAgents() {
       //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
       
        List <AgentDetailsB> ladb=new ArrayList<>();
        try{
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery("SELECT * From tblAgent");
            while(rs.next()){
                AgentDetailsB adb=new AgentDetailsB();
                adb.setAgCode(rs.getInt("AgCode"));
                adb.setBranch(rs.getString("Branch"));
                adb.setName(rs.getString("Name"));
                adb.setNepName(rs.getString("NepName"));
                adb.setDateOfBirth(rs.getString("DateOfBirth"));
                adb.setGender(rs.getString("Gender"));
                adb.setAddress(rs.getString("Anchal"));
                adb.setDistrict(rs.getString("District"));
                adb.setLocation(rs.getString("Location"));
                adb.setQualification(rs.getString("Qualification"));
                adb.setOccupation(rs.getString("Occupation"));
                adb.setDocumentSubmitted(rs.getString("DocumentSubmitted"));
                adb.setPhone(rs.getString("Phone"));
                adb.setMobile(rs.getString("Mobile"));
                adb.setFax(rs.getString("Fax"));
                adb.setEmail(rs.getString("Email"));
                adb.setRegisterDate(rs.getString("RegisterDate"));
                adb.setLicenseNo(rs.getString("LicenseNo"));
                adb.setLicenseExpDate(rs.getString("LicenseExpDate"));
                adb.setRenewalDate(rs.getString("RenewalDate"));
                adb.setNomineeName(rs.getString("NomineeName"));
                adb.setNomineeRelation(rs.getString("NomineeRelation"));
                adb.setNomineeAdd(rs.getString("NomineeAdd"));
                adb.setDateOfDeath(rs.getString("DateOfDeath"));
                adb.setBOCode(rs.getString("BOCode"));
                adb.setBMCode(rs.getString("BMCode"));
                adb.setAcNumber(rs.getString("AcNumber"));
                adb.setStatus(rs.getString("Status"));
                adb.setRemarks(rs.getString("Remarks"));
                adb.setLicenseIssuedFrom(rs.getString("LicenseIssuedFrom"));
                adb.setCommPayMode(rs.getString("CommPayMode"));
                adb.setCommPayType(rs.getString("CommPayType"));
                adb.setIsSupervisor(rs.getString("IsSupervisor"));
                adb.setIsManager(rs.getString("IsManager"));
                adb.setManagerQualifyDate(rs.getString("ManagerQualifyDate"));
                adb.setTransCommToBrCode(rs.getString("TransCommToBrCode"));
                adb.setMunicipalityName(rs.getString("MunicipalityName"));
                adb.setSalesCenter(rs.getString("SalesCenter"));
                
                ladb.add(adb);
                
            }
        }catch(SQLException ex){
            ex.printStackTrace();
        }
        return ladb;
    }

    @Override
    public AgentDetailsB getAgentByID(int AgtCode) {
       //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    AgentDetailsB adb=new AgentDetailsB();
    try{
        
        String qry="SELECT * From tblAgent where AgentCode=?";
        PreparedStatement ppds=conn.prepareStatement(qry);
        ppds.setInt(1,AgtCode);
        ResultSet rs=ppds.executeQuery();
        while(rs.next()){
            adb.setAgCode(rs.getInt(AgtCode));
             adb.setBranch(rs.getString("Branch"));
                adb.setName(rs.getString("Name"));
                adb.setNepName(rs.getString("NepName"));
                adb.setDateOfBirth(rs.getString("DateOfBirth"));
                adb.setGender(rs.getString("Gender"));
                adb.setAddress(rs.getString("Anchal"));
                adb.setDistrict(rs.getString("District"));
                adb.setLocation(rs.getString("Location"));
                adb.setQualification(rs.getString("Qualification"));
                adb.setOccupation(rs.getString("Occupation"));
                adb.setDocumentSubmitted(rs.getString("DocumentSubmitted"));
                adb.setPhone(rs.getString("Phone"));
                adb.setMobile(rs.getString("Mobile"));
                adb.setFax(rs.getString("Fax"));
                adb.setEmail(rs.getString("Email"));
                adb.setRegisterDate(rs.getString("RegisterDate"));
                adb.setLicenseNo(rs.getString("LicenseNo"));
                adb.setLicenseExpDate(rs.getString("LicenseExpDate"));
                adb.setRenewalDate(rs.getString("RenewalDate"));
                adb.setNomineeName(rs.getString("NomineeName"));
                adb.setNomineeRelation(rs.getString("NomineeRelation"));
                adb.setNomineeAdd(rs.getString("NomineeAdd"));
                adb.setDateOfDeath(rs.getString("DateOfDeath"));
                adb.setBOCode(rs.getString("BOCode"));
                adb.setBMCode(rs.getString("BMCode"));
                adb.setAcNumber(rs.getString("AcNumber"));
                adb.setStatus(rs.getString("Status"));
                adb.setRemarks(rs.getString("Remarks"));
                adb.setLicenseIssuedFrom(rs.getString("LicenseIssuedFrom"));
                adb.setCommPayMode(rs.getString("CommPayMode"));
                adb.setCommPayType(rs.getString("CommPayType"));
                adb.setIsSupervisor(rs.getString("IsSupervisor"));
                adb.setIsManager(rs.getString("IsManager"));
                adb.setManagerQualifyDate(rs.getString("ManagerQualifyDate"));
                adb.setTransCommToBrCode(rs.getString("TransCommToBrCode"));
                adb.setMunicipalityName(rs.getString("MunicipalityName"));
                adb.setSalesCenter(rs.getString("SalesCenter"));
                
        }
        rs.close();
    }catch(SQLException ex){
        ex.printStackTrace();
    }
    return adb;
    }
    
}
