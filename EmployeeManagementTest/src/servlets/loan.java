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

import conn.ConnectionUtility;
import tables.Loan;
import util.ApplyLoan;

@WebServlet("/loan")
public class loan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String eName = request.getParameter("empName");
		String eDept = request.getParameter("empDept");
		String lAmount = request.getParameter("loanAmount");
		
		System.out.println(eName);
		System.out.println(eDept);
		
			try {
				//DBConnection db=new DBConnection();
				//ConnectionUtility db = new ConnectionUtility();

				Connection conn=null;
				conn = ConnectionUtility.getConnection();
				if(conn!=null) {
					System.out.print("Connection created");
				}
				
				double Amount = Double.parseDouble(lAmount);
				double interestAmount = Amount * 0.05;
				//String interestAmt = Double.toString(interestAmount);
				
				Loan loan = new Loan();
				loan.setempName(eName);
				loan.setempDept(eDept);
				loan.setloanAmount(Amount);
				loan.setinterestAmount(interestAmount);
				
				
				ApplyLoan.AddLoan(loan);
				
				HttpSession session = request.getSession();
				session.setAttribute("LoanObj", loan);
				RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/newFile.jsp");
				dispatcher.forward(request, response);
				//Statement stmt = conn.createStatement();
				
				//stmt.executeUpdate("insert into employeeloan values ('"+empName+"','"+empDept+"','"+loanAmount+"')");
				
				//response.sendRedirect("newFile.jsp");
			} catch (ClassNotFoundException e) {
			e.printStackTrace();
				
			} catch (SQLException e1) {
				e1.printStackTrace();
				
			}
			
	}

}
