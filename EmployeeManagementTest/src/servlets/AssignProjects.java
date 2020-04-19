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
import tables.Project;
import util.AddProject;

/**
 * Servlet implementation class AssignProjects
 */
@WebServlet("/AssignProjects")
public class AssignProjects extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int empID = 0;
	private static final int empID1 = 0;
       
   
    public AssignProjects() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Pname = request.getParameter("Pname");
		String Dept = request.getParameter("Dept");
		String empID = request.getParameter("empID");
		//String attachment = request.getParameter("attachment");
		
		//System.out.println(Pname);
		//System.out.println(Dept);
		
			try {
				//DBConnection db=new DBConnection();
				//ConnectionUtility db = new ConnectionUtility();

				Connection conn=null;
				conn = ConnectionUtility.getConnection();
				if(conn!=null) {
					System.out.print("Connection created");
				}
				
				
				Project project= new Project();
				project.setPname(Pname);
				project.setDept(Dept);
				project.setempID(empID);
		
				//project.setattachment(attachment);
				
				AddProject.AddProject(project);
				
				HttpSession session = request.getSession();
				session.setAttribute("projAssignObj", project);
				RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/Projects.jsp");
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


