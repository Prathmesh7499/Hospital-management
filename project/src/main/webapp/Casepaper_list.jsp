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
<link rel="stylesheet" href="css/Casepaper_list.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<style><%@ include file="css/table.css"%></style>
</head>
<body>
<div class="Casepaper_list">

<center> <h1>Casepaper List</h1></center>
<table>
<thead>
<tr>
     <th>rg_no</th>
      <th>first_name</th>
     <th>last_name</th>
     <th>age</th>
     <th>contact_number</th>
     <th>gender</th>
     <th>Disease</th>
     <th>date_of_birth</th>
     <th>regisration_date</th>
     </tr>
     </thead>
     <tbody>
     <%
     Connection cn=null;
     Statement st=null;

		Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_hospital_management_system","root","root");
		 st=cn.createStatement();
      
		String sql="select * from Casepaper";
		 ResultSet rs=st.executeQuery(sql);
		 while(rs.next())
		 {
     
     %>
     <tr>
     <td><%=rs.getString("rg_no") %></td>
         <td><%=rs.getString("first_name") %></td>
          <td><%=rs.getString("last_name") %></td>
          <td><%=rs.getString("age") %></td>
          <td><%=rs.getString("contact_number") %></td>
          <td><%=rs.getString("gender") %></td>
           <td><%=rs.getString("Disease") %></td>
            <td><%=rs.getString("date_of_birth") %></td>
             <td><%=rs.getString("regisration_date") %></td>
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
