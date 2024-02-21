<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="utility.DBUtil"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import='java.time.*, java.sql.*' %>
    <%@ page import="model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%! User userObj; %>
    <% userObj = (User)session.getAttribute("user-key"); %>
    <p id="myId">Welcome <%=userObj.getUserName() %></p>
	<p id="myId2"> <a href='Logout.jsp'>LogOut..</a></p>
    <% 
        String source_airport = request.getParameter("t1");
        String dest_airport = request.getParameter("t2");
        LocalDate fly_date = LocalDate.parse(request.getParameter("t3"));
        Connection con = DBUtil.getConnection();
        String fetchQuery = "SELECT * FROM flightinfo WHERE flight_src=? AND flight_desc=? AND flight_date=?";
        PreparedStatement ps = con.prepareStatement(fetchQuery);
        ps.setString(1, source_airport);
        ps.setString(2, dest_airport);
        java.sql.Date d = Date.valueOf(fly_date);
        ps.setDate(3, d);
        
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            int id = rs.getInt(1);
            String flight_name = rs.getString(2);
            String src = rs.getString(3);
            String dest = rs.getString(4);
            java.sql.Date fly_Date = rs.getDate(5);
            double price = rs.getDouble(6);
    %>
    <table cellpadding='5' cellspacing='5'>
        <thead>
            <th>ID</th>
            <th>NAME</th>
            <th>SOURCE</th>
            <th>DEST</th>
            <th>DATE</th>
            <th>PRICE</th>
            <th>BOOK</th>
        </thead>
        <tbody>
            <tr>
                <td><%=id %></td>
                <td><%=flight_name %></td>
                <td><%=src %></td>
                <td><%=dest %></td>
                <td><%=fly_Date %></td>
                <td><%=price %></td>
                <td><form action="bookFlight.jsp" method="get">
   					 <input type="hidden" name="pname" value="<%=id %>">
    				<button type="submit"> Book Flight</button>
					</form>
				</td>

            </tr>
        </tbody>
    </table>
    <% 
        }
    %>
</body>
</html>