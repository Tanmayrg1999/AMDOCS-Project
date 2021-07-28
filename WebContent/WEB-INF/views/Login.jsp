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
  <h1>Student Login Form</h1>
  <form action="<%=request.getContextPath()%>/login" method="post">
   <table style="with: 100%">
    <tr>
     <td><b>UserName</b></td>
     <td><input type="text" name="username" /></td>
    </tr>
    <br>
    <tr>
     <td><b>Password</b></td>
     <td><input type="password" name="password" /></td>
    </tr>

   </table>
   <br>
   <input type="submit" value="Submit" />
  </form>
 </div>
</body>
</html>