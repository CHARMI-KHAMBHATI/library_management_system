/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package library;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author ADMIN
 */
public class DBClass {
     Connection  conn;

    
    public static Connection ConnectDB(){
         System.out.println("in DBClass");
         
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("idhr 1");
            Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/library","root","");
            System.out.println("idhr 2");
            System.out.println(" connected!");
            return conn;
            
        }catch(Exception e){
             System.out.println("in DBClass catch");
            return null;
            
        }
    }
}
