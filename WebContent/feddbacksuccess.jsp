<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
body{
background-image:url("image/background.jpg");
background-size: 1300px 520px;
  background-repeat: no-repeat;
background-attachment: fixed;
}h2 { color: #FFFFFF; }
h4 { color: #FFFFFF; }
tr{color:#FFFFFF;}
td{color:#FFFFFF;}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>SUCCESFULLY SUBMITTED FEEDBACK</h2>
<%
try{ 
Connection connection1 = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/orcl","sys as sysdba","system");
Statement st=connection1.createStatement();
String c1= request.getParameter("name");
String c2= request.getParameter("exp");
String c3= request.getParameter("use");
String c4= request.getParameter("fea");
String c5= request.getParameter("sugg");
System.out.println(c1+c2+c3+c4+c5);
String c11="'"+c1+"'";
String c12="'"+c2+"'";
String c13="'"+c3+"'";
String c14="'"+c4+"'";
String c15="'"+c5+"'";
int result =0;
String sql=" insert into feedback (name,exp,use,fea,sugg) values (?,?,?,?,?)"; 
PreparedStatement preparedStatement = connection1.prepareStatement(sql);
preparedStatement.setString(1,c11);
preparedStatement.setString(2,c12);
preparedStatement.setString(3,c13);
preparedStatement.setString(4,c14);
preparedStatement.setString(5,c15);

result = preparedStatement.executeUpdate();
}
catch (Exception e) {
	e.printStackTrace();
}
%>


</body>
</html>