package util;



import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import conn.ConnectionUtility;
import conn.MySqlConnectionUtility;
import tables.Project;

public class AddProject {

	
	public static void AddProject(Project project) throws ClassNotFoundException, SQLException {

		String Pname = project.getPname();
		String Dept = project.getDept();
		String empID = project.getempID();
		
		String sql = "insert into empproject(Pname,Dept,empID) values(?,?,?)";
		
		Connection conn = MySqlConnectionUtility.getMySQLConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, Pname);
		pstm.setString(2, Dept);
		pstm.setString(3, empID);

		pstm.executeUpdate();

	}
	
	public static int GetEid() throws ClassNotFoundException, SQLException {

		/*Connection conn = null;
		String sql = null;

		if (loan == null) {
			return;
		}

		String empName = loan.getEmpName();
	    String deptName = loan.getEmpDept();
		Double loanAmt = loan.getLoanAmt();
		conn = ConnectionUtility.getConnection();
		sql = "update emploan set empName = ?, empDept = ? ,loanAmt = ? where loanID = ?";
		PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, empName);
        pstm.setString(2, deptName);
        pstm.setDouble(3, loanAmount);

		pstm.executeUpdate();

		return; */
		
		int empId = 0;
		String sql = "select MAX(projectID) as max_prjectId from empproject ";

		Connection conn = MySqlConnectionUtility.getMySQLConnection();

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			empId = rs.getInt(1);
		}

		return empId;
		}
	
	public static void UpdateProject(Project project) throws ClassNotFoundException, SQLException {
	
		String Pname = project.getPname();
	    String Dept = project.getDept();
		String empID = project.getempID();
	
		int projectID = GetEid();
	
	String sql = "update empproject set Pname =? ,Dept = ?,empID = ? where projectID = ?  ";
	
	Connection conn = MySqlConnectionUtility.getMySQLConnection();
	PreparedStatement pstm = conn.prepareStatement(sql);
	
	  pstm.setString(1, Pname);
      pstm.setString(2, Dept);
      pstm.setString(3, empID);
  	  pstm.setInt(4, projectID);
	  pstm.executeUpdate();
	}
	
	public static void DeleteProject() throws ClassNotFoundException, SQLException {
		int projectID = GetEid();
		
		String sql = "delete from empproject where projectID = ? ";
		
		Connection conn = MySqlConnectionUtility.getMySQLConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, projectID);
		pstm.executeUpdate();
	}

	
		
	}

		