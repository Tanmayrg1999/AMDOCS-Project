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
<h2 ><font><strong>COURSE DETAILS :</strong></font></h2>
<table cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Course ID</b></td>
<td><b>Course Name</b></td>
<td><b>Course Description</b></td>
<td><b>Course Fees</b></td>
</tr>
<%
try{ 
Connection connection1 = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/orcl","sys as sysdba","system");
Statement st=connection1.createStatement();
/* String name=(String)session.getAttribute("username");
System.out.println(name);
String name1="'"+name+"'";
System.out.println(name1);
int i=st.executeUpdate("update StudentDetails set course=' JAVA'  where username="+name1); */
statement=connection1.createStatement();
String sql ="SELECT * FROM course";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
<td><%=resultSet.getString("course_id") %></td>
<td><%=resultSet.getString("c_name") %></td>
<td><%=resultSet.getString("c_desp") %></td>
<td><%=resultSet.getString("c_fees") %></td>
</tr>

<% 
}
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<br><br>