<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
    }
    
    form {
        background-color: #fff;
        max-width: 300px;
        margin: 50px auto;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }
    
    label {
        display: block;
        margin-bottom: 10px;
    }
    
    input[type="text"],
    input[type="password"] {
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
    
    a {
        text-decoration: none;
        color: #4CAF50;
    }
    
    a:hover {
        color: #45a049;
    }
</style>
</head>
<body>

<form action="loginServlet" method="post">
    <label for="UserName">Enter User Name:</label>
    <input type="text" name="t1" required><br><br>
    <label for="Password">Enter User Password:</label>
    <input type="password" name="t2" required><br><br>
    <input type="submit" value="Login"><br><br>
</form>

<a href="index.jsp" style="color: blue;"><center>New User???</center></a>


</body>
</html>
