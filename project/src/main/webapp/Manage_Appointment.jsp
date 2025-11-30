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
<style><%@ include file="css/Manage_Appointment.css" %></style>
<link rel="stylesheet"type="text/css"href="css/bootstrap.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<form action="manage_appointement" method="post">
        
    
        
            
      
       <div class="heading">
           <label1>Manage Appointment</label>
       </div>
       <div class="whitediv">
           <div class="row">
               <div class="col-sm-4"><label>Patient Name</label></div>
               <div class="col-sm-2"><input type="text"class="textbox"  name="name"  value="<%=session.getAttribute("SrNo")%>"></div>
           </div>
           
           <div class="row">
               <div class="col-sm-4"><label>Disease</label></div>
               <div class="col-sm-2"><input type="text"class="textbox" name="disease" value="<%=session.getAttribute("Disease")%>"></div>
           </div>
           <div class="row">
               <div class="col-sm-4"><label>Appointment date</label></div>
               <div class="col-sm-2"><input type="date"class="textbox"name="date" value="<%=session.getAttribute("date")%>"></div>
           </div>
           <div class="row">
               <div class="col-sm-4"><label>time</label></div>
               <div class="col-sm-2"><input type="time"class="textbox"name="time"></div>
           </div>
           <div class="row">
               <div class="col-sm-4"><label>Status</label></div>
               <div class="col-sm-2"><br>
                         <select id="status" name="status" style="height: 40px;
	width: 220px;">
                                   <option value=""></option> 
                                   <option value="Confirm">Confirm</option>
                                   <option value="Pending">Pending</option>
                                   <option value="Cancle">Cancle</option>
                                  
                         </select></div>
           </div>
           
           
           <input type="submit"class="button"value="Submit"name="submit">
           
      </div>      
        </form>
        
       
</body>
</html>