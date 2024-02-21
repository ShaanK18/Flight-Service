<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "model.*, dao.*, service.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- Page Declaration tag -->
<%!
String userName;
String passWord;
long phone;
%>

<!-- Writing java code in scriptlet tag -->
<%
userName = request.getParameter("t1");
passWord = request.getParameter("t2");
phone = Long.parseLong(request.getParameter("t3"));
UserDao dao = new UserDao();
User user = new User();
user.setUserName(userName);
user.setPassWord(passWord);
user.setPhone(phone);
User userObj = dao.SignUp(user);
if (userObj != null) {
	out.println(userObj.getUserName()+" registered successfully");
	
	
} else {
	out.println("not able to register");
	
}
%>

</body>
</html>