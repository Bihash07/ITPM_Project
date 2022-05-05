<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Hotel Legend's Kingdom</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="OS_css/OS_sportSearch.css" />
</head>
<body>
<jsp:include page="header.jsp" />


<br>

    	<a href="OtherServices.jsp"><img src="OS_images/arrow.png" alt="Snow" style="width:2%"></a>

  	<p> Due to the pandemic situation, we thought of maintain the crowded sports/game area by new rules. 
  	You have to reserve the preferred sport/game area at least 20-30 minutes earlier. 
  	Therefore Please help us in this situation by reserving a time before come.</p>
  	<h3>Your Safety is our Priority....</h3>
  	
  
	<br><br>
<div class="row"  >
	<div class="column">

		<form class="example" action="OSsearch" method="post" style="margin:auto;max-width:300px" >
 			<input type="text" name="sportR" placeholder=" Search by Name">
  			<button type="submit"><i class="fa fa-search"></i></button>
  			<br><br>
  			<p>Search for your previous reservations</p>
		</form>
		
		
		<br><br>
		
		<a href="OS_sportInsert.jsp" class="button">Reserve Now</a>
  	
  
  	</div>
  	
  	<div class="column">
  	<div class="sprtlist">
  	<h2>Available indoor and outdoor sports</h2>

		<ul>
		  <li>Indoor cycling</li>
		  <li>Squash</li>
		  <li>Billiard</li>
		  <li>Table tennis</li>
		  <li>Volleyball</li>
		</ul>  
		  	
  	</div>
  	
  	</div>
</div>


<br><br>
<br>


<jsp:include page="footer.jsp" />
</body>
</html>