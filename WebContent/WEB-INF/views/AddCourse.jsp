<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
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
<title>ADD COURSE FORM</title>
</head>
<body>
 <div align="center">
  <h1>Employee Register Form</h1>
  <form action="<%= request.getContextPath() %>/AddnewCourse" method="post">
   <table style="with: 80%">
    <tr>
     <td><b>Course Name</b></td>
     <td><input type="text" name="c_name" /></td>
    </tr>
    <tr>
     <td><b>Course Description</b></td>
     <td><input type="text" name="c_desp" /></td>
    </tr>
    <tr>
     <td><b>Course fees</b></td>
     <td><input type="text" name="c_fees" /></td>
    </tr>
   </table>
   <br>
   <input type="submit" value="Submit" />
  </form>
 </div>
</body>
</html>