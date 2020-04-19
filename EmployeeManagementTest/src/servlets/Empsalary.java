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

import EmployeeManagementTest.DBConnection;
import conn.ConnectionUtility;
import tables.Loan;
import tables.Salary;
import util.ApplyLoan;
import util.netSalary;

@WebServlet("/Empsalary")
public class Empsalary extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String eID = request.getParameter("empID");
		String otHr = request.getParameter("otHrs");
		String otR = request.getParameter("otRate");
		String bonus = request.getParameter("Bonus");
		String deduct = request.getParameter("ded");
		

		System.out.println(eID);
		System.out.println(otHr);
		
		
			try {
				Connection conn=null;
				conn = ConnectionUtility.getConnection();
				if(conn!=null) {
					System.out.print("Connection created");
				}
				
				int otHrs1 = Integer.parseInt(otHr);
				double otRate1 = Double.parseDouble(otR);
				double Bonus1 = Double.parseDouble(bonus);
				double ded1 = Double.parseDouble(deduct);

	  			double netSal;
	  			netSal = (otHrs1 * otRate1) + (Bonus1 - ded1);
				
				Salary salary = new Salary();
				salary.setempID(eID);
				salary.setotRate(otRate1);
				salary.setBonus(Bonus1);
				salary.setded(ded1);
				salary.setnetSal(netSal);
				
				netSalary.Addsalary(salary);
				
				HttpSession session = request.getSession();
				session.setAttribute("SalaryObj", salary);
				RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/EmpSal.jsp");
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
