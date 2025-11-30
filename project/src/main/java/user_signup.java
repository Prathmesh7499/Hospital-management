

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

/**
 * Servlet implementation class user_signup
 */
public class user_signup extends HttpServlet {
	Connection cn=null;
	Statement st=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
PrintWriter out=resp.getWriter();
		
		Database db=new Database();
		String result=db.Connectdb();
		out.println(result);
		

		String full_name=req.getParameter("full_name");
		String email_id=req.getParameter("email_id");
		String contact_number=req.getParameter("contact_number");
		String password=req.getParameter("password");
		String re_password=req.getParameter("re_password");
		String event =req.getParameter("submit");
	
		out.println(full_name);
		out.println(email_id);
		out.println(contact_number);
		out.println(password);
		out.println(re_password);
		
		if(event.equals("Signup")) 
		{
			if (full_name.equals("")|| email_id.equals("")|| contact_number.equals("")||password.equals("")|| re_password.equals(""))
{
				out.println("Something is Empty");
				
	
}
			else {
				try {
					String insert=db.Insert("insert into user_signup(full_name, email_id, contact_number , password ,re_password)values('"+full_name+"' ,'"+email_id+"','"+contact_number+"','"+password+"','"+re_password+"')");
					 resp.setContentType("text/html");
		                out.println("   <script type=\"text/javascript\">   ");
		                out.println("   alert('Login Successfully');                ");
		                out.println("   location='user_login.jsp';            ");
		                out.println("   </script>                           ");
						
					
				}catch(Exception ex)
				{
			out.println(ex.toString());
				}
			}
		}
		
	}

}
