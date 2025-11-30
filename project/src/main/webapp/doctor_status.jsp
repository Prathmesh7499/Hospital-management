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
         <script type="text/javascript" src="css/validation.js"></script> 
         <style><%@include file="css/doctor_status.css"%></style>
</head>
<body>
 <form name="doctor_status"action="doctor_status"method="post">
         <div class="whitediv">
            
                <div class="row">
                    <div class="col-sm-3"><label>Doctor Name</label></div>
                    <div class="col-sm-5"><input type="text" class="textbox" value="<%=session.getAttribute("name")%>" disabled=""></div>
                </div>
                
                
                 <div class="row">
                    <div class="col-sm-3"><label>Email Id</label></div>
                    <div class="col-sm-5"><input type="text" class="textbox" value="<%=session.getAttribute("Userid")%>"disabled=""></div>
                </div>
                
                
                 <div class="row">
                    <div class="col-sm-3"><label>Speaciality</label></div>
                    <div class="col-sm-5"> <input class="textbox" name="Speaciality" value="<%=session.getAttribute("Speaciality")%>" disabled=""></div>
                       
                </div>
             <div class="row">
                <div class="col-sm-3"><label>Status</label></div>
                <div class="col-sm-5"> <select class="textbox" name="status">
                        <option value=""></option>
                        <option value="Available">Available</option>
                        <option value="Not Available">Not Available</option>
                    </select>
                </div> 
             </div> 
             
               <div class="row">
                <div class="col-sm-5"><input type="submit" class="button" value="Update" name="submit"></div>
                 <div class="col-sm-6"><input type="submit" class="button"value="cancle" name="submit"></div>
                
            </div>
         </div>   
        </form>
</body>
</html>