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
<link rel="stylesheet" href="css/View_User.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<style><%@ include file="css/table.css"%></style>
</head>
<body>
<div class="Doctor_list">

<center> <h1>User List</h1></center>
<table>
<thead>
<tr>
     <th>User Id</th>
     <th>User Name</th>
     <th>Email</th>
     <th>Contact</th>
   
     </tr>
     </thead>
     <tbody>
     <%
     Connection cn=null;
     Statement st=null;

		Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_hospital_management_system","root","root");
		 st=cn.createStatement();
      
		String sql="select * from user_signup";
		 ResultSet rs=st.executeQuery(sql);
		 while(rs.next())
		 {
     
     %>
     <tr>
         <td><%=rs.getString("srno") %></td>
          <td><%=rs.getString("full_name") %></td>
          <td><%=rs.getString("email_id") %></td>
          <td><%=rs.getString("contact_number") %></td>
         
        </tr>
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