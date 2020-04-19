package servlets;

import java.io.IOException;
import java.io.*;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import conn.ConnectionUtility;
import tables.Leave;
import util.ApplyLeave;

@WebServlet("/empLeave")
public class empLeave extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("Here");
		String eName = request.getParameter("eName");
		String dName = request.getParameter("dName");
		String sName = request.getParameter("sName");
		String  addeddate = request.getParameter("addeddate");
		String ReasonLeave = request.getParameter("ReasonLeave");
		String leaveDu = request.getParameter("leaveDu");
		//String attachment = request.getParameter("attachment");
		
		System.out.println(eName);
		System.out.println(dName);
		
			try {
				//DBConnection db=new DBConnection();
				//ConnectionUtility db = new ConnectionUtility();

				Connection conn=null;
				conn = ConnectionUtility.getConnection();
				if(conn!=null) {
					System.out.print("Connection created");
				}
				
				
				Leave leave = new Leave();
				leave.seteName(eName);
				leave.setdName(dName);
				leave.setsName(sName);
				leave.setaddeddate(addeddate);
				leave.setReasonLeave(ReasonLeave);
				leave.setleaveDu(leaveDu);
				//leave.setattachment(attachment);
				
				ApplyLeave.AddLeave(leave);
				
				HttpSession session = request.getSession();
				session.setAttribute("LeaveObj", leave);
				RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/EmpLeaveform.jsp");
				dispatcher.forward(request, response);
				//Statement stmt = conn.createStatement();
				
				//stmt.executeUpdate("insert into employeeloan values ('"+empName+"','"+empDept+"','"+loanAmount+"')");
				
				//response.sendRedirect("EmpLeaveform.jsp");
			} catch (ClassNotFoundException e) {
			e.printStackTrace();
				
			} catch (SQLException e1) {
				e1.printStackTrace();
				
			}
			
	}

}
