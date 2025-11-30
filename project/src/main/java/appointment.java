

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
 * Servlet implementation class appointment
 */
public class appointment extends HttpServlet {
	Connection cn=null;
	Statement st=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    PrintWriter out=resp.getWriter();
        HttpSession session = req.getSession();
		Database db=new Database();
		String result=db.Connectdb();
		out.println(result);
		
		String SrNo=req.getParameter("SrNo");
		String user_id=req.getParameter("user_id");
		String first_name=req.getParameter("first_name");
		String last_name =req.getParameter("last_name");
		String date =req.getParameter("date");
		String Disease =req.getParameter("Disease");
		String event =req.getParameter("submit");

		
		
		if(event.equals("Confirm"))
		{
			
			session.setAttribute("SrNo",SrNo);
					 session.setAttribute("user_id",user_id);
					 session.setAttribute("first_name",first_name);
					 session.setAttribute("last_name",last_name);
					 session.setAttribute("Disease",Disease);
					 session.setAttribute("date",date);
					 resp.sendRedirect("Manage_Appointment.jsp");
			
		}
		
		if(event.equals("Cancel"))
		{
			try {
				String update=db.update("update book_appointment set status='Canceled' where user_id='"+session.getAttribute("user_id")+"' && SrNo='"+session.getAttribute("SrNo")+"'");
				out.println(update);
				
//				 resp.setContentType("text/html");
//	             out.println("   <script type=\"text/javascript\">   ");
//	             out.println("   alert('Doctor Booked');                ");
//	             out.println("   location='Doctor_speacialization.jsp';            ");
//	             out.println("   </script>  ");
				
			}catch(Exception ex)
			{
	           	out.println(ex.toString());
			}
		}
		
		

	}

}
