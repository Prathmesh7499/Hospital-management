

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
 * Servlet implementation class doctor_list
 */
public class doctor_list extends HttpServlet {
	Connection cn=null;
	Statement st=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out=resp.getWriter();
		
		
		Database db=new Database();
		String result=db.Connectdb();
		out.println(result);
		
		String d_id=req.getParameter("d_id");
		
		String event=req.getParameter("submit");

		   if(event.equals("Delete"))
	        {
	            
	                    try
	                    {
	                        String sql = "delete from add_doctor where d_id='"+d_id+"' "; 
	                        String delete=db.delete(sql);
	                        out.println(delete);
	                        
	                        resp.setContentType("text/html");
	                        out.println("   <script type=\"text/javascript\">");
	                        out.println("   alert('Record Deleted Successfully'); ");
	                        out.println("   location='Doctor_list.jsp'; ");
	                        out.println("   </script> ");
	                    }
	                    catch(Exception ex)
	                    {
	                        out.println(ex.toString());
	                        resp.setContentType("text/html");
	                        out.println("   <script type=\"text/javascript\">");
	                        out.println("   alert('"+ex.toString()+"'); ");
	                        out.println("   location='add_dxoctor.jsp'; ");
	                        out.println("   </script> ");
	                    }
	             
	        }
		   
	}

}
