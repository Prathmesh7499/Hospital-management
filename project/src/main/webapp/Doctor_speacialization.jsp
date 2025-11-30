<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.Connection" %>
     <%@page import="java.sql.Statement" %>
      <%@page import="java.sql.ResultSet" %>
       <%@page import="java.sql.DriverManager" %>
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

<div class="Doctor_Speacialization">
<br>
<center> <h1>Doctor_Speacialization</h1></center>
<table>
<thead>
<tr>
 
     <th>Name</th>
     <th>Specialization</th>
     <th>Contact</th>
     <th>Status</th>
     <th>Book</th>
     </tr>
     </thead>
     <tbody>
     <%
            
         
                Connection cn=null;
                Statement st=null;
                
                
                Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_hospital_management_system","root","root");
                   
                     st = cn.createStatement();
                    
                    String sql;
                    sql = "select * from add_doctor";
                    ResultSet rs = st.executeQuery(sql);
                    
                    while(rs.next())
                                               {
                    
                        %>
                        <form action="doctor_speacialization1" method="post">
        <tbody>
       
              <input type="hidden" name="d_id" value="<%=rs.getString("d_id")%>" >
        <input type="hidden" name="Doctor_name" value="<%=rs.getString("Doctor_name")%>" >
         <input type="hidden" name="speaciality" value="<%=rs.getString("speaciality")%>" >
           <input type="hidden" name="status" value="<%=rs.getString("status")%>" >
            
                

            
       
            <tr>
                
              
                <td><%=rs.getString("Doctor_name")%></td>
                <td><%=rs.getString("speaciality")%></td>
                <td><%=rs.getString("contact_no")%></td>
                  <td><%=rs.getString("status")%></td>
                  <td><input type="submit" name="submit" value="BOOK" class="btn"></td>
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