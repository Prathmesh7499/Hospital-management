

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class admin_login
 */
public class admin_login extends HttpServlet {
	Connection cn=null;
	Statement st=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out=resp.getWriter();
		HttpSession session = req.getSession();
		Database db=new Database();
		String result=db.Connectdb();
		out.println(result);
		
		String Email_Id=req.getParameter("Email_Id");
		String Password=req.getParameter("Password");
		String event =req.getParameter("submit");

		out.println(Email_Id);
		out.println(Password);
		
		if(event.equals("LOGIN"))
		{
			
			if(Email_Id.equals("")&& Password.equals(""))
			{
				
				 
				 resp.setContentType("text/html");
                  out.println("   <script type=\"text/javascript\">   ");
                  out.println("   alert('Something is Empty');                ");
                  out.println("   location='Admin_login.jsp';            ");
                  out.println("   </script>                           ");
			}
			else
			{
			
			if(Email_Id.equals("indra@gmail.com")&& Password.equals("12345"))
			{
				resp.setContentType("text/html");
                out.println("   <script type=\"text/javascript\">   ");
                out.println("   alert('Login Succsess');                ");
                out.println("   location='Admin_homepage.jsp';            ");
                out.println("   </script>                           ");
				
			}
			else {
				
				
					 
					 resp.setContentType("text/html");
	                   out.println("   <script type=\"text/javascript\">   ");
	                   out.println("   alert('Login unsuccessfull');                ");
	                   out.println("   location='Admin_login.jsp';            ");
	                   out.println("   </script>                           ");
				 }
				
			}
		}
		
		if(event.equals("Cancel"))
		{
			resp.sendRedirect("index.jsp");
		}
		
		

	}

}
