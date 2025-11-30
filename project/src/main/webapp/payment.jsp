<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"type="text/css"href="css/bootstrap.css">

</head>
<style>
body
{
background-color:bisque;
}
.div1
{
height:auto;
width:500px;
background-color:white;
margin-left:280px;
}
lab
{
font-size:50px;
padding-left:270px;
font-weight:10px;
font-style:Elephant;
}
</style>
<body>
<form action="payment" method="post">
<div class="div1" style="margin-top:100px">
            <h2>
               
                PAYMENT
            </h2>
            
   <label class="lab" style="padding-left:70px;font-size:40px;font-style:Elephant;">CasePaper Fee:200/-</label>
   <h4 style="padding-left:80px">CasePaper Validate Only 2 Month</h4>
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-6">
                <input type="radio" name="pay" onclick="myFunction()">
                &nbsp;
                <label style="font-size: 18px;">Credit/Debit</label> 
            </div>
        </div>
   
   <div id="creditform"  style="display: none;background-color:white;">
   <div class="row">
       <div class="col-sm-1"></div>
       
                <div class="col-sm-8">
                
                <label>Card Number</label>
    
                <input type="password" name="credit" placeholder="1234 5678 9012 3456" class="form-control" onkeypress="javascript:return isNumber(event)">
                </div>
   </div>           
       <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-8">
                
                    <label style=" margin-top: 7px;">Name On Card</label>
    
                    <input type="text" name="name" placeholder="Ex. John D'souza" class="form-control"  onkeypress="javascript:return isString(event)">
                </div>
       </div>
       <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-6">
                
                <label style=" margin-top: 7px;">Expiry Date</label>
    
                    <input type="date" name="expiry" class="form-control"  style="height:40px; width: 200px;">
                </div>
                      
                
                <div class="col-sm-2">
                
                <label style=" margin-top: 7px;">CVV</label>
    
                <input type="text" name="cvv" placeholder="* * *" class="form-control"  style="width: 150px;" maxlength="3" onkeypress="javascript:return isNumber(event)">
                </div>
                <br>
                
                
    <br>
               
            </div>
            <label style="padding-left:50px">Fee:</label>
            <input type="text" name="fee" placeholder="200/-" class="form-control"  style="width: 150px; margin-left:50px" >
            
        </div>
            <br>
            
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-5">
                 
                &nbsp;
                 
                
            </div>
        </div>
            <div id="netbank" style="display: none">
            
            <div class="row">
                
            
        
               
        </div>
            </div>
            <br>
        
            <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                <input type="submit" id="id" name="submit" value="PAY" class="btn btn">
                </div>
                <div class="col-sm-1"></div>
            </div>
            <br>
        </div>
        </div>
        </div>
        
        </form>
 <script>
function myFunction() {
     var y = document.getElementById("netbank");
     y.style.display="none";
  var x = document.getElementById("creditform");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
function net() {
    var y = document.getElementById("creditform");
     y.style.display="none";
  var x = document.getElementById("netbank");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
   
  }
}
function cod() {
    var x = document.getElementById("netbank");
    var y = document.getElementById("creditform");
     y.style.display="none";
 
    x.style.display = "none";
   
  }

</script>	
</form>
</body>
</html>