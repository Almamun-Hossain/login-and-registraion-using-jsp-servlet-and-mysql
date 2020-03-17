<%-- 
    Document   : welcome
    Created on : Jan 19, 2020, 10:26:06 PM
    Author     : almam
--%>

<%@page import="newpackage.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% User user = (User) session.getAttribute("logUser");
    if(user==null){
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
    </head>
    <body>
        <h1> Welcome, <%= user.getName() %></h1>
        <h3>Your Account ID: <%= user.getId() %> </h3>
        <h3>Your Email: <%= user.getEmail() %> </h3>
        <h3>Your Password: <%= user.getPassword() %></h3>
        
        <button><a href="LogoutServlet">Log Out</a></button>
    </body>
</html>
