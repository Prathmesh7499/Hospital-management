

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Servlet implementation class Book_Appointment
 */
public class Book_Appointment extends HttpServlet {
	Connection cn=null;
	Statement st=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
PrintWriter out=resp.getWriter();
		
		Database db=new Database();
		String result=db.Connectdb();
		out.println(result);
		
		HttpSession session =req.getSession();
		
		String first_name=req.getParameter("first_name");
		String gender=req.getParameter("gender");
		String date=req.getParameter("date");
		String last_name=req.getParameter("last_name");
		String contact_no=req.getParameter("contact_no");
		String blood_group=req.getParameter("blood_group");
		String email=req.getParameter("email");
		String Disease=req.getParameter("Disease");
		String Specialization=req.getParameter("Specialization");
		String event=req.getParameter("submit");
		
		out.println(first_name);
		out.println(gender);
		out.println(date);
		out.println(last_name);
		out.println(contact_no);
		out.println(blood_group);
		out.println(email);
		out.println(Disease);
	
		
	Date date1 =new Date();
	SimpleDateFormat formater = new SimpleDateFormat("yyyy/dd/mm");
	String cdate = formater.format(date1);

		if(event.equals("Book_Appointment")) 
		{
			if (first_name.equals("")|| gender.equals("")|| date.equals("")|| last_name.equals("")|| contact_no.equals("")|| blood_group.equals("")|| email.equals("")||Disease.equals(""))
{
				 resp.setContentType("text/html");
	             out.println("   <script type=\"text/javascript\">   ");
	             out.println("   alert('Some fields Are Empty');                ");
	             out.println("  location='doctor_list.jsp';          ");
	             out.println("   </script>                                        ");
				
	
}
			else {
				try {
					String insert=db.Insert("insert into book_appointment(first_name, gender, date, last_name, contact_no, blood_group, email, Disease, Specialization,user_id,doctor_id,doctor_name,status,appointment_date)values('"+first_name+"' ,'"+gender+"','"+date+"','"+last_name+"','"+contact_no+"', '"+blood_group+"','"+email+"','"+Disease+"','"+session.getAttribute("speaciality")+"','"+session.getAttribute("user_id")+"','"+session.getAttribute("d_id")+"','"+session.getAttribute("Doctor_name")+"','Pending','"+cdate+"')");
					out.println(insert);
					 resp.setContentType("text/html");
		             out.println("   <script type=\"text/javascript\">   ");
		             out.println("   alert('Appointment Booked');                ");
		             out.println("   location='Appointment_Details.jsp';            ");
		             out.println("   </script>                                        ");
					
				}catch(Exception ex)
				{
					 resp.setContentType("text/html");
		             out.println("   <script type=\"text/javascript\">   ");
		             out.println("   alert('"+ex.toString()+"');                ");
		             out.println("   location='doctor_list.jsp';            ");
		             out.println("   </script>                                        ");
				}
			}
		}
		
	
	}

}
