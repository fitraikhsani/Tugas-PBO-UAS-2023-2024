/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package project_baru;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author User
 */
public class koneksi {
    private static Connection koneksi;
    
    public static Connection getConnection () throws SQLException {
        String db = "jdbc:mysql://localhost:3306/kuliner";
        String user = "root";
        String pass = "";
        
        if(koneksi == null){
            koneksi = DriverManager.getConnection(db,user,pass);
        }
        return koneksi; 
    }
}
