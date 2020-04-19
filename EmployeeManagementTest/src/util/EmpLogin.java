package util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import conn.MySqlConnectionUtility;
import tables.Login;


public class EmpLogin {
	public static void AddLogin(Login login) throws ClassNotFoundException, SQLException {

		String username = login.getusername();
		String password = login.getpassword();
		

		String sql = "select from login(username,password) values(?,?)";

		Connection conn = MySqlConnectionUtility.getMySQLConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, username);
		pstm.setString(2, password);
		
		pstm.executeUpdate();

	}

}
