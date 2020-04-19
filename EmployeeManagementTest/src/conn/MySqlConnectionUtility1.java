package conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
  
public class MySqlConnectionUtility1 {
	
 private static MySqlConnectionUtility1 MySqlConnectionUtility1 = null;
  
 public MySqlConnectionUtility1() {
	 
 }
 public static MySqlConnectionUtility1 getInstance() {
	 
	 if(MySqlConnectionUtility1 == null) {
		 
		 MySqlConnectionUtility1 = new MySqlConnectionUtility1();
		 return MySqlConnectionUtility1;
	 }
	 return MySqlConnectionUtility1;
 }
 
public Connection getMySQLConnection()
			throws ClassNotFoundException, SQLException {
     // Note: Change the connection parameters accordingly.
     String hostName = "localhost";
     String dbName = "employeemanagement";
     String userName = "root";
     String password = "";
     return getMySQLConnection(hostName, dbName, userName, password);
 }
  
 public static Connection getMySQLConnection(String hostName, String dbName,
         String userName, String password) throws SQLException,
         ClassNotFoundException {
    
     Class.forName("com.mysql.jdbc.Driver");
  
     String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName;
  
     Connection conn = DriverManager.getConnection(connectionURL, userName,
             password);
     return conn;
 }
}