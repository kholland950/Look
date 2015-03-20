package com.look;

import static java.lang.System.out;
import java.net.URL;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author kevinholland
 */
public class RecentFeed {
    java.sql.Connection con;
    private static final String db = "look_db";
    private static final String db_user = "kholland950";
    private static final String db_password = "m47dyrpC5HfRdMEb";
    
    public RecentFeed() {
        try{
            Class.forName("org.gjt.mm.mysql.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/"+db, db_user, db_password);
            
        } catch (SQLException e) {
            out.println("SQLException caught: " + e.getMessage());
        } catch (ClassNotFoundException e) {
            out.println(e);
        }
    }
    
    public String outputRecentFeed() throws SQLException {
        Statement s = con.createStatement();
        ResultSet r;
        String output = "";
        try {
            r = s.executeQuery("SELECT * FROM posts ORDER BY time_posted DESC");
            //out.println("<pre>");
            while (r.next()) {
                Statement sUser = con.createStatement();
                int userID = r.getInt(4);
                String query = "SELECT username FROM users WHERE user_id=" + userID;
                ResultSet userResult = sUser.executeQuery(query);
                userResult.next();
                String user = userResult.getString("username");
                output += "<hr>";
                output += "<p>";
                output += String.format("<h2>%s</h2>", r.getString(2));
                output += String.format("<h3>Post by: %s</h3>", user);
                output += String.format("<h4>%s</h4>", r.getString(3));
                output += String.format("<p>%s</p>", r.getTimestamp(6).toString());
                output += String.format("<img src=%s align=center>", r.getString(5));
                output += "</p>";
                output += "<hr>";
            }
        } catch (SQLException e) {
            out.println(e);
        }
        return output;
    }
}
