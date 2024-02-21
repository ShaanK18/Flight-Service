<%@page import="dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import='java.time.*, java.sql.*' %>
    <%@ page import="model.*, dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%! User userObj; %>
    <% userObj = (User)session.getAttribute("user-key"); %>
    <p id="myId"><center>Welcome <%=userObj.getUserName() %></p>
	<p id="myId2"> <a href='Logout.jsp'><center>LogOut..</a></p>
	
	<% int id=Integer.parseInt(request.getParameter("pname")); 
	
	UserDao dao=new UserDao();
	Flight flight = dao.getFlightById(id);
	%>
	<h1><font color='blue'><center>Your booking Details is : </font></h1>
	<h2><font color='green'><center>You are looking for : <%=flight.getFlightName()%> flight</font></h2>
	<h2><font color='green'><center>You traveling to : <%=flight.getfDest()%> &nbsp; &nbsp; from :<%=flight.getfSrc() %> </font></h2>
	<h2><font color='green'><center>Your ticket price will be : <%=flight.getfPrice()*0.12+500.00 %> </font></h2>
	<a href='finalBooking.jsp?p1=<%=flight.getFlightName()%>
	&p2=<%=flight.getfSrc()%>
	&p3=<%=flight.getfDest()%>
	&p4=<%=flight.getfPrice() %>'>

</body>
</html>