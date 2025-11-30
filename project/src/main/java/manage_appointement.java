

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

/**
 * Servlet implementation class manage_appointement
 */
public class manage_appointement extends HttpServlet {
	Connection cn=null;
	Statement st=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
PrintWriter out=resp.getWriter();
		
		Database db=new Database();
		String result=db.Connectdb();
		out.println(result);
		
		String name=req.getParameter("name");
		String disease=req.getParameter("disease");
		String date=req.getParameter("date");
		String time=req.getParameter("time");
		String status=req.getParameter("status");
		String event =req.getParameter("submit");
		
		HttpSession session= req.getSession();

		
		
		if(event.equals("Submit")) {
			if (name.equals("")|| disease.equals("")|| date.equals("")||time.equals("")|| status.equals(""))
{
				 resp.setContentType("text/html");
	             out.println("   <script type=\"text/javascript\">   ");
	             out.println("   alert('Doctor Booked');                ");
	             out.println("   location='Doctor_speacialization.jsp';            ");
	             out.println("   </script>     ");
				
	
}
			else {
				try {
					String update=db.update("update book_appointment set date='"+date+"',time='"+time+"',status='"+status+"' where user_id='"+session.getAttribute("user_id")+"' && SrNo='"+session.getAttribute("SrNo")+"'");
					out.println(update);
					
					 resp.setContentType("text/html");
		             out.println("   <script type=\"text/javascript\">   ");
		             out.println("   alert('Doctor Booked');                ");
		             out.println("   location='Manage_Appointment.jsp';            ");
		             out.println("   </script>  ");
					
				}catch(Exception ex)
				{
			out.println(ex.toString());
				}
			}
		}
		
	
	}


}
