package com.mvc.util;

import java.sql.Connection;
import java.sql.DriverManager;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author saurav.paudel
 */
public class DBConnection {

    public static Connection createConnection(){
        Connection con=null;
        String url="jdbc:sqlserver://localhost:1433;databaseName=AsianBanepa";
        String username="sa";
        String password="system@ITC";
        
        try{
            try{
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
               }
            catch(ClassNotFoundException e){
                e.printStackTrace();
            }
            con=DriverManager.getConnection(url,username,password);
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return con;
                
    }
    
}
