

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
 * Servlet implementation class doctor_status
 */
public class doctor_status extends HttpServlet {
	Connection cn=null;
	Statement st=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        PrintWriter out=resp.getWriter();
        HttpSession session = req.getSession();
        
      String status=req.getParameter("status");
      
      String event=req.getParameter("submit");
      
      out.println(status);
     
      out.println(event);
      
      
       Database db=new Database();
      String result=db.Connectdb();
      out.println(result);
      
      
      if(event.equals("Update"))
      {
          String sql ="update admin_adddoctor set status='"+status+"' where Userid='"+session.getAttribute("Userid") +"' && Speaciality='"+session.getAttribute("Speaciality") +"' ";
        String update=db.update(sql);
        out.println(update);
        resp.sendRedirect("Doctors_status.jsp");
      }
  
	}
}
