<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<title>Hotel Legend's Kingdom</title>

<link rel="stylesheet" type="text/css" href="OS_css/OtherServices.css" />



</head>
<body>

<jsp:include page="main/header.jsp" />

<br><br>
<div class="row"  >
	<div class="column">
		<p>Are you a tourist ?</p>
		<p>Do you need a guide ?</p>
	</div>
	
	<div class="column">
	<p>  </p>
		<img src="OS_images/arrows.png" alt="arrows" width="50px" height="50px">
	</div>
	
	<div class="column">
	<p>  </p>
		<a href="OS_guideInsert.jsp" class="button">Find Now</a>
	</div>
	
</div>
<br><br>

<div class="row"  >
	<div class="column">
	
		<p>Do you like to play sports ?</p>
	</div>
	
	<div class="column">
		<img src="OS_images/arrows.png" alt="arrows" width="50px" height="50px">
	</div>
	
	<div class="column">
		<a href="OS_sportSearch.jsp" class="button">Join Now</a>
	</div>
	
</div>

<br><br>
<div class="row"  >
	<div class="column">
	
		<p>Spa facility and Retail Store</p>
	</div>
	
	<div class="column">
		<img src="OS_images/arrows.png" alt="arrows" width="50px" height="50px">
	</div>
	
	<div class="column">
		<a href="Spa.jsp" class="button">Read More</a>
	</div>
	
</div>

<br><br>
<div class="row"  >
	<div class="column">
	
		<p>Please give us your valuable feedback ...</p>
	</div>
	
	<div class="column">
		<p> </p>
		<img src="OS_images/arrows.png" alt="arrows" width="50px" height="50px">
	</div>
	
	<div class="column">
		<p> </p>
		<a href="Feedback.jsp" class="button">Feedback</a>
	</div>
	
</div>


<br><br>
<div class="row"  >
	<div class="column">
	
		<p>Feedback and Summary Report</p>
	</div>
	
	<div class="column">
	<p> </p>
		<img src="OS_images/arrows.png" alt="arrows" width="50px" height="50px">
	</div>
	
	<div class="column">
	<p> </p>
		<a href="Report.jsp" class="button">View Here</a>
	</div>
	
	
	
</div>

<br><br>



<jsp:include page="main/footer.jsp" />
</body>
</html>