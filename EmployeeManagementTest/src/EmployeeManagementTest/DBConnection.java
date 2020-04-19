package EmployeeManagementTest;

import java.sql.*;

public class DBConnection {

	public Connection getConnection() throws SQLException,ClassNotFoundException{
		Class.forName("com.msql.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/employeemanagement","root","root");
		return conn;
	}
	
}
