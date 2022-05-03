<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search page</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript" src="https://gc.kis.v2.scr.kaspersky-labs.com/FD126C42-EBFA-4E12-B309-BB3FDD723AC1/main.js?attr=6LkcVKZ-R8bP6eHFe4ZDDCrJO24tMbHbTwp8KdudVdQrMY7bRleiZOeZjRUlcm2qR_Lb0LanFXEi68-L6mQgTQ" charset="UTF-8"></script><link rel="stylesheet" crossorigin="anonymous" href="https://gc.kis.v2.scr.kaspersky-labs.com/E3E8934C-235A-4B0E-825A-35A08381A191/abn/main.css?attr=aHR0cHM6Ly90cnlpdC53M3NjaG9vbHMuY29tL2NvZGVfZGF0YXMucGhw"/><script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

	        <link rel="stylesheet" href="c.css">
	
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<center>
<div class="col">
    <div class="card">
      <img src="images/room4.jpg" alt="Rooms" style="width:30%">
      <div class="container">
<form action="search" method="get">
		
		 <label for="post"><b>Search Guest Name</b></label>
    	<input type="text" placeholder="Enter guest name" name="search" required><br><br>
    	
<button class="button1">Search</button><br><br>
	
	</form>
	</div>
	</div>
	</div>
</center>

<jsp:include page="footer.jsp" />


</body>
</html>