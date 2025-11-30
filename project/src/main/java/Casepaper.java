

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
 * Servlet implementation class Casepaper
 */
public class Casepaper extends HttpServlet {
	Connection cn=null;
	Statement st=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out=resp.getWriter();
		Database db=new Database();
		String result=db.Connectdb();
		out.println(result);
		
		 String rg_no=req.getParameter("rg_no");
			String first_name=req.getParameter("first_name");
			String last_name=req.getParameter("last_name");
			String age=req.getParameter("age");
			String contact_number=req.getParameter("contact_number");
			String gender=req.getParameter("gender");
			String Disease=req.getParameter("Disease");
	        String date_of_birth=req.getParameter("date_of_birth");
	        String regisration_date=req.getParameter("regisration_date");
	        String event=req.getParameter("submit");
	        
	        
	        out.println(rg_no);
	        out.println(first_name);
	        out.println(last_name);
	        out.println(age);
	        out.println(contact_number);
	        out.println(gender);
	        out.println(Disease);
	        out.println(date_of_birth);
	        out.println(regisration_date);
	        
	        if(event.equals("Submit")) 
	        {
				if (rg_no.equals("")|| first_name.equals("")|| last_name.equals("")|| age.equals("")||contact_number.equals("")|| gender.equals("")|| Disease.equals("")||date_of_birth.equals("")|| regisration_date.equals(""))
	{
					out.println("Something is Empty");
					
		
	}
				else {
					try {
						String insert=db.Insert("insert into casepaper(rg_no, first_name, last_name, age, contact_number, gender, Disease, date_of_birth,regisration_date)values('"+rg_no+"' ,'"+first_name+"','"+last_name+"','"+age+"','"+contact_number+"','"+gender+"','"+Disease+"','"+date_of_birth+"','"+regisration_date+"')");
						out.println(insert);
						resp.setContentType("text/html");
		                out.println("   <script type=\"text/javascript\">   ");
		                out.println("   alert('Casepaper Successfully');                ");
		                out.println("   location='payment.jsp';            ");
		                out.println("   </script>                           ");
						
					}catch(Exception ex)
					{
				out.println(ex.toString());
					}
	        
			
				}
	        }
	        
	        
	}
}