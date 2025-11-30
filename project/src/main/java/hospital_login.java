

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class hospital_login
 */
public class hospital_login extends HttpServlet {
	Connection cn=null;
	Statement st=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
PrintWriter out=resp.getWriter();
		
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
			if(Email_Id.equals("")|| Password.equals(""))
			{resp.setContentType("text/html");
            out.println("   <script type=\"text/javascript\">   ");
            out.println("   alert('Some Fields Are Empty');                ");
            out.println("   location='hospital_login.jsp';            ");
            out.println("   </script>                           ");
			
				
			}
			else {
				try {
				
				Class.forName("com.mysql.jdbc.Driver");
				cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_hospital_management_system","root","root");
				 st=cn.createStatement();
	             
				String sql="select * from user_signup where Email_Id='"+Email_Id+"' && Password='"+Password+"'";
				 ResultSet rs=st.executeQuery(sql);
				 if(rs.next())
				 {
					 resp.setContentType("text/html");
		                out.println("   <script type=\"text/javascript\">   ");
		                out.println("   alert('Login Successfully');                ");
		                out.println("   location='Admin_homepage.jsp';            ");
		                out.println("   </script>                           ");
						
				
				 }
				 else
				 {
					 out.println("LOGIN UNSUCCESSFULLY");
				 }
				}catch(Exception ex) 
				{
					out.println(ex.toString());
					
				}
		
	
	}
	
		}
	}
}
