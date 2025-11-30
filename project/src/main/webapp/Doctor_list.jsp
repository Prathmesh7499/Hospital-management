<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="Admin_navbar.jsp" %>
    <%@page import="java.sql.Connection" %>
    <%@page import="java.sql.Statement" %>
    <%@page import="java.sql.DriverManager" %>
    <%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<style><%@ include file="css/table.css"%></style>
</head>
<body>
<div class="Doctor_list">

<center> <h1>Doctor List</h1></center>
<table>
<thead>
<tr>
     <th>Doctor Name</th>
     <th>User id</th>
     <th>Address</th>
     <th>Contact</th>
     <th>Speaciality</th>
     <th>Aciton</th>
     </tr>
     </thead>
     <tbody>
     <%
     Connection cn=null;
     Statement st=null;

		Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_hospital_management_system","root","root");
		 st=cn.createStatement();
      
		String sql="select * from add_doctor";
		 ResultSet rs=st.executeQuery(sql);
		 while(rs.next())
		 {
     
     %>
     <form action="doctor_list" method="post">
     <input type="hidden" name="d_id" value="<%=rs.getString("d_id") %>">
     <tr>
         <td><%=rs.getString("Doctor_name") %></td>
          <td><%=rs.getString("email_id") %></td>
          <td><%=rs.getString("doctor_address") %></td>
          <td><%=rs.getString("contact_no") %></td>
          <td><%=rs.getString("speaciality") %></td>
          <td><input type="submit" value="Delete" name="submit"></td>
        </tr>
        </form>
        <%
		 }
        
        %>
     </tbody>

     
</table>
</div>
</body>
</html>
</body>
</html>