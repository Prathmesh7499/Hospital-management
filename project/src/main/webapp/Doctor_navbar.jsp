<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         <link rel="stylesheet" type="text/css" href="css/bootstrap.csss">
         <style><%@include file="css/Doctor_navbar.css" %></style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-red navbar-dark">
        <div class="wrapper">
          
        </div>
  <div class="container-fluid all-show">
   <a class="navbar-brand" href="#"> <img src="images/image1-removebg-preview.png" style="height:70px;"></a>
    <a class="navbar-brand" href="#">Sai Hospital<i class="fa fa-codepen"></i></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto mb-2 mb-lg-0">
      <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Doctor_homepage.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="appointment.jsp">Appointment</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Complete_Appointment.jsp">Complete Appointment</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="Feedback.jsp">Feedback</a>
        </li>
        
                 <li class="nav-item">
          <a class="nav-link" href="index.jsp">Logout</a>
        </li>
        
      </ul>
      
    </div>
  </div>
</nav>
</body>
</html>