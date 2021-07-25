<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
     <td>Course Name</td>
     <td><input type="text" name="c_name" /></td>
    </tr>
    <tr>
     <td>Course Description</td>
     <td><input type="text" name="c_desp" /></td>
    </tr>
    <tr>
     <td>Course fees</td>
     <td><input type="text" name="c_fees" /></td>
    </tr>
   </table>
   <input type="submit" value="Submit" />
  </form>
 </div>
</body>
</html>