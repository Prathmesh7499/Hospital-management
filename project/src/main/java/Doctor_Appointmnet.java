

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
 * Servlet implementation class Doctor_Appointmnet
 */
public class Doctor_Appointmnet extends HttpServlet {
	Connection cn=null;
	Statement st=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out=resp.getWriter();  
        HttpSession session = req.getSession();
        
        String event=req.getParameter("submit");
        String status=req.getParameter("status");
        String srno=req.getParameter("srno");
         String lname=req.getParameter("lname");
        String disease=req.getParameter("disease");
        
        
        out.println(event);
        out.println(status);
        out.println(srno);
         out.println(lname);
        out.println(disease);
        
        
        Database db=new Database();
        String result=db.Connectdb();
        out.println(result);
   

        
        if(event.equals("approved"))
        {
             
                  
                        session.setAttribute("srno",srno);
                         session.setAttribute("lname",lname);
                          session.setAttribute("disease",disease);
                          
                        resp.sendRedirect("Manage_Appointment.jsp");
                   
                   
        }
         if(event.equals("cancel"))
        {
               try
                    {
                        
                    String sql = "update manage_appointment set status='Cancel Appointment' where user_id='"+srno+"'";
                    String update=db.update(sql);
                    out.println(update);
                   
                    resp.setContentType("text/html");
                    out.println("   <script type=\"text/javascript\">   ");
                    out.println("   alert('Cancelled Appointment Successfully');                ");
                    out.println("   location='Doctors_dashboard.jsp';            ");
                    out.println("   </script>                           ");
                    
            
                
                    }
                    catch(Exception ex)
                    {
                        out.println(ex.toString());
                    }
                   
        }
        
    }

}
