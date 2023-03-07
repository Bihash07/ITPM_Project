<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Legend's Kingdom</title>

<style>

.row {
  display: flex;
}


.column {
  
  padding:0;
  margin:5px 5px 5px;
  width : 600px ;
 
}

.clearfix {
  border: 3px solid #f5b833;
  padding: 15px;
  background-color:#f0e7d5;
  
}

.img1 {
  float: right;
}

.img2 {
  float: left;
}

.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

p.p1 {
  
  font-size:18px;
}

p.p2 {
  text-indent: 50px;
  font-size:18px;
  
}

p.p3 {
  text-indent: 100px;
  font-size:18px;
 
}

.slideshow-container {
  
  position: relative;
  margin: auto;
}
.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

.clearfix dl dt{
text-indent: 50px;
font-size:17px;

}


</style>

</head>
<body>

<jsp:include page="main/header.jsp" />
<br>
<div class="row">
	<div class ="colomn">
<a href="OtherServices.jsp"><img src="OS_images/arrow.png" style="width:5%"></a>

   </div>
   </div>
   <br>
<div class="clearfix">

	<div class="slideshow-container">
	
		<div class="mySlides fade">
	  		<img class="img1" src="OS_images/spa1.jpeg" alt="Pineapple" width="475" height="350">
	  	</div>
	  	
	  	<div class="mySlides fade">
	  		<img class="img1" src="OS_images/spa2.jpg" alt="Pineapple" width="475" height="350">
	  	</div>
	  	
	  	<div class="mySlides fade">
	  		<img class="img1" src="OS_images/spa3.jpg" alt="Pineapple" width="475" height="350">
	  	</div>
	  	
	  	<div class="mySlides fade">
	  		<img class="img1" src="OS_images/spa4.png" alt="Pineapple" width="475" height="350">
	  	</div>
	  	
	  	<div class="mySlides fade">
	  		<img class="img1" src="OS_images/spa5.jpg" alt="Pineapple" width="475" height="350">
	  	</div>
	  	
	  </div>
	
	<h3>Do you have any of the following ?</h3>
	<dl>
  		<dt>Stress or Depression</dt>
  		<dt>Migraine or Headaches</dt>
  		<dt>Sport injuries</dt>
  		<dt>Discomfort during your pregnancy</dt>	
  	</dl>
  	<br>
  	
  	<p class="p1">If you have any of them, you can join with our legend's Spa to have a better day.
  	We have treatments to improve your health and mental problems. We have separate services for males and females.
  	Also, you can be a permanent customer of our country-wide service.</p>
  	
  	<p class="p1">You can get more information about our service from the reception (including prices) or</p> 
  	<p class="p1">you can contact one of our members.  </p>
  	
  	<br>
  	
	<p class="p2" >077-2385564 - Ms.Amali </p>
	<p class="p2">071-7745001 - Mr.Kasun </p>
		  	
  	
  	
 </div>

<br><br>



<div class="clearfix">

	<div class="slideshow-container">
	
		<div class="mySlides2 fade">
	  		<img class="img2" src="OS_images/store1.jpg" alt="Pineapple" width="450" height="290">
	  	</div>
	
		<div class="mySlides2 fade">
	  		<img class="img2" src="OS_images/store2.jpg" alt="Pineapple" width="450" height="290">
	  	</div>
	  	
	  	<div class="mySlides2 fade">
	  		<img class="img2" src="OS_images/store3.jpg" alt="Pineapple" width="450" height="290">
	  	</div>
	  	
	  	<div class="mySlides2 fade">
	  		<img class="img2" src="OS_images/store4.jpg" alt="Pineapple" width="450" height="290">
	  	</div>
  
  
  </div>
  
  <p class="p2">We have 2 Retail Stores which you can buy essential things or memories as per your</p>
  <p class="p2">requirement. We have several items in several brands(including oversea's) where</p>
  <p class="p2">visitors can find everything from sunscreen to designer clothes. The first store is</p>
  <p class="p2">located at the hotel reception and another store near the legend's pool which you</p>
   <p class="p2">can buy pool essentials. </p>
  <br>
   <p class="p2">If you want to know whether any item you want is available in the store, </p>
   <p class="p2"> you can contact the following store keepers.</p>
   	  	<br>
		  		<p class="p3">081-7685554(in the reception) - Mr.Sandun </p>
		  		<p class="p3">081-7685556(near legend's pool) - Mr.Nihal </p>
		  	
		  	

 
</div>

<br><br>



<jsp:include page="main/footer.jsp" />


<script>
let slideIndex = 0;
showSlides1();
showSlides2();

function showSlides1() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    

  slides[slideIndex-1].style.display = "block";  
  
  setTimeout(showSlides1, 2000); // Change image every 2 seconds
}

function showSlides2() {
	  let i;
	  let slides = document.getElementsByClassName("mySlides2");
	  
	  for (i = 0; i < slides.length; i++) {
	    slides[i].style.display = "none";  
	  }
	  slideIndex++;
	  if (slideIndex > slides.length) {slideIndex = 1}    

	  slides[slideIndex-1].style.display = "block";  
	  
	  setTimeout(showSlides2, 2000); // Change image every 2 seconds
	}

</script>


</body>
</html>