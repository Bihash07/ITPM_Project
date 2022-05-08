<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>


	<meta charset="ISO-8859-1">
	<title>Retrieve page</title>

	
	 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	
	
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 50px solid purple;
		}
	</style>
</head>
<body>

 <jsp:include page="main/header.jsp"></jsp:include>

	<center> 
	 
	<table>
    <c:forEach var="res" items="${resDetails}">
	<c:set var="roomid" value="${res.roomid}"/>
	<c:set var="guestName" value="${res.guestName}"/>
	<c:set var="rooms" value="${res.rooms}"/>
	<c:set var="adults" value="${res.adults}"/>
	<c:set var="children" value="${res.children}"/>
		
	<tr>
		<td>Room ID</td>
		<td>${res.roomid}</td>
	</tr>
	<tr>
		<td>Guest Name</td>
		<td>${res.guestName}</td>
	</tr>
	<tr>
		<td>No. of rooms</td>
		<td>${res.rooms}</td>
	</tr>
	<tr>
		<td>No. of adults</td>
		<td>${res.adults}</td>
	</tr>
	<tr>
		<td>No.of children</td>
		<td>${res.children}</td>
	</tr>
	
	</c:forEach>
	</table>
	
	<c:url value="update.jsp" var="resupdate">
		<c:param name="roomid" value="${roomid}"/>
		<c:param name="guestName" value="${guestName}"/>
		<c:param name="rooms" value="${rooms}"/>
		<c:param name="adults" value="${adults}"/>
		<c:param name="children" value="${children}"/>
	</c:url>
	
	<a href="${resupdate}">
	<input class="btn btn-danger" type="button" name="update" value="Update Reservation Data"><br><br>
	</a>
	
	<br>
	<c:url value="delete.jsp" var="resdelete">
		<c:param name="roomid" value="${roomid}"/>
		<c:param name="guestName" value="${guestName}"/>
		<c:param name="rooms" value="${rooms}"/>
		<c:param name="adults" value="${adults}"/>
		<c:param name="children" value="${children}"/>
	</c:url>
	<a href="${resdelete}">
	<input class="btn btn-danger" type="button" name="delete" value="Delete Reservation Data">
	</a>
	
</center>	
	
	<jsp:include page="main/footer.jsp" />
	
	
</body>
</html>