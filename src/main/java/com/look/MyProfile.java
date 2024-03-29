package com.look;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.ocpsoft.prettytime.PrettyTime;

/*
 * Copyright 2015 Kevin Holland.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/**
 * MyProfile handles profile get requests and forwards to the corresponding profile page 
 * 
 * @author  Kevin Holland (GitHub: kholland950)
 * @date    04/20/15
 * @updated 05/17/15
 */
@WebServlet("/myProfile")
public class MyProfile extends HttpServlet {
    /**
     * Processes get request for profile page
     * @param request HttpServletRequest from client
     * @param response HttpServletResponse to send to client
     * @throws ServletException
     * @throws IOException 
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            request.getSession().setAttribute("destination", "myProfile");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
        String username = request.getSession().getAttribute("user").toString();
        request.setAttribute("username", username);
        int user_id = DatabaseUserUtils.getUserIDFromUsername(username);
        Connection conn;
        String postIDsString = "";
        int numOfPosts = 0;
        try {
            conn = LookDatabaseUtils.getNewConnection();
            ResultSet postsSet = conn.createStatement().executeQuery(
                    "SELECT post_id FROM posts "
                    + "WHERE users_user_id=" + user_id + " "
                    + "ORDER BY time_posted DESC;");
            while (postsSet.next()) {
                postIDsString += postsSet.getInt(1) + " ";
                numOfPosts++;
            }
            
            request.setAttribute("postIDs", postIDsString);
            request.setAttribute("numPosts", numOfPosts);
            ResultSet userSet = conn.createStatement().executeQuery(
                    "SELECT * FROM users "
                    + "WHERE user_id=" + user_id + ";");
            userSet.next();
            PrettyTime p = new PrettyTime();
            Timestamp stamp = userSet.getTimestamp("date_created");
            Date date = new Date(stamp.getTime());
            request.setAttribute("timeJoined", p.format(date));
        
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(MyProfile.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        request.getRequestDispatcher("profile.jsp").forward(request, response);
    }
}
