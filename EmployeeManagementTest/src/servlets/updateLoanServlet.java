package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import conn.ConnectionUtility;
import tables.Leave;
import tables.Loan;
import util.ApplyLeave;
import util.ApplyLoan;

/**
 * Servlet implementation class updateLoanServlet
 */
@WebServlet("/updateLoanServlet")
public class updateLoanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateLoanServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Loan loan = new Loan();
		HttpSession session = request.getSession();
		loan = (Loan) session.getAttribute("LoanObj");
		request.setAttribute("LoanObj", loan);
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/UpdateLoan.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
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
					System.out.print("Connection created in ");
				}
				
				double Amount = Double.parseDouble(lAmount);
				double interestAmount = Amount * 0.05;
				//String interestAmt = Double.toString(interestAmount);
				
				Loan loan = new Loan();
				loan.setempDept(eDept);
				loan.setempName(eName);
				loan.setloanAmount(Amount);
				loan.setinterestAmount(interestAmount);
				
				
				ApplyLoan.UpdateLoan(loan);
				

				RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/newFile.jsp");
				dispatcher.forward(request, response);
				
			} catch (ClassNotFoundException e) {
			e.printStackTrace();
				
			} catch (SQLException e1) {
				e1.printStackTrace();
				
			}
	}
	}
