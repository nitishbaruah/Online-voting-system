

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.swing.JOptionPane;

/**
 * Servlet implementation class adminLogin
 */
public class adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public adminlogin() {
        super();
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        String adminName = request.getParameter("adminName");
        String password = request.getParameter("password");
        
        databasemanager db = new databasemanager();
		java.sql.Connection  con = db.getConnection();
		
        try{
			
			PreparedStatement preparedStatement = con.prepareStatement("select * from admin where Admin_username = '"+adminName+"' and Admin_password = '"+password+"'");
			ResultSet rs=((java.sql.Statement) preparedStatement).executeQuery("select * from admin where Admin_username = '"+adminName+"' and Admin_password = '"+password+"'");
			   
			if(rs.next())
			   {
				   HttpSession session=request.getSession();
				   session.setAttribute("adminname", adminName);
				   response.sendRedirect("adminwelcome.jsp");
			     }
			   else  
			   {
				   out.println("WRONG CREDENTIALS");
			   }
		   }
		   catch (Exception e) {
	             out.println(e.getMessage());
		   }
		
		//out.println(adminName);
		//response.sendRedirect("adminwelcome.jsp");
        
		
	}
}
