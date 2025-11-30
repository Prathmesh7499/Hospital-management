<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.Connection" %>
    <%@page import="java.sql.Statement" %>
    <%@page import="java.sql.DriverManager" %>
    <%@page import="java.sql.ResultSet" %>
      <%@include file="Doctor_navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/Doctor_list.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<style><%@ include file="css/table.css"%></style>
</head>
<body>
<div class="Feedback">
<br>
<center> <h1>Feedback</h1></center>
<table>
<thead>
<tr>
     <th>User ID</th>
     <th>Gender</th>
     <th>Contact No.</th>
     <th>Register No.</th>
     <th>Date</th>
     </tr>
     </thead>
     <tbody>
  <%
     Connection cn=null;
     Statement st=null;

		Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_hospital_management_system","root","root");
		 st=cn.createStatement();
      
		String sql="select * from give_feedback";
		 ResultSet rs=st.executeQuery(sql);
		 while(rs.next())
		 {
     
     %>
     <tr>     
          <td><%=rs.getString("user_id") %></td>
          <td><%=rs.getString("contact_no") %></td>
          <td><%=rs.getString("gender") %></td>
          <td><%=rs.getString("register_no") %></td>
          <td><%=rs.getString("date") %></td>
        </tr>
         <%
		 }
        
        %>

</tbody>
</table>
</div>
        
</body>
</html>