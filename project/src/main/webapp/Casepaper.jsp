<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="user_navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style><%@ include file="css/Casepaper.css" %></style>
<link rel="stylesheet"type="text/css"href="css/bootstrap.css">
<script type="text/javascript" src="css/validation.js"></script> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<form action="Casepaper" method="post">
<div class="row">
<div class="col-sm-6">
<div class="whitediv">
<h2 style="font-family:Elephant">Sai Hospital Casepaper</h2>
<div class="row">
<div class="col-sm-4"><label>Rg.No:</label></div>
<div class="col-sm-4"><label><input type="text" class="textbox" name="rg_no"onkeypress="return isNumber(event)"></label></div>
</div>


<div class="row">
<div class="col-sm-4"><label>first Name:</label></div>
<div class="col-sm-4"><label><input type="text" class="textbox" name="first_name"onkeypress="return isString(event)"></label></div>
</div>

<div class="row">
<div class="col-sm-4"><label>last Name:</label></div>
<div class="col-sm-4"><label><input type="text" class="textbox" name="last_name"onkeypress="return isString(event)"></label></div>
</div>

<div class="row">
<div class="col-sm-4"><label>Age:</label></div>
<div class="col-sm-4"><label><input type="text" class="textbox" name="age"onkeypress="return isNumber(event)"></label></div>
</div>

<div class="row">
<div class="col-sm-4"><label>Contact Number:</label></div>
<div class="col-sm-4"><label><input type="text" class="textbox" name="contact_number"onkeypress="return isNumber(event)"maxlength="10"></label></div>
</div>

<div class="row">
<div class="col-sm-4"><label>Gender:</label></div>
<div class="col-sm-4"><label><input type="text" class="textbox" name="gender"onkeypress="return isString(event)"></label></div>
</div>

<div class="row">
<div class="col-sm-4"><label>Disease:</label></div>
<div class="col-sm-4"><label><input type="text" class="textbox" name="Disease"onkeypress="return isString(event)"></label></div>
</div>


<div class="row">
<div class="col-sm-4"><label>Date Of Birth:</label></div>
<div class="col-sm-4"><label><input type="date" class="textbox" name="date_of_birth"onkeypress="return isNumber(event)"></label></div>
</div>

<div class="row">
<div class="col-sm-4"><label>Regisration Date:</label></div>
<div class="col-sm-4"><label><input type="date" class="textbox" name="regisration_date"onkeypress="return isNumber(event)"></label></div>
</div>

<input type="submit" class="button" value="Submit" name="submit">
</div>
</div>

</form>
</body>
</html>