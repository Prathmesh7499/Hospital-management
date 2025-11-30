<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="css/validation.js"></script> 
       <style><%@ include file="css/user_signup.css" %></style>
     
       
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<form action="user_signup" method="post">

<div class="whitediv">
<br>
 <center> <h2 style="font-family: Times new roman">SignUp...</h2></center>
<div class="row">
<div class="col-sm-2"><br><i class="fa fa-user" style="font-size:35px; margin-left:40px;margin-top:28px"></i></div>
<div class="col-sm-4"><br><br><label>Full Name:</label></div>
<div class="col-sm-4"><label><input type="text" class="textbox" name="full_name"onkeypress="return isString(event)"></label></div>
</div>


<div class="row">
<div class="col-sm-2"><br><i class="fa fa-envelope" style="font-size:35px; margin-left:40px; margin-top:28px"></i></div>
<div class="col-sm-4"><br><br><label>Email Id:</label></div>
<div class="col-sm-4"><label><input type="email" class="textbox" name="email_id"onkeypress="return isAlphanumric(event)" ></label></div>
</div>



<div class="row">
<div class="col-sm-2"><br><i class="fa fa-phone" style="font-size:35px; margin-left:40px;margin-top:28px"></i></div>
<div class="col-sm-4"><br><br><label>Contact Number:</label></div>
<div class="col-sm-4"><label><input type="text" class="textbox" name="contact_number"onkeypress="return isNumber(event)" maxlength="10"></label></div>
</div>


<div class="row">
<div class="col-sm-2"><br><i class="fa fa-key" style="font-size:35px; margin-left:40px;margin-top:28px"></i></div>
<div class="col-sm-4"><br><br><label>Password:</label></div>
<div class="col-sm-4"><label><input type="password" class="textbox" name="password"onkeypress="return isAlphanumric(event)"></label></div>
</div>


<div class="row">
<div class="col-sm-2"><br><br><i class="fa fa-copy" style="font-size:35px; margin-left:40px;margin-top:28px"></i></div>
<div class="col-sm-4"><br><br><label>Re-Password:</label></div>
<div class="col-sm-4"><label><input type="password" class="textbox" name="re_password"onkeypress="return isAlphanumric(event)"></label></div>
</div>
<br>
<div class="row">
<div class="col-sm-6"><input type="submit" value="Signup" class="button" name="submit"></div>
<div class="col-sm-6"><input type="submit" value="Login" class="button" name="submit"></div>
</div>

</div>
<br>
</form>
</body>
</html>