<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Delete page</title>
	
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


<jsp:include page="main/header.jsp"></jsp:include>



	<%
	    String roomid = request.getParameter("roomid");
		String guestName = request.getParameter("guestName");
		String rooms = request.getParameter("rooms");
		String adults = request.getParameter("adults");
		String children = request.getParameter("children");
		
	%>

<center>
<div class="col">
    <div class="card">
      <img src="images/room2.jpg" alt="Rooms" style="width:30%">
      <div class="container">
      <h1>Reservations Delete</h1>
     <center> 
	<form action="delete" method="get">
	<table>
	<tr>
			<td>ID</td>
			<td><input type="text" name="roomid" value="<%= roomid %>" readonly></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="guestName" value="<%= guestName %>" readonly></td>
		</tr>
		<tr>
		<td>Rooms</td>
		<td><input type="text" name="rooms" value="<%= rooms %>" readonly></td>
	</tr>
	<tr>
		<td>Adults</td>
		<td><input type="text" name="adults" value="<%= adults %>" readonly></td>
	</tr>
	<tr>
		<td>Children</td>
		<td><input type="text" name="children" value="<%= children %>" readonly></td>
	</tr>			
	</table>
	<br>
	<input  class="button1" type="submit" name="submit" value="Delete reservation Data">
		</form></center>
		
</div>
</center>
<jsp:include page="main/footer.jsp" />


</body>
</html>