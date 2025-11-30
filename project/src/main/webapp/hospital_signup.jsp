<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"type="text/css"href="css/bootstrap.css">
<style><%@ include file="css/user_signup.css" %></style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<form action="hospital_signup" method="post">
<div class="whitediv">

<div class="row">
<div class="col-sm-2"><i class="fa fa-user" style="font-size:35px; margin-left:40px;margin-top:28px"></i></div>
<div class="col-sm-4"><label>FULL NAME:</label></div>
<div class="col-sm-4"><label><input type="text" class="textbox" name="full_name"></label></div>
</div>


<div class="row">
<div class="col-sm-2"><i class="fa fa-envelope" style="font-size:35px; margin-left:40px; margin-top:28px"></i></div>
<div class="col-sm-4"><label>Email Id:</label></div>
<div class="col-sm-4"><label><input type="text" class="textbox" name="email_id"></label></div>
</div>



<div class="row">
<div class="col-sm-2"><i class="fa fa-phone" style="font-size:35px; margin-left:40px;margin-top:28px"></i></div>
<div class="col-sm-4"><label>Contact Number:</label></div>
<div class="col-sm-4"><label><input type="text" class="textbox" name="contact_number"></label></div>
</div>


<div class="row">
<div class="col-sm-2"><i class="fa fa-key" style="font-size:35px; margin-left:40px;margin-top:28px"></i></div>
<div class="col-sm-4"><label>Password:</label></div>
<div class="col-sm-4"><label><input type="password" class="textbox" name="password"></label></div>
</div>


<div class="row">
<div class="col-sm-2"><i class="fa fa-copy" style="font-size:35px; margin-left:40px;margin-top:28px"></i></div>
<div class="col-sm-4"><label>Re-Password:</label></div>
<div class="col-sm-4"><label><input type="password" class="textbox" name="re_password"></label></div>
</div>

<div class="row">
<div class="col-sm-6"><input type="submit" value="Cancel" class="button" name="submit" style="margin-left:40px"></div>
<div class="col-sm-6"><input type="submit" value="Login" class="button" name="submit"></div>
</div>

</div>
</form>

</body>
</html>