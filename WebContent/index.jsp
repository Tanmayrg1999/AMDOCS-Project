<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome User</title>
<style type="text/css">
body{
background-image:url("image/background.jpg");
background-size: 1300px 520px;
  background-repeat: no-repeat;
background-attachment: fixed;
}
h3{color:#FFFFFF;}
</style>
</head>
<body>
<center>

<h3>  
WELCOME PLEASE SELECT YOUR CHOICE
</h3>
<br>

<form action="adminlogin">
<input type="submit" value="Admin Login">
</form>
<br><br>
<form action="login">
<input type="submit" value="Student Login">
</form>
<br><br>
<form action="register">
<input type="submit" value="Register as Student">
</form>
</center>
</body>
</html>