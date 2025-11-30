

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
 * Servlet implementation class add_doctor
 */
public class add_doctor extends HttpServlet {
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
		String speaciality=req.getParameter("speaciality");
		String password=req.getParameter("password");
		String event=req.getParameter("submit");

		out.println(Doctor_name);
		out.println(user_id);
		out.println(doctor_address);
		out.println(gender);
		out.println(contact_no);
		out.println(speaciality);
		out.println(password);
		

		if(event.equals("ADD")) 
		{
			if (Doctor_name.equals("")|| user_id.equals("")|| doctor_address.equals("")||gender .equals("")|| contact_no.equals("")||speaciality .equals("")||password .equals(""))
{
				resp.setContentType("text/html");
                out.println("   <script type=\"text/javascript\">   ");
                out.println("   alert('Some Fields Are Empty');                ");
                out.println("   location='add_doctor.jsp';            ");
                out.println("   </script>                           ");
				
	
}
			else {
				try {
					String insert=db.Insert("insert into add_doctor(Doctor_name, email_id, doctor_address, gender, contact_no, speaciality, password,status)values('"+Doctor_name+"' ,'"+user_id+"','"+doctor_address+"','"+gender+"','"+contact_no+"', '"+speaciality+"','"+password+"','Available')");
              out.println(insert);
										  resp.setContentType("text/html");
                      out.println("   <script type=\"text/javascript\">");
                      out.println("   alert('Record Inserted Successfully'); ");
                      out.println("   location='Doctor_list.jsp'; ");
                      out.println("   </script> ");
					
				}catch(Exception ex)
				{
			out.println(ex.toString());
				}
			}
		}
		
		
		
		
		

	       if(event.equals("Update"))
	        {
	            if(Doctor_name.equals("") || user_id.equals("") || doctor_address.equals("") || gender.equals("") || contact_no.equals("")||speaciality.equals("") || password.equals(""))
	            {
	                   resp.setContentType("text/html");
	                   out.println("   <script type=\"text/javascript\">   ");
	                   out.println("   alert('Some Fields Are Empty');                ");
	                   out.println("   location='Admin_addDoctor.jsp';            ");
	                   out.println("   </script>                           ");
	            }
	            else
	            { 
	                    try
	                    {
	                        String sql = "update add_doctor set name='"+Doctor_name+"', address='"+doctor_address+"',  Gender='"+gender+"', contact='"+contact_no+"', Speaciality='"+speaciality+"', pass='"+password+"' where Userid='"+user_id+"' "; 
	                        String update=db.update(sql);
	                        out.println(update);
	                        
	                        resp.setContentType("text/html");
	                        out.println("   <script type=\"text/javascript\">");
	                        out.println("   alert('Record Updated Successfully'); ");
	                        out.println("   location='Admin_addDoctor.jsp'; ");
	                        out.println("   </script> ");
	                    }
	                    catch(Exception ex)
	                    {
	                        out.println(ex.toString());
	                        resp.setContentType("text/html");
	                        out.println("   <script type=\"text/javascript\">");
	                        out.println("   alert('"+ex.toString()+"'); ");
	                        out.println("   location='Admin_addDoctor.jsp'; ");
	                        out.println("   </script> ");
	                    }
	             }
	                 
	        }
	       
	       if(event.equals("Delete"))
	        {
	            
	                    try
	                    {
	                        String sql = "delete from add_doctor where Userid='"+user_id+"' "; 
	                        String delete=db.delete(sql);
	                        out.println(delete);
	                        
	                        resp.setContentType("text/html");
	                        out.println("   <script type=\"text/javascript\">");
	                        out.println("   alert('Record Deleted Successfully'); ");
	                        out.println("   location='Admin_addDoctor.jsp'; ");
	                        out.println("   </script> ");
	                    }
	                    catch(Exception ex)
	                    {
	                        out.println(ex.toString());
	                        resp.setContentType("text/html");
	                        out.println("   <script type=\"text/javascript\">");
	                        out.println("   alert('"+ex.toString()+"'); ");
	                        out.println("   location='Admin_addDoctor.jsp'; ");
	                        out.println("   </script> ");
	                    }
	             
	        }
	       
		
		
		
		
	}
}
