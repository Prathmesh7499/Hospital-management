<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style><%@include file="css/Report.css"%></style>
<link rel="stylesheet"type="text/css"href="css/bootstrap.css">
</head>


<body>
<form action="Report_View.jsp" method="post">
<br></br>
	<div class="whitediv">
		<div class="row">
			<div class="col-sm-6">
				<br>
				<input type="submit" class="btn" value="User List" name="submit"><br>
				<input type="submit" class="btn" value="Add Doctor" name="submit"><br>
				<input type="submit" class="btn" value="Book Appoinment" name="submit"><br>
				<input type="submit" class="btn" value="Casepaper" name="submit"><br>
				<input type="submit" class="btn" value="Give Feedback" name="submit"><br>
				<input type="submit" class="btn" value="Payment" name="submit"><br>
			</div>
			
			<div class="col-sm-6">
				<br>
				<input type="text" class="btn" style="background-color: grey; border: 1px solid;"  name="id"><br>
				<input type="submit" class="btn" value="Id Wise Doctor" name="submit"><br>
				<input type="submit" class="btn" value="Id Wise Appoinment" name="submit"><br>
				
				<br>
				<input type="text" class="btn" style="background-color: grey; border: 1px solid;"  name="date"><br>
				<input type="submit" class="btn" value="Date Wise Appoinment" name="submit"><br>
				<input type="submit" class="btn" value="Date Wise Casepaper" name="submit"><br> 
			</div>
			
		</div>
	
		<br></br>
		
		 
	</div>
</form>
</body>
</html>
