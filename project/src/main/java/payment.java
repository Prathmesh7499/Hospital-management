

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class payment
 */
public class payment extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 
	PrintWriter out=resp.getWriter();
	Database db=new Database();
	String result=db.Connectdb();
	out.println(result);
	
	
	String event=req.getParameter("submit");
     String credit=req.getParameter("credit");
     String name=req.getParameter("name");
     String expiry=req.getParameter("expiry");
     String fee=req.getParameter("fee");
     String cvv=req.getParameter("cvv");
     
     
     out.println(credit);
     out.println(name);
     out.println(expiry);
     out.println(cvv);
     out.println(fee);
	
	
	
	
	if(event.equals("PAY"))
    {
		if (credit.equals("")|| name.equals("")|| expiry.equals("")|| cvv.equals(""))
{
			out.println("Something is Empty");
			

}
		else {
			try {
				String insert=db.Insert("insert into payment(credit, name, expiry, cvv,fee)values('"+credit+"' ,'"+name+"','"+expiry+"','"+cvv+"','"+fee+"')");
				out.println(insert);
				resp.setContentType("text/html");
                out.println("   <script type=\"text/javascript\">   ");
                out.println("   alert('Payment Successfully');                ");
                out.println("   location='appointment.jsp';            ");
                out.println("   </script>                           ");
				
			}catch(Exception ex)
			{
		out.println(ex.toString());
			}
    
	
		}
    }
}
}

