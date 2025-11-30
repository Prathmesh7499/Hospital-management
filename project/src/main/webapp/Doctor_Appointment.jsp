<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.Connection" %>
     <%@page import="java.sql.Statement" %>
      <%@page import="java.sql.ResultSet" %>
       <%@page import="java.sql.DriverManager" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<style><%@ include file="css/Doctor_Appointment.css" %></style>

</head>
<body>
<form action="Doctor_Appointmnet" method="post">
<div class="heading">
           <label>Appointments</label>
       </div><hr>
       
       <div class="div1">
       <table class="mytable">
         <thead>
            <th>Sr.no.</th>
            <th>Name</th>
            <th>Contact No</th>
            <th>Email</th>
            <th>Gender</th>
             <th>Disease</th>
             <th>Action</th>
         </thead>  
         <%
           
                Connection cn=null;
                Statement st=null;
                
                
                Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_hospital_management_system","root","root");
                   
                     st=cn.createStatement();
                    
                    String sql;
                    sql = "select * from book_appointment  ";
                    ResultSet rs = st.executeQuery(sql);
                    
                    while(rs.next())
                                               {
                     
                        %>
                <tbody>
                    <tr>
                
                        <td><%=rs.getString("SrNo")%></td>
                        <td><%=rs.getString("first_name")%><%=rs.getString("last_name")%></td>
                        <td><%=rs.getString("contact_no")%></td>
                        <td><%=rs.getString("email")%></td>
                        <td><%=rs.getString("gender")%></td>
                        <td><%=rs.getString("Disease")%></td> 
                        <td><input type="submit"  name="submit" value="approved" style="background-color:lightblue;"> 
                        <input type="submit" value="cancel"style="background-color:red;" name="submit">
                         </td>
                          
                    </tr>
                        </form>
                    <%
                    
                                       }
                                       %>
       </table>
       </div>
</body>
</html>