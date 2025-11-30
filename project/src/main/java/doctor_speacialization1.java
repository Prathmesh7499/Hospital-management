

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
 * Servlet implementation class doctor_speacialization1
 */
public class doctor_speacialization1 extends HttpServlet {
	Connection cn=null;
	Statement st=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
PrintWriter out=resp.getWriter();
		
		Database db=new Database();
		String result=db.Connectdb();
		out.println(result);
		
		
		
HttpSession session=req.getSession();
        
        String d_id=req.getParameter("d_id");
        String Doctor_name=req.getParameter("Doctor_name");
         String speaciality=req.getParameter("speaciality");
          String status=req.getParameter("status");
        String event=req.getParameter("submit");
     
      out.println(d_id);
        out.println(Doctor_name);
        out.println(speaciality);
        out.println(event);
        
        if(status.equals("Available"))
        {
           if(event.equals("BOOK"))
            {
            session.setAttribute("d_id", d_id);
             session.setAttribute("Doctor_name", Doctor_name);
              session.setAttribute("speaciality", speaciality);
              
              resp.sendRedirect("Book_Appointment.jsp");
           }
        }
        
         if(status.equals("Not Available"))
        {
         if(event.equals("BOOK"))
        {

        	 resp.setContentType("text/html");
             out.println("   <script type=\"text/javascript\">   ");
             out.println("   alert('Doctor Booked');                ");
             out.println("   location='Doctor_speacialization.jsp';            ");
             out.println("   </script>                           ");
        
        }
        }
        
	}

}
