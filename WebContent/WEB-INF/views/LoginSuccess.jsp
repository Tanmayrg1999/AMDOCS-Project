<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
<%@page import="com.training.dao.*"%>
<% 
try {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/orcl","sys as sysdba","system");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
ResultSet resultSet1=null;
%>
<!DOCTYPE html>
<html>
<style>
body{
background-image:url("image/background.jpg");
background-size: 1300px 520px;
  background-repeat: no-repeat;
background-attachment: fixed;
}
h3 { color: #FFFFFF; }
tr{color:#FFFFFF;}
td{color:#FFFFFF;}
</style>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Welcome  <%out.println(session.getAttribute("username")); %></h3>

 <div align="center">
 <form action="courseDetails.jsp">
<input type="submit" value="VIEW COURSE DETAILS">
</form>
<br>
</p> 
<%
Connection con = null;
PreparedStatement ps = null;
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/orcl","sys as sysdba","system");
String sql = "SELECT * FROM course";
ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery(); 
%>
  <form action="EnrollSuccess.jsp" method="post">
<p>
   <br>
<select name="mycourse">
<%
while(rs.next())
{
String c_name = rs.getString("c_name"); 
%>
<option value="<%=c_name %>"><%=c_name %></option>
<%	
}
%>
</select>
   <input type="submit" value="ENROLL NOW" />
  </form>
<br><br>
<div align="center">
<form action="feedback.jsp">
<input type="submit" value="FEEDBACK">
</form>
</div>
<%

}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>
</div>
</body>
</html>