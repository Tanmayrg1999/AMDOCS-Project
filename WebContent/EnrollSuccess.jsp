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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>ENROLLED DONE SUCCESFULLY</h2>
<%
try{ 
Connection connection1 = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/orcl","sys as sysdba","system");
Statement st=connection1.createStatement();
Statement st1=connection1.createStatement();

String name=(String)session.getAttribute("username");
System.out.println(name);
String name1="'"+name+"'";
System.out.println(name1);
String c= request.getParameter("mycourse");
String c1="'"+c+"'";

int i=st.executeUpdate("update StudentDetails set course="+c1+  " where username="+name1); 

String sql ="SELECT * FROM course where c_name="+c1;
resultSet = st.executeQuery(sql);

while(resultSet.next()){
%>
<h3>Course id:</h3>
<h4><%=resultSet.getString("course_id") %></h4>
<h3>Course Name:</h3>
<h4><%=resultSet.getString("c_name") %></h4>
<h3>Course Description:</h3>
<h4><%=resultSet.getString("c_desp")%></h4>
<h3>Course Fees:</h3>
<h4><%=resultSet.getString("c_fees") %></h4>

<% 
}
}
catch (Exception e) {
	e.printStackTrace();
}
%>


</body>
</html>