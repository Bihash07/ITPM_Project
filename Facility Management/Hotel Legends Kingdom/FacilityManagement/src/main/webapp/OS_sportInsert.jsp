<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Legend's Kingdom</title>

<link rel="stylesheet" type="text/css" href="OS_css/OS_sportInsert.css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<jsp:include page="header.jsp" />
<br>
<div class="row">
	<div class ="colomn">
<a href="OS_sportSearch.jsp"><img src="OS_images/arrow.png" style="width:5%"></a>
 
	<h3>Please fill this form and have a legend's game experience ....</h3>
   </div>
   </div>
   <br><br>
   
   
   
   <div class ="form">
   <div class = "container">
   		<div class ="title"> Insert Form </div>
   		
   			<form action ="OSsportInsert" method="post">
   			
		   				<div class="user-details">
		   					<div class ="input-box">
		   						<span class = "details"> Your Name</span>
		   						<input type="text" name="yname" placeholder="Enter your name" required>
		   					</div>
		   				
		   					<div class ="input-box">
		   						<span class = "details"> Contact Number</span>
		   						<input type="tel" name="cno" placeholder="0XX-XXX-XXXX" pattern="[0-9]{10}" required>
		   					</div>
		   					
		   					
		   					<div class ="input-box">
		   						<span class = "details"> Date</span>
		   						<input type="date" name="date" placeholder="" required>
		   					</div>
		   					
		   					<div class ="input-box">
		   						<span class = "details"> Time</span>
		   						<input type="time" name="time" placeholder="" required>
		   					</div>
		   					
		   					
		   					<div class ="input-box">
		   						<span class = "details"> Number of members</span>
		   						<input type="number" name="mem" placeholder="" required>
		   					</div>
		   					
		   					
		   					<div class ="input-box">
		   						<span class = "details"> Remarks</span>
		   						<input type="text" name="remarks" placeholder="If more than 5 members" >
		   					</div>
		   				
		   					
		   					<div class ="input-box">
		   						<span class = "details">Do you want to reserve Legend's ground ?</span>
		   						<input type="text" name="ground" placeholder="Type Yes or No only" >
		   					</div>
		   					
		   					
		   					
		   					<div class ="input-box">
		   						<span class = "details">Other sports</span>
		   						<input type="text" name="other" placeholder="Ex: Indoor cycling,Squash, etc.." >
		   					</div>
		   					
		   					
		   					<div class ="input-box">
		   						<span class = "details">Do you want to reserve Legend's pool ?</span>
		   						<input type="text" name="pool" placeholder="Type Yes or No only" >
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
