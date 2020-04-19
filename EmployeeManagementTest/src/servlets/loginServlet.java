package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
 
 
 
/**
 * Servlet implementation class LoginTR
 */
 @WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
         
        String username=request.getParameter("username");
        System.out.println("username "+username);
        String password=request.getParameter("password");
        System.out.println("password "+password);
         
        try {
            String url="jdbc:mysql://localhost:3306/employeemanagement";
            String userName="root";
            String password1 ="";
             
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection(url,userName,password1);
            if(conn != null)
            System.out.println("Connection establishing...");
             
            PreparedStatement ps=conn.prepareStatement("select * from login where Username=? and Password=?");
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs=ps.executeQuery();
          
            int count=0;
            if (rs.next())
            {
                count++;
            }
             
            if (count>0) {
            	System.out.println("Connected");
                out.println("You are successfully Logged in");  
                response.sendRedirect("Profile.html");
            }
            else
            {
                response.sendRedirect("login.jsp");
                out.println("Invalid Username/Password");
            }
        }
         catch(Exception e)
        {
            e.printStackTrace();
        }
    }
 
}