<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style type="text/css">
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
<title>Insert title here</title>
</head>
<body>
 <div align="center">
  <h1>Student Register Form</h1>
  <form action="<%= request.getContextPath() %>/register" method="post">
   <table style="with: 80%">
    <tr>
     <td><b>First Name</b></td>
     <td><input type="text" name="firstName" required/></td>
    </tr>
    <tr>
     <td><b>Last Name</b></td>
     <td><input type="text" name="lastName" required/></td>
    </tr>
    <tr>
     <td><b>UserName</b></td>
     <td><input type="text" name="username" minlength="6" minlength="20" required/></td>
    </tr>
    <tr>
     <td><b>Password</b></td>
     <td><input type="password" name="password" required/></td>
    </tr>
    <tr>
     <td><b>Address</b></td>
     <td><input type="text" name="address" required/></td>
    </tr>
    <tr>
     <td><b>Contact No</b></td>
     <td><input type="text" name="contact" required/></td>
    </tr>
   </table>
   <br>
   <input type="submit" value="Submit" />
  </form>
 </div>
</body>
</html>