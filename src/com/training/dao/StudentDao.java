package com.training.dao;
import com.training.model.Student;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.CallableStatement;
import java.sql.Types;


public class StudentDao
{
public int registerEmployee(Student student) throws ClassNotFoundException {
       String INSERT_USERS_SQL = "INSERT INTO StudentDetails" +
           "  (id, firstname, lastname, username, password, address, contact) VALUES " +
           " (?, ?, ?, ?, ?,?,?)";

       int result = 0;

       Class.forName("com.mysql.jdbc.Driver");

       try  {
    	   Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/orcl","sys as sysdba","system");
    	   CallableStatement callSt = null;
    	   callSt = connection.prepareCall("begin ? := getId(); end;");
           callSt.registerOutParameter(1, Types.INTEGER);
           callSt.execute();
           PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);
           preparedStatement.setInt(1, callSt.getInt(1)+1);
           preparedStatement.setString(2, student.getfirstname());
           preparedStatement.setString(3, student.getlastname());
           preparedStatement.setString(4, student.getusername());
           preparedStatement.setString(5, student.getpassword());
           preparedStatement.setString(6, student.getaddress());
           preparedStatement.setString(7, student.getcontact());
           // Step 3: Execute the query or update query
           result = preparedStatement.executeUpdate();
           
       } catch (SQLException e) {
           // process sql exception
           e.printStackTrace();
       }
       return result;
   }

   private void printSQLException(SQLException ex) {
       for (Throwable e: ex) {
           if (e instanceof SQLException) {
               e.printStackTrace(System.err);
               System.err.println("SQLState: " + ((SQLException) e).getSQLState());
               System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
               System.err.println("Message: " + e.getMessage());
               Throwable t = ex.getCause();
               while (t != null) {
                   System.out.println("Cause: " + t);
                   t = t.getCause();
               }
           }
       }
   }
}