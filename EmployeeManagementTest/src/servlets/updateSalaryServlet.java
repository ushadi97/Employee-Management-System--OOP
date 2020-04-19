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
import tables.Salary;
import util.ApplyLeave;
import util.netSalary;

/**
 * Servlet implementation class updateSalaryServlet
 */
@WebServlet("/updateSalaryServlet")
public class updateSalaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateSalaryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Salary salary = new Salary();
		HttpSession session = request.getSession();
		salary = (Salary) session.getAttribute("SalaryObj");
		request.setAttribute("SalaryObj", salary);
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/UpdateSalary.jsp");
		dispatcher.forward(request, response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String eID = request.getParameter("empID");
		String otHr = request.getParameter("otHrs");
		String otR = request.getParameter("otRate");
		String bonus = request.getParameter("Bonus");
		String deduct = request.getParameter("ded");
		
		System.out.println(eID);
		System.out.println(otHr);
		
		try {
			//DBConnection db=new DBConnection();
			//ConnectionUtility db = new ConnectionUtility();

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
			
			netSalary.UpdateSalary(salary);
			
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/EmpSal.jsp");
			dispatcher.forward(request, response);
			
		} catch (ClassNotFoundException e) {
		e.printStackTrace();
			
		} catch (SQLException e1) {
			e1.printStackTrace();
			
		}
		
}

}
