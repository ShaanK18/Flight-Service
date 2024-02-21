<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import='model.*' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
    body 
    {
        background-image: url('flight.jpg');
        background-size: cover;    
    }
    form
    {
    	background-color: aqua;
    	margin-left: 600px;
    	margin-right: 600px;
    	border-radius: 10px;
    	padding-top: 10px;
    	padding-bottom: 10px;
    	margin-top: -10px
    }
    #myId
    {
    	text-align: left;    
		color : yellow;
	}
	#myId2
    {
    	text-align: left;    
		color : red;
	}
    
    
    <%! User userObj; %>
    <% userObj = (User)session.getAttribute("user-key"); %>
 
</style>
</head>
<body>
	<p id="myId">Welcome <%=userObj.getUserName() %></p>
	<p id="myId2"> <a href='Logout.jsp'>LogOut..</a></p>
<center>
	<h1 style="color: white; margin-top: -20px;">Welcome to our flight Service !!!</h1>

    <form action="ViewFlight.jsp" method="get">
    
    	<label for='source Location'>Enter Source</label>
    	<input type='text' name='t1' size='5'> <br> <br>
    	
    	<label for='destination Location'>Enter Destination</label>
    	<input type='text' name='t2' size='5'> <br> <br>
    	
    	<label for='journey Date'>Enter Date of Journey</label>
    	<input type='date' name='t3' > <br> <br>
    	
    	<input type='submit' value='search'>
    </form>
</center>
</body>
</html>