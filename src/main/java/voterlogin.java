
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Servlet implementation class voterLogin
 */
public class voterlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        
        databasemanager db= new databasemanager();
        java.sql.Connection  con = db.getConnection();
        
        String voternum= request.getParameter("voterID");
        
        try {
        	
		   PreparedStatement preparedStatement1 = con.prepareStatement("select voter_card from temp_vc where voter_card = '"+voternum+"'");
           ResultSet rs1= preparedStatement1.executeQuery("select voter_card from temp_vc where voter_card = '"+voternum+"'");
           
           if(rs1.next())
           {
        	   
           response.sendRedirect("votercheck.jsp");
           out.println("You already voted........"+rs1.getString("voter_card"));

           }else
           {
        	PreparedStatement preparedStatement2 = con.prepareStatement("select id,phoneno from register where voterID = '"+voternum+"'");
            ResultSet rs =   preparedStatement2.executeQuery("select id,phoneno from register where voterID = '"+voternum+"'");
            if(rs.next()){
                String contact = rs.getString("phoneno");
                response.sendRedirect("userwelcome.jsp?con="+contact);
                //out.println(contact);
                //System.out.println(contact);
            }else{
                out.println("Please enter valid card number");
            }
           }
        } catch (SQLException ex) {
           
        }
        //out.println(voternum);
	}

	
	
	
	
}
    