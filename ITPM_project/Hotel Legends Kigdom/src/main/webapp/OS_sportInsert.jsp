<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Hotel Legend's Kingdom</title>

<link rel="stylesheet" type="text/css" href="OS_css/OS_sportInsert.css" />

<!-- Import validation -->
<script type="text/javascript" src="OS_js/validation.js"></script>

</head>
<body>
<jsp:include page="main/header.jsp" />

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
   		
   			<form action ="OSsportInsert" method="post" onsubmit="return validation()">
   			
		   				<div class="user-details">
		   					<div class ="input-box">
		   						<span class = "details"> Your Name</span>
		   						<input type="text" id="yname" name="yname" placeholder="Enter your name" ><br>
		   						<span id="yn" style="color:red"></span> 
		   					</div>
		   				
		   					<div class ="input-box">
		   						<span class = "details"> Contact Number</span>
		   						<input type="tel" id="cno" name="cno" placeholder="0XX-XXX-XXXX"  ><br>
		   						<span id="cn" style="color:red"></span>
		   					</div>
		   					
		   					<div class ="input-box">
		   						<span class = "details"> Date</span>
		   						<input type="date" id="date" name="date"  ><br>
		   						<span id="dt" style="color:red"></span>
		   					</div>
		   					
		   					<div class ="input-box">
		   						<span class = "details"> Time</span>
		   						<input type="time" id="time" name="time"  ><br>
		   						<span id="ti" style="color:red"></span>
		   					</div>
		   					
		   					<div class ="input-box">
		   						<span class = "details"> Number of members</span>
		   						<input type="number" id="mem" name="mem"  ><br>
		   						<span id="nom" style="color:red"></span>
		   					</div>
		   					
		   					<div class ="input-box">
		   						<span class = "details"> Remarks</span>
		   						<input type="text" id="remarks" name="remarks" placeholder="If more than 5 members" ><br>
		   						<span id="re" style="color:red"></span>
		   					</div>
		   					
		   					<div class ="input-box">
		   						<span class = "details">Do you want to reserve Legend's ground ?</span>
		   						<input type="text" id="ground" name="ground" placeholder="Type Yes or No only" ><br>
		   						<span id="gd" style="color:red"></span>
		   					</div>
		   					<div class ="input-box">
		   						<span class = "details">Other sports</span>
		   						<input type="text" id="other"  name="other" placeholder="Ex: Indoor cycling,Squash, etc.." ><br>
		   						<span id="os" style="color:red"></span>
		   					</div>
		   					
		   					<div class ="input-box">
		   						<span class = "details">Do you want to reserve Legend's pool ?</span>
		   						<input type="text" id="pool" name="pool" placeholder="Type Yes or No only" ><br>
		   						<span id="pl" style="color:red"></span>
		   					</div>
		   					
		   					
		   					<div class ="button">
		   						<input type="submit" value="Submit">
		   				
		   					</div>
		   				
</div>
</form>
</div>
</div>
<br><br>
 
<jsp:include page="main/footer.jsp" />
 

</body>
</html>
