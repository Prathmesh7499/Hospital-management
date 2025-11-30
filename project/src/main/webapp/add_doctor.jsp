<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="Admin_navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style><%@ include file="css/add_doctor.css" %></style>
<link rel="stylesheet"type="text/css"href="css/bootstrap.css">
<script type="text/javascript" src="css/validation.js"></script> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<form action="add_doctor" method="post">
<div class="whitediv">
<br>
<h2 style="font-family:Elephant" class="lab">ADD DOCTOR</h2>
<div class="row">
<div class="col-sm-4"><br><br><label>Doctor Name:</label></div>
<div class="col-sm-4"><input type="text" class="textbox" name="Doctor_name"onkeypress="return isString(event)"></div>
</div>

<div class="row">
<div class="col-sm-4"><br><br><label>Email Id:</label></div>
<div class="col-sm-4"><input type="email" class="textbox"name="user_id"onkeypress="return isAlphanumric(event)" ></div>
</div>

<div class="row">
<div class="col-sm-4"><br><br><label>Doctor Address:</label></div>
<div class="col-sm-4"><input type="text" class="textbox"name="doctor_address"></div>
</div>

<div class="row">
<div class="col-sm-4"><br><br><label>Gender:</label></div>
<div class="col-sm-4"><input type="text" class="textbox"name="gender"onkeypress="return isString(event)"></div>
</div>

<div class="row">
<div class="col-sm-4"><br><br><label>Contact No:</label></div>
<div class="col-sm-4"><input type="text" class="textbox"name="contact_no"onkeypress="return isNumber(event)"maxlength="10"></div>
</div>

<div class="row">
<div class="col-sm-4"><br><br><label>speaciality:</label></div>
<div class="col-sm-4"><input type="text" class="textbox"name="speaciality"onkeypress="return isString(event)"></div>
</div>

<div class="row">
<div class="col-sm-4"><br><br><label>Password:</label></div>
<div class="col-sm-4"><input type="password" class="textbox" name="password"></div>
</div>

<div class="row">
<div class="col-sm-4"></div>
<div class="col-sm-4"><input type="submit" class="btn" value="ADD" name="submit"></div>

</div>

</div>
<br>
</form>
</body>
</html>