

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
 * Servlet implementation class index
 */
public class index extends HttpServlet {
	
	Connection cn=null;
	Statement st=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
   
		PrintWriter out=resp.getWriter();
     HttpSession session = req.getSession();
		Database db=new Database();
		String result=db.Connectdb();
		out.println(result);
		
		String event =req.getParameter("submit");
		
		if(event.equals("Admin Login"))
		{
			resp.sendRedirect("Admin_login.jsp");
		}
		if(event.equals("Doctor Login"))
		{
			resp.sendRedirect("Doctor_login.jsp");
		}

		if(event.equals("Patient Login"))
		{
			resp.sendRedirect("user_login.jsp");
		}

	}

}
