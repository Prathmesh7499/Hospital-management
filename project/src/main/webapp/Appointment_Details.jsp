<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.Connection" %>
    <%@page import="java.sql.Statement" %>
    <%@page import="java.sql.DriverManager" %>
    <%@page import="java.sql.ResultSet" %>
     <%@include file="user_navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<style><%@ include file="css/table.css"%></style>

</head>
<body>
<div class="Appointments">
<br>
<center> <h1>My Appointments</h1></center>
<table class="w3-table-all">
    <thead>
      <tr class="w3-light-grey w3-hover-red">
        
        <th>Name</th>
        <th>Contact No</th>
          <th>Email</th>
           <th>Gender</th>
               <th>Applay Date</th>
           <th>Disease</th>
           <th>Appointment Date</th>
             <th>Status</th>
      </tr>
    </thead>
    <%
    
    Connection cn=null;
    Statement st=null;

		Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_hospital_management_system","root","root");
		 st=cn.createStatement();
     
		String sql="select * from book_appointment where user_id='"+session.getAttribute("user_id")+"'";
		 ResultSet rs=st.executeQuery(sql);
		 while(rs.next())
		 {
    
    %>
  
    <tr class="w3-hover-green">
    
      <td><%=rs.getString("first_name") %></td>
      <td><%=rs.getString("contact_no") %></td>
       <td><%=rs.getString("email") %></td>
       <td><%=rs.getString("gender") %></td>
       <td><%=rs.getString("appointment_date") %></td>
       <td><%=rs.getString("Disease") %></td>
       <td><%=rs.getString("date") %></td>
       <td><%=rs.getString("status") %></td>
    </tr>
  
   <%
   
		 }
   %>
    
    
  </table>
  </div>
</body>
</html>
