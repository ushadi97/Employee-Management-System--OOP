package util;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import conn.MySqlConnectionUtility;
import tables.Leave;

public class ApplyLeave {

	public static void AddLeave(Leave leave) throws ClassNotFoundException, SQLException {

		String eName = leave.geteName();
		String dName = leave.getdName();
		String sName = leave.getsName();
		String addeddate = leave.getaddeddate();
		String ReasonLeave = leave.getReasonLeave();
		String leaveDu = leave.getleaveDu();
		// attachment = leave.getattachment();

		String sql = "insert into empleave(eName,dName,sname,addeddate,ReasonLeave,leaveDu) values(?,?,?,?,?,?)";

		Connection conn = MySqlConnectionUtility.getMySQLConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, eName);
		pstm.setString(2, dName);
		pstm.setString(3, sName);
		pstm.setString(4, addeddate);
		pstm.setString(5, ReasonLeave);
		pstm.setString(6, leaveDu);
		pstm.executeUpdate();

		// String SQL = "update into empleave
		// values(eName,dName,sname,addeddate,ReasonLeave,leaveDu) values(?,?,?,?,?,?)";

	}

	public static int GetEid() throws ClassNotFoundException, SQLException {

		int empId = 0;
		String sql = "select MAX(leaveID) as max_LeaveId from empleave ";

		Connection conn = MySqlConnectionUtility.getMySQLConnection();

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			empId = rs.getInt(1);
		}

		return empId;

	}

	public static void UpdateLeave(Leave leave) throws ClassNotFoundException, SQLException {
		//System.out.println("here");
		String eName = leave.geteName();
		String dName = leave.getdName();
		String sName = leave.getsName();
		String addeddate = leave.getaddeddate();
		String ReasonLeave = leave.getReasonLeave();
		String leaveDu = leave.getleaveDu();
		int leaveId = GetEid();
		// attachment = leave.getattachment();

		String sql = "update empleave set eName =? ,dName = ?,sname = ?,addeddate = ?,ReasonLeave = ?,leaveDu = ? where leaveID = ? ";

		Connection conn = MySqlConnectionUtility.getMySQLConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, eName);
		pstm.setString(2, dName);
		pstm.setString(3, sName);
		pstm.setString(4, addeddate);
		pstm.setString(5, ReasonLeave);
		pstm.setString(6, leaveDu);
		pstm.setInt(7, leaveId);
		pstm.executeUpdate();
	}

	public static void DeleteLeave() throws ClassNotFoundException, SQLException {
		int leaveId = GetEid();

		String sql = "delete from empleave where leaveID = ? ";

		Connection conn = MySqlConnectionUtility.getMySQLConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, leaveId);
		pstm.executeUpdate();
	}
}
