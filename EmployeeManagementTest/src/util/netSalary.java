package util;



import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import conn.MySqlConnectionUtility;
import tables.Leave;
import tables.Salary;

public class netSalary {

	
	public static void Addsalary(Salary salary) throws ClassNotFoundException, SQLException {

		String eID = salary.getempID();
		int otHr   = salary.getotHrs();
		double otR = salary.getotRate();
		double bonus = salary.getBonus();
		double deduct = salary.getded();
		
		String sql = "insert into empsal(empID,otHrs,otRate,Bonus,ded) values(?,?,?,?,?)";
		
		Connection conn = MySqlConnectionUtility.getMySQLConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, eID);
		pstm.setDouble(2, otHr);
		pstm.setDouble(3, otR);
		pstm.setDouble(4, bonus);
		pstm.setDouble(5, deduct);

		pstm.executeUpdate();
	}
		
		public static int GetEid() throws ClassNotFoundException, SQLException {

			int empID = 0;
			String sql = "select MAX(salaryID) as max_salaryID from CalcSal ";

			Connection conn = MySqlConnectionUtility.getMySQLConnection();

			PreparedStatement pstm = conn.prepareStatement(sql);

			ResultSet rs = pstm.executeQuery();
			if (rs.next()) {
				empID = rs.getInt(1);
			}

			return empID;

		}

		public static void UpdateSalary(Salary sal) throws ClassNotFoundException, SQLException {
		
			String eID = sal.getempID();
			int otHr = sal.getotHrs();
			//String OTHrs = Integer.toString(otHrs);
			double otR = sal.getotRate();
			//String OTRate = Double.toString(otRate);
			double bonus = sal.getBonus();
			//String bonus = Double.toString(Bonus);
			double deduct = sal.getded();
			//String deductions = Double.toString(ded);
			
			int SalaryID = GetEid();
			

			String sql = "update empsal set empID =?, otHrs = ?, otRate = ?, Bonus = ?, ded = ? where SalaryID = ? ";

			Connection conn = MySqlConnectionUtility.getMySQLConnection();
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, eID);
			pstm.setInt(2, otHr);
			pstm.setDouble(3, otR);
			pstm.setDouble(4, bonus);
			pstm.setDouble(5, deduct);
			pstm.setInt(6, SalaryID);
			pstm.executeUpdate();
		}

		public static void DeleteSalary() throws ClassNotFoundException, SQLException {
			int SalaryId = GetEid();

			String sql = "delete from CalcSal where salaryID = ? ";

			Connection conn = MySqlConnectionUtility.getMySQLConnection();
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, SalaryId);
			pstm.executeUpdate();
		}
	
}