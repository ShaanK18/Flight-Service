<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>

<%
    // Invalidate the session to log out the user
    HttpSession s = request.getSession();
    session.invalidate();
    
    // Redirect the user to the login page
    response.sendRedirect("login.jsp");
%>
