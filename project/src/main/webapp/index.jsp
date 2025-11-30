<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <style><%@include file="css/index.css" %></style>
        <title>JSP Page</title>
    </head>
    <body>
        <form action="index" method="post">
       <div class="heading">
 <div class="row">
 <div class="col-sm-1">
          <img src="images/image1-removebg-preview.png" style="height:100px;">
          </div>
           <div class="col-sm-11"><h1 style="font-family: Brush Script MT;font-size: 45px;border: yellow;text-shadow: 2px 2px #00d7c3;color:darkblue;">Sai Hospital</h1>
           </div>
               </div>  
        </div>
       
  
<div class="slideshow-container">

<div class="mySlides fade">
  
  <img src="images/1.jpg" style="width:1250px; height: 550px; margin-top:-20px;">

</div>

<div class="mySlides fade">
  
  <img src="images/10.jpg" style="width:1250px; height: 550px;margin-top:-20px;">
  
</div>

<div class="mySlides fade">
  
  <img src="images/12.jpg" style="width:1250px; height: 550px;margin-top:-20px;">

</div>


<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 1500); // Change image every 2 seconds
}
</script>

</div>
        
        
        
  <div class="second">
  <center><label style="font-size:30px;">Logins</label></center>
   <div class="row"style="margin-top:30px;">
   <div class="col-sm-4">
    <img src="images/admin.jpg"style="height:300px;width:390px;margin-left:80px;">
    <input type="submit" name="submit" class="button"value="Admin Login"style="margin-left:100px;margin-top:-80px;">
       </div>
                   
    <div class="col-sm-4">
    <img src="images/15.jpg"style="height:300px;width:390px;margin-left:40px;">
     <input type="submit" name="submit" class="button"value="Doctor Login"style="margin-left:60px;margin-top:-80px;">
        </div>
         
    <div class="col-sm-4">
                <img src="images/user.jpg"style="height:300px;width:390px;">
                 <input type="submit" name="submit" class="button"value="Patient Login"style="margin-left:20px;margin-top:-80px;">
                   </div>   
               </div>
        </div>            
            <div class="third">
                <center><h2>Our Key Features</h2></center>
             <div class="row"style="margin-top:20px;s">
                 <div class="col-sm-4">
                     <img src="images/1.jpg"style="height:90px;width:90px;margin-left:440px;">	
                     <label style="margin-left:540px;margin-bottom:60px;;">Cardiogoly</label>
                 </div> 
                  <div class="col-sm-4">
                     <img src="images/2.jpg"style="height:90px;width:90px;margin-left:190px;">
                     <label style="margin-top:40px">Orthopadic</label>
                 </div> 
                  <div class="col-sm-4">
                     <img src="images/3.jpg"style="height:90px;width:90px;margin-left:-80px;">
                     <label>Neurologist</label>
                 </div> 
             </div>
                
              <div class="row">
                 <div class="col-sm-4">
                     <img src="images/9.jpg"style="height:90px;width:90px;margin-left:440px;">
                     <label style="margin-left:540px;margin-top:-120px;">OPD</label>
                 </div> 
                  <div class="col-sm-4">
                     <img src="images/6.jpg"style="height:90px;width:90px;margin-left:190px;">
                     <label style="margin-top:40px">High Quality Treatment</label>
                 </div> 
                  <div class="col-sm-4">
                     <img src="images/7.jpg"style="height:90px;width:90px;margin-left:-80px;">
                     <label>Service</label>
                 </div> 
             </div>   
         </div> 
       <div class="four">
         <center><label style="font-size:30px;">Our Gallery</label></center>
       <div class="row"style="margin-top:30px;">
               <div class="col-sm-4">
                <img src="images/9.jpg"style="height:280px;width:360px;margin-left:80px;">
               
               </div>
                   
           <div class="col-sm-4">
                <img src="images/7.jpg"style="height:280px;width:360px;margin-left:40px;">
                 
               </div>
             <div class="col-sm-4">
                <img src="images/5jpg.jpg"style="height:280px;width:360px;">
             
               </div>   
               </div>
       </div><br><br>
         <div class="row">
              <div class="col-sm-4">
                <img src="images/9.jpg"style="height:280px;width:360px;margin-left:80px;">
               
               </div>
                   
           <div class="col-sm-4">
                <img src="images/3.jpg"style="height:280px;width:360px;margin-left:40px;">
                 
               </div>
         
             <div class="col-sm-4">
                <img src="images/2.jpg"style="height:280px;width:360px;">
             
                   </div>   
         </div>
         
         <hr style="border:3px greenyellow solid; width: 90%;">
       <div class="inf">
            <label class="head">About Us</label>
       <div class="row">
           <div class="col-sm-5">
               <img src="images/1.jpg"style="height:280px;width:360px;margin-left:80px;">
           </div>
           <div class="col-sm-5">
               <p style="margin-top:30px;">Shree Hospital we take pride in the healthcare services we offer to patients suffering from Diabetes, heart problem,Brain problem and various other diseases. We are one of the best hospitals in Kalamboli, Kamothe, Kharghar, Panvel, Taloja, Navi Mumbai to provide the healthcare services. We are committed to achieve excellence in health care by providing the latest technology for diagnostic and therapeutic services with a pleasant ambience.

The 50 bedded multi-specialty hospital is ideally located on the Mumbai-Panvel Highway in Kalamboli (Navi Mumbai). Incorporating a team of highly qualified and committed consultants and paramedical staff, combined with state-of-art technology, Dr.Singh’s City Hospital ensures quality & affordable medical care to meet the demands of the society</p>
           </div>
              
        </div>
       </div>
         
         <div class="row" style="margin-top:40px;">
             <img src="images/9.jpg"style="height:350px;width:99%;margin:10px;">
             <div class="col-sm-6">
                 <img src="images/8.jpg"style="height:120px;margin-top:-450px;margin-left:70px;">
              
         </div>
         </div>
          <div class="ab" style="margin-left:970px">
               <label style="font-family:cooper black;font-size:40px;color:lightseagreen;">Contact Us</label><br>
                <label>91,Near bus Stand</label><br>
                <label>Urun-islampur,415409</label><br>
                <label>Contact-9876543210</label><br><br>
                
                <label style="margin-left:10px;color:greenyellow">Open.24 Hours</label>
          </div>
     
        </form>
    </body>
</html>
