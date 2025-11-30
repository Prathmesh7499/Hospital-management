<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="user_navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style><%@ include file="css/Book_Appointment.css" %></style>
<link rel="stylesheet"type="text/css"href="css/bootstrap.css">
<script type="text/javascript" src="css/validation.js"></script> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<form action="Book_Appointment" method="post">
<div class="whitediv">
<br>
<h2 style="font-family:Elephant;color: darkblue;">Book Appointment</h2>

<div class="row">
<div class="col-sm-6">
<div class="row">
<div class="col-sm-3"><label>FirstName</label></div>
<div class="col-sm-5"><input type="text" class="textbox" name="first_name"onkeypress="return isString(event)"></div>
</div>


<div class="row">
<div class="col-sm-3"><label>Gender</label>:</div>
<div class="col-sm-5"><select name="gender" class="textbox" onkeypress="return isString(event)">
<option>Male</option>
<option>Female</option>
</select></div>
</div>


<div class="row">
<div class="col-sm-3"><label>Date</label>:</div>
<div class="col-sm-5"><input type="date" class="textbox" name="date"></div>
</div>
</div>


<div class="col-sm-6">
<div class="row">
<div class="col-sm-4"><label>Last Name</label></div>
<div class="col-sm-5"><input type="text" class="textbox" name="last_name"onkeypress="return isString(event)"></div>	
</div>

<div class="row">
<div class="col-sm-4"><label>Contact No</label></div>
<div class="col-sm-5"><input type="text" class="textbox" name="contact_no"onkeypress="return isNumber(event)"maxlength="10"></div>
</div>

<div class="row">
<div class="col-sm-4"><label>Blood Group</label></div>
<div class="col-sm-5"><input type="text" class="textbox" name="blood_group"></div>
</div>
</div>
</div>
<br>
<div class="row">

<div class="row">
<div class="col-sm-2"><label style="padding-top:10px;margin-left: 10px  ">Address</label></div>
<div class="col-sm-5"><input type="text" style="height:40px; width:650px""></div>
</div>
<div class="row">
<div class="col-sm-6"><input type="text" class="textbox" style="margin-left:142px" placeholder="enter zip code"></div>
<div class="col-sm-6"><input type="text" class="textbox" style="margin-left:10px"></div>
</div>
</div>

<br>




<br>
<div class="row">
<div class="col-sm-6">
<div class="row">
<div class="col-sm-3"><label style="padding-left:30px">Email</label></div>
<div class="col-sm-5"><input type="text" class="textbox" name="email"onkeypress="return isAlphanumrics(event)" style="margin-left:35px"></div>	
</div>


</div>

<div class="col-sm-6">

<div class="row">
<div class="col-sm-3"><label style="padding-left:12px">Doctor Name</label></div>
<div class="col-sm-5"><input type="text" class="textbox" name="doctor_name" onkeypress="return isString(event)"style="margin-left: 45px" value="<%=session.getAttribute("Doctor_name")%>" disabled="disabled"></div>	
</div>

</div>

</div>
<br>
<div class="row">
<div class="col-sm-6">
<div class="row">
<div class="col-sm-3"><label style="padding-left:30px">Disease</label></div>
<div class="col-sm-5"><input type="text" class="textbox" name="Disease" onkeypress="return isString(event)"style="margin-left:35px"></div>	
</div>


</div>

<div class="col-sm-6">

<div class="row">
<div class="col-sm-3"><label style="padding-left:12px">Specialization</label></div>
<div class="col-sm-5"><input type="text" class="textbox" name="Specialization" onkeypress="return isString(event)"style="margin-left: 45px" value="<%=session.getAttribute("speaciality")%>" disabled="disabled"></div>	
</div>

</div>

</div>


<label style="padding-top:-40px; padding-left:50px">Have You Priviously attend our faculti</label>
<input type="radio" style="margin-left:20px"><label style="padding-left:1px">Yes</label>
<input type="radio" style="margin-left:20px"><label style="padding-left:1px">No</label>

<br>
<br>
<input type="submit" class="btn" value="Book_Appointment" name="submit">
</div>
</div>
</div>
<br>
</form>
</body>
</html>