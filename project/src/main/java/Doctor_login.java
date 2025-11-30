

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
 * Servlet implementation class Doctor_login
 */
public class Doctor_login extends HttpServlet {
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
			if(Email_Id.equals("")|| Password.equals(""))
			{
				resp.setContentType("text/html");
                out.println("   <script type=\"text/javascript\">   ");
                out.println("   alert('Some Fields Are Empty');                ");
                out.println("   location='Doctor_login.jsp';            ");
                out.println("   </script>                           ");
				
			}
			else {
				try {
				
				Class.forName("com.mysql.jdbc.Driver");
				cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_hospital_management_system","root","root");
				 st=cn.createStatement();
	             
				String sql="select * from add_doctor where email_id='"+Email_Id+"' && password='"+Password+"'";
				 ResultSet rs=st.executeQuery(sql);
				 if(rs.next())
				 {
					 
					 session.setAttribute("d_id",rs.getString("d_id"));
					 session.setAttribute("Doctor_name",rs.getString("Doctor_name"));
					 session.setAttribute("email_id",rs.getString("email_id"));
					 session.setAttribute("doctor_address",rs.getString("doctor_address"));
					 
					 
					 resp.setContentType("text/html");
	                   out.println("   <script type=\"text/javascript\">   ");
	                   out.println("   alert('Login Successfully');                ");
	                   out.println("   location='Doctor_homepage.jsp';            ");
	                   out.println("   </script>                           ");
				 }
				 else
				 {
					 resp.setContentType("text/html");
	                   out.println("   <script type=\"text/javascript\">   ");
	                   out.println("   alert('Login UnSuccessfully');                ");
	                   out.println("   location='Doctor_login.jsp';            ");
	                   out.println("   </script>                           ");
				 }
				}catch(Exception ex) 
				{
					out.println(ex.toString());
					
				}
			}
		}
		
		if(event.equals("Cancel"))
		{
			resp.sendRedirect("index.jsp");
		}
		
		

	}

}
