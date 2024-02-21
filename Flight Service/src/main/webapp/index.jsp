<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
    }
    
    h3 {
        color: green;
    }
    
    form {
        max-width: 400px;
        margin: 50px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }
    
    label {
        display: block;
        margin-bottom: 10px;
        color: #333;
    }
    
    input[type="text"] {
        width: 100%;
        padding: 8px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 3px;
    }
    
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }
    
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>

<h3><center>Todays Date is: <%= new Date() %></h3>
<form action="userReg.jsp" method="post">
    <label for="Name">User Name:</label>
    <input type="text" name="t1" required><br><br>
    <label for="Name">User Password:</label>
    <input type="text" name="t2" pattern="[0-9A-Z#$@]{3,6}" required><br><br>
    <label for="phone">User Phone:</label>
    <input type="text" name="t3" required><br><br>
    <input type="submit" value="SignUp">
</form>

</body>
</html>
