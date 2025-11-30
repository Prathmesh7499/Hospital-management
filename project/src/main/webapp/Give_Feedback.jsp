<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="user_navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"type="text/css"href="css/bootstrap.css">
<script type="text/javascript" src="css/validation.js"></script> 
<style><%@ include file="css/Give_Feedback.css" %></style>
<script type="text/javascript" src="css/validation.js"></script> 

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<form action="give_feedback" method="post">
<div class="whitediv">
<h2 style="font-family:Elephant">Give_Feedback</h2>
<div class="row">
<div class="col-sm-4"><label>Doctor Name:</label></div>
<div class="col-sm-4"><label><input type="text" class="textbox" name="Doctor_name"onkeypress="return isString(event)"></label></div>
</div>

<div class="row">
<div class="col-sm-4"><label>UserId:</label></div>
<div class="col-sm-4"><label><input type="text" class="textbox" name="user_id"></label></div>
</div>

<div class="row">
<div class="col-sm-4"><label>Doctor Address:</label></div>
<div class="col-sm-4"><label><input type="text" class="textbox" name="doctor_address"></label></div>
</div>

<div class="row">
<div class="col-sm-4"><label>Gender:</label></div>
<div class="col-sm-4"><label><input type="text" class="textbox" name="gender"onkeypress="return isString(event)"></label></div>
</div>

<div class="row">
<div class="col-sm-4"><label>Contact No:</label></div>
<div class="col-sm-4"><label><input type="text" class="textbox" name="contact_no"onkeypress="return isNumber(event)"maxlength="10"></label></div>
</div>

<div class="row">
<div class="col-sm-4"><label>Register No:</label></div>
<div class="col-sm-4"><label><input type="text" class="textbox" name="register_no"onkeypress="return isNumber(event)"></label></div>
</div>

<div class="row">
<div class="col-sm-4"><label>Date:</label></div>
<div class="col-sm-4"><label><input type="text" class="textbox" name="date"></label></div>
</div>
<input type="submit" class="button" value="Give Feedback" name="Submit">

</div>
</form>
</body>
</html>
