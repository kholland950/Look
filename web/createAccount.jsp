<%-- 
    Document   : createAccount
    Created on : Apr 17, 2015, 5:19:08 PM
    Author     : kevinholland
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.look.DatabaseUserUtils"%>
<%@page import="com.look.RecentFeed" %>
<!DOCTYPE html>
<%
    if (request.getParameter("username") != null) {
        request.setAttribute("username", request.getParameter("username"));
    } 
    if (request.getParameter("firstName") != null) {
        request.setAttribute("firstName", request.getParameter("firstName"));
    }
    if (request.getParameter("lastName") != null) {
        request.setAttribute("lastName", request.getParameter("lastName"));
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <title>Look! Registration</title>
        <link rel="stylesheet" href="css/foundation.css" />
        <link rel="stylesheet" href="css/styles.css" />
        <script src="js/vendor/modernizr.js"></script>
    </head>
    <body>
        <div class="contain-to-grid">
            <nav class="top-bar" data-topbar data-options="is_hover: false" role="navigation">
                <ul class="title-area">
                    <li class="name">
                        <h1><a href="#">Look!</a></h1>
                    </li>
                    <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
                </ul>

                <section class="top-bar-section">
                    <ul class="right">
                        <li class="active"><a href="#">Recent Feed</a></li>
                        <li><a href="upload.jsp">Upload an Image</a></li>
                        <%
                            if (session.getAttribute("user") != null) {
                                out.print("<li class='has-dropdown'><a href='#'>Hello, ");
                                out.print(DatabaseUserUtils.getFirstNameFromUsername(session.getAttribute("user").toString()));
                                out.print("!</a><ul class='dropdown'><li><a href='logout.jsp'>Logout</a></li></ul></li>");
                            } else {
                                out.print("<li><a href='login.jsp' data-reveal-id='loginModal'>Login | Sign up</a></li>");
                            }
                        %>
                    </ul>
                </section>
            </nav>
        </div>
        
        <form action="createUser" method="post">
            <div class="row"">
                <div class="panel large-6 large-offset-3 medium-8 medium-offset-2 small-12 columns login-box">
                    <div class="row" style="text-align: center">
                        <h1>Register</h1>
                    </div>
                    <div class="row">
                        <label>
                        Username
                        <input type="text" name="username"> 
                        </label>
                    </div>
                    <div class="row">
                        <label>
                        Password
                        <input type="password" name="password">
                        </label>
                    </div>
                    <div class="row">
                        <label>
                        Repeat Password
                        <input type="password" name="repeatPassword">
                        </label>
                    </div>
                    <div class="row">
                        <label>
                        First Name
                        <input type="text" name="firstName">
                        </label>
                    </div>
                    <div class="row">
                        <label>
                        Last Name
                        <input type="text" name="lastName">
                        </label>
                    </div>
                    <div class="row" style="text-align: center;">
                        <input type="submit" value="Register" class="button"> 
                    </div>
                </div>
            </div>
        </form>
        
        <%
            if (request.getAttribute("message") != null) {
                out.print(request.getAttribute("message"));
            }
        %>
        
        <script src="js/vendor/jquery.js"></script>
        <script src="js/foundation.min.js"></script>
        <script>
            $(document).foundation();
        </script>
    </body>
</html>
