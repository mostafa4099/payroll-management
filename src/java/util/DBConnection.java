/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author DELL
 */
public class DBConnection {

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pay_roll", "root", "123");
            return con;
        } catch (Exception e) {
            System.err.println("Connection Problem");
            return null;
        }
    }
}
