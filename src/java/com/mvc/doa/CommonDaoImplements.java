/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.doa;
import com.mvc.bean.AgentTrainingSchedule;
import com.mvc.bean.CommonB;
import com.mvc.util.DBConnection;
import java.sql.CallableStatement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.sql.Statement;
import java.sql.Types;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author saurav.paudel
 */
public class CommonDaoImplements implements CommonDAO{
    
    private  final Connection conn;
    private List<CommonB> stateList  ;  
    public CommonDaoImplements(){
        conn=DBConnection.createConnection();
    }
            
    public List<CommonB> getAllAnchal() {
        
          List <CommonB> anch=new ArrayList<CommonB>();
          try{
              Statement st=conn.createStatement();
              ResultSet rs=st.executeQuery("SELECT Anchal from tblAnchal");
              
              while(rs.next()){
                  CommonB cb=new CommonB();
                  cb.setAnchal(rs.getString("Anchal"));
                  anch.add(cb);
                  for(int i=0;i<=anch.size();i++){
                  System.out.println(anch.get(i));
                  }
              }
          }catch(SQLException ex){
              ex.printStackTrace();
          }
        

        return anch;
        
    }   
        
    public List<CommonB> getAllDistrict(){
        return null;
    }

        public List<CommonB> getAllBranch(){
        return null;
    }
    @Override
        public ResultSet getAllAnchal1(){
           //CommonB cb=new CommonB();
            
            Statement st = null;
        try {
            st = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
        } catch (SQLException ex) {
            Logger.getLogger(CommonDaoImplements.class.getName()).log(Level.SEVERE, null, ex);
        }
            String sqls="select Anchal from tblAnchal order by 1 ASC ";
            //st.executeQuery("select Anchal from tblAnchal");
            System.out.println("\nExecuting query: " + sqls);
            getACode("51");
            ResultSet rs = null;
        try {
            rs = st.executeQuery(sqls);
        //    while(rs.next()){
         //      System.out.println("Anchals"+rs.getString("Anchal"));
          // }
        } catch (SQLException ex) {
            Logger.getLogger(CommonDaoImplements.class.getName()).log(Level.SEVERE, null, ex);
        }
                
        return rs;    
        }
        
        //return atsa; 
      
        public ArrayList<String>getANCH(){
            ArrayList<String> als=new ArrayList<String>();
            String tquery="SELECT * from tblAnchal";
            Statement stm1 = null;
        try {
            stm1 = conn.createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(CommonDaoImplements.class.getName()).log(Level.SEVERE, null, ex);
        }
            ResultSet rs = null;
        try {
            rs = stm1.executeQuery(tquery);
        } catch (SQLException ex) {
            Logger.getLogger(CommonDaoImplements.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            while(rs.next()){
                als.add(rs.getString("Anchal"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CommonDaoImplements.class.getName()).log(Level.SEVERE, null, ex);
        }
        return als;
            
        }
        public String getACode(String Branch){
         try{
             String agcod=null;
             CallableStatement cs=null;
             cs=conn.prepareCall("{call dbo.sp_GetNewAgents(?,?)}");
             cs.setString(1,"51");
             cs.registerOutParameter(2, java.sql.Types.VARCHAR);
             cs.execute();
             System.out.println("IDS:-"+cs.getString(2));
            return cs.getString(2) ;
         }catch(SQLException sq){
             sq.printStackTrace();
         }
            return null;
        }
       
}
