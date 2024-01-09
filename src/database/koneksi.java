/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package database;
import java.sql.*;
/**
 *
 * @author User
 */
public class koneksi {
    public static Connection getConnection() {
        Connection connection = null;
        String driver = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/kuliner"; 
        String user = "root";
        String password = "";
        if (connection == null) {
            try {
                Class.forName(driver);
                connection = DriverManager.getConnection(url, user, password);
            } catch (ClassNotFoundException | SQLException error) {
               System.exit(0);
            }

        }
        return connection;
    }
}
