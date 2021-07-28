<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="com.training.dao.*"%>
<!DOCTYPE html>
<html>
<style>
body{
background-image:url("image/background.jpg");
background-size: 1300px 520px;
  background-repeat: no-repeat;
background-attachment: fixed;
}h1 { color: #FFFFFF; }
tr{color:#FFFFFF;}
td{color:#FFFFFF;}
</style>
<head>
<meta charset="ISO-8859-1">
<title>WELCOME ADMIN</title>
</head>
<body>
 <div align="center">
<br><br>
<form action="AddnewCourse">
<input type="submit" value="ADD NEW COURSE">
</form>
<br>
<form action="AdminTable.jsp">
<input type="submit" value=" VIEW STUDENT DETAILS">
</form>
</div>
</body>
</html>