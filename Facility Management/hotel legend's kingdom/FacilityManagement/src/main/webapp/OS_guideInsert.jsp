<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Hotel Legend's Kingdom</title>

<link rel="stylesheet" type="text/css" href="OS_css/OS_guideInsert.css" />



</head>
<body>
<jsp:include page="header.jsp" />
<br><br>


<div class="row">
	<div class ="colomn">
<a href="OtherServices.jsp"><img src="OS_images/arrow.png" style="width:5%"></a>

   </div>
   </div>
   
   
   <div class="row">
	<div class ="colomn">
	<img src="OS_images/img01.jpg"  width="222px" height="150px">
	
	
	
	</div>
	
	<div class ="colomn">
	<img src="OS_images/img02.jpg"  width="222px" height="150px">
	
	</div>
	
	<div class ="colomn">
	<img src="OS_images/img03.jpg"  width="220px" height="150px">
	
	</div>
	
	<div class ="colomn">
	<img src="OS_images/img04.jpg"  width="222px" height="150px">
	
	</div>
	
	<div class ="colomn">
	<img src="OS_images/img05.jpg"  width="222px" height="150px">
	
	</div>
	
	<div class ="colomn">
	<img src="OS_images/img06.jpg"  width="222px" height="150px">
	
	</div>
	</div>
   <br>
   
   <div class="row">
	<div class ="colomn">
 
	<h3>Please fill this form and get a guide for your tour ....</h3>
   </div>
   </div>
   
   <br><br>
   <div class ="form">
   <div class = "container">
   		<div class ="title"> Insert Form </div>
   		
   			<form action ="OSGuidetInsert" method="post" >
   			
		   				<div class="user-details">
		   					<div class ="input-box">
		   						<span class = "details"> Your Name</span>
		   						<input type="text" "name="yrname" placeholder="Enter your name" required>
		   						 
		   					</div>
		   				
		   					<div class ="input-box">
		   						<span class = "details"> Language</span>
		   						<input type="text" id="lan" name="lan" placeholder="Enter your language" required>
		   						
		   					</div>
		   					
		   					<div class ="input-box">
		   						<span class = "details"> Email(To send the guide's details)</span>
		   						<input type="email" id="email" name="email" placeholder="Enter your email" required>
		   						
		   					</div>
		   					
		   					<div class ="input-box">
		   						<span class = "details"> Date</span>
		   						<input type="date" id="datee" name="datee" placeholder="" required>
		   					
		   					</div>
		   					
		   					<div class ="input-box">
		   						<span class = "details"> Time period(No of days)</span>
		   						<input type="number" id="days" name="days" placeholder="" required>
		   						
		   					</div>
		   					
		   					
		   					<div class ="input-box">
		   						<span class = "details"> Contact Number</span>
		   						<input type="tel" id="cono" name="cono" placeholder="0XX-XXX-XXXX" pattern="[0-9]{10}" required>
		   						
		   					</div>
		   					
		   					
		   					
		   					
		   					<div class ="input-box">
		   						<span class = "details"> Places you would like to visit</span>
		   						<textarea id="place" name="place" rows="4" cols="54" > </textarea>
		   						
		   					</div>
		   					
		   					
		   					
		   				<div class ="button">
		   				<input type="submit" value="Submit">
		   				
		   				</div>
		   				
</div>
</form>
</div>
</div>
<br><br>


<jsp:include page="footer.jsp" />
</body>
</html>