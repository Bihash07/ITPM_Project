<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Legend's Kingdom</title>
<link rel="stylesheet" type="text/css" href="OS_css/OS_guideInsert.css" />

</head>
<body>
<jsp:include page="main/header.jsp" />
<br><br>
<div class="row">
	<div class ="colomn">
<a href="OtherServices.jsp"><img src="OS_images/arrow.png" style="width:5%"></a>

   </div>
   </div>

   
   <div class="row">
	<div class ="colomn">
 
	<h3>Please give us a feedback</h3>
   </div>
   </div>
   
   <br><br>
   <div class ="form">
   <div class = "container">
   		<div class ="title"> Feedback Form </div>
   		
   			<form action ="feedback" method="post" oninput="x.value=parseInt(a.value)">
   			
		   				<div class="user-details">
		   					<div class ="input-box">
		   						<span class = "details"> Your Name</span>
		   						<input type="text" name="name" placeholder="Enter your name" required>
		   					</div>
		   				
		   					<div class ="input-box">
		   						<span class = "details"> Your suggestions, concerns or feedback</span>
		   						<textarea name="feed" rows="4" cols="54" > </textarea>
		   					</div>
		   					
		   					<div class ="input-box">
		   						<span class = "details">How satisfied are you with your experience</span>
								<input type="range" id="a" value="50">  <output name="x" for="a"></output>
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