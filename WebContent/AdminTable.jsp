<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*,java.util.*"%>
<style>
body{
background-image:url("image/background.jpg");
background-size: 1300px 520px;
  background-repeat: no-repeat;
background-attachment: fixed;
}h2 { color: #FFFFFF; }
tr{color:#000000;}
td{color:#000000;}
</style>
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
<h2 ><font><strong>STUDENT DETAILS :</strong></font></h2>
<table cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Student ID</b></td>
<td><b>Student Name</b></td>
<td><b>Course Name</b></td>
</tr>
<%
try{ 
Connection connection1 = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/orcl","sys as sysdba","system");
statement=connection1.createStatement();
String sql ="SELECT * FROM StudentDetails order by id";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("firstname")+" "+resultSet.getString("lastname") %></td>
<td><%=resultSet.getString("course") %></td>

</tr>

<% 
}
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<br><br>