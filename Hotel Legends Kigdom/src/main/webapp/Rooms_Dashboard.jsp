<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Management</title>

	<link rel="stylesheet" type="text/css" href="Rooms_Dashboard.css" />


 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript" src="https://gc.kis.v2.scr.kaspersky-labs.com/FD126C42-EBFA-4E12-B309-BB3FDD723AC1/main.js?attr=6LkcVKZ-R8bP6eHFe4ZDDCrJO24tMbHbTwp8KdudVdQrMY7bRleiZOeZjRUlcm2qR_Lb0LanFXEi68-L6mQgTQ" charset="UTF-8"></script><link rel="stylesheet" crossorigin="anonymous" href="https://gc.kis.v2.scr.kaspersky-labs.com/E3E8934C-235A-4B0E-825A-35A08381A191/abn/main.css?attr=aHR0cHM6Ly90cnlpdC53M3NjaG9vbHMuY29tL2NvZGVfZGF0YXMucGhw"/><script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

 <script>
  $( function() {
    $( "#datepicker" ).datepicker({ minDate: -20, maxDate: "+1M +15D" });
    $( "#datepicker1" ).datepicker({ minDate: -20, maxDate: "+1M +15D" });
  } );
  </script>


</head>
<body>

<jsp:include page="main/header.jsp"></jsp:include>

<form action="calenderSearch" method="get">
<center><p>Search-In: <input type="text" id="datepicker"> <a href=""><button type="button" class="btn btn-info">Search</button></a></p></center>
</form>

<center>
<form action="login.jsp" method="get">
<button type=submit name="submit" class="btn btn-success">MyAccount</button>
</form>
</center>

<br>
<br>

<div class="container">
  <img src="images/room2.jpg" alt="Snow" style="width:100%">
  <button class="btn">Book Now</button>
</div>
<br>
<div class="container">
  <img src="images/room1.jpg" alt="Snow" style="width:100%">
  <a href="CompleteBooking.jsp"><button class="btn">Book Now</button></a>
</div><br>



<jsp:include page="main/footer.jsp"></jsp:include>


</body>
</html>