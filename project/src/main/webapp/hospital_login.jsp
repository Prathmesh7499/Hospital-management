<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style><%@ include file="css/hospital_login.css" %></style>
<link rel="stylesheet"type="text/css"href="css/bootstrap.css">
<script type="text/javascript" src="css/validation.js"></script> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
<form action="hospital_login" method="post">
<div class="heading">
 <div class="row">
 <div class="col-sm-1">
          <img src="images/image1-removebg-preview.png" style="height:100px;">
          </div>
           <div class="col-sm-11"><h1 style="margin-left: 30px;font-family: Brush Script MT;font-size: 45px;border: yellow;text-shadow: 2px 2px #00d7c3;color:darkblue;">Kanya Hospital</h1>
           </div>
               </div>  
        </div>
 <div class="second">
  <br>
  <center> <h2 style="font-family: Times new roman">Doctor Login...</h2></center>
  <br><br>
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-3"><label>Email Id:</label></div>
<div class="col-sm-5"><input type="email" class="textbox" name="Email_Id"onkeypress="return isAlphanumric(event)"></div>
</div>

<br><br>
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-3"><label>Password:</label></div>
<div class="col-sm-5"><input type="password" class="textbox" name="Password"></div>
</div>
<br>
<label>We have Account</label><a href=""><h3>Signup</h3></a>
<div class="row">
<div class="col-sm-6"><input type="submit" class="button" value="Cancel" name="submit"></div>
<div class="col-sm-6"><input type="submit" class="button" value="LOGIN" name="submit"></div>
</div><br>
  </div>  
</form>
</body>
</html>