package util;



import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import conn.ConnectionUtility;
import conn.MySqlConnectionUtility;
import tables.Leave;
import tables.Loan;

public class ApplyLoan {

	
	public static void AddLoan(Loan loan) throws ClassNotFoundException, SQLException {

		String eName = loan.getempName();
		String eDept = loan.getempDept();
		double Amount = loan.getloanAmount();
		
		String sql = "insert into empLoan(empName,empDept,loanAmount) values(?,?,?)";
		
		Connection conn = MySqlConnectionUtility.getMySQLConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, eName);
		pstm.setString(2, eDept);
		pstm.setDouble(3, Amount);

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
		String sql = "select MAX(loanID) as max_loanId from emploan ";

		Connection conn = MySqlConnectionUtility.getMySQLConnection();

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			empId = rs.getInt(1);
		}

		return empId;
		}
	
	public static void UpdateLoan(Loan loan) throws ClassNotFoundException, SQLException {
	
		String eName = loan.getempName();
	    String eDept = loan.getempDept();
		Double Amount = loan.getloanAmount();
	
		int loanId = GetEid();
	
	String sql = "update emploan set empName =? ,deptName = ?,loanAmount = ? where loanId = ?  ";
	
	Connection conn = MySqlConnectionUtility.getMySQLConnection();
	PreparedStatement pstm = conn.prepareStatement(sql);
	
	  pstm.setString(1, eName);
      pstm.setString(2, eDept);
      pstm.setDouble(3, Amount);
  	  pstm.setInt(4, loanId);
	  pstm.executeUpdate();
	}
	
	public static void DeleteLoan() throws ClassNotFoundException, SQLException {
		int loanId = GetEid();
		
		String sql = "delete from emploan where loanId = ? ";
		
		Connection conn = MySqlConnectionUtility.getMySQLConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, loanId);
		pstm.executeUpdate();
	}

	
		
	}

		