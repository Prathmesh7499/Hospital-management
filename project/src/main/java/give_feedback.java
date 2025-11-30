

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
 * Servlet implementation class give_feedback
 */
public class give_feedback extends HttpServlet {
	Connection cn=null;
	Statement st=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter out=resp.getWriter();
		Database db=new Database();
		String result=db.Connectdb();
		out.println(result);
		
		
		String Doctor_name=req.getParameter("Doctor_name");
		String user_id=req.getParameter("user_id");
		String doctor_address=req.getParameter("doctor_address");
		String gender=req.getParameter("gender");
		String contact_no=req.getParameter("contact_no");
		String register_no=req.getParameter("register_no");
		String date=req.getParameter("date");
		String event=req.getParameter("Submit");
		
		out.println(Doctor_name);
		out.println(user_id);
		out.println(doctor_address);
		out.println(gender);
		out.println(register_no);
		out.println(date);
		

		if(event.equals("Give Feedback")) 
		
		{
			if (Doctor_name.equals("")|| user_id.equals("")|| doctor_address.equals("")||gender.equals("")|| contact_no.equals("")|| register_no.equals("")|| date.equals(""))
                  {
				resp.setContentType("text/html");
	             out.println("   <script type=\"text/javascript\">   ");
	             out.println("   alert('Some fields Are Empty');                ");
	             out.println("  location='Give_Feedback.jsp';          ");
	             out.println("   </script>                                        ");
	
        }
		
				try
				
				{
					String sql="insert into give_feedback(Doctor_name, user_id, doctor_address, gender, contact_no, register_no, date) values('"+Doctor_name+"','"+user_id+"','"+doctor_address+"', '"+gender+"','"+contact_no+"' , '"+register_no+"', '"+date+"' )";
					String insert=db.Insert(sql);
					resp.setContentType("text/html");		            	  
					out.println("<script type=\"text/javascript\"> alert('Feedback Send Successfull'); location='Give_Feedback.jsp';</script>b");
					out.println(insert);		
				}
					
				
				
				catch(Exception ex)
				{
			out.println(ex.toString());
				}
			}
		}
	
	}

