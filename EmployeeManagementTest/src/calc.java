
import javax.servlet.*; 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/calc")
public class calc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  			String otHrs = request.getParameter("otHrs");
  			double oth = Double.valueOf( otHrs );
  			
  			String otRate = request.getParameter("otRate");
  			double otr = Double.valueOf(otRate);
  			
  			String bonus = request.getParameter("bonus");
  			double bon = Double.valueOf(bonus);
  			
  			String ded = request.getParameter("ded");
  			double deduction = Double.valueOf(ded);
  			
  			double netSal;
  			netSal = (oth * otr) + (bon - deduction);
  			
  			request.setAttribute("netSal",netSal);
  			request.getRequestDispatcher("CalcSal.jsp").forward(request, response); 
  			
	}

}
