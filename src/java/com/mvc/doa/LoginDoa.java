package com.mvc.doa;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mvc.bean.LoginBean;
import com.mvc.util.DBConnection;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author saurav.paudel
 */
public class LoginDoa {
    
    public String authenticateUser(LoginBean loginBean){
        String userName=loginBean.getUserName();
        String password=loginBean.getPassword();
       Connection con=null;
       Statement st=null;
       ResultSet rs=null;
       
       String userNameDB="";
       String passwordDB="";
               
             try{
                 con=DBConnection.createConnection();
                 st=con.createStatement();
                 rs=st.executeQuery("select username,password from dbo.users1");
                 
               while(rs.next()){
                   userNameDB=rs.getString("username");
                   passwordDB=rs.getString("password");
                   if(userName.equals(userNameDB)&& password.equals(passwordDB)){
                       return "SUCCESS";
                   }
               }  
             }catch(SQLException e){
                 e.printStackTrace();
                        
             }  
             return "Invalid user Credentials";
        
        //return null;
        
        
    }
}
