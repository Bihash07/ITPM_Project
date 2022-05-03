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

 <jsp:include page="header.jsp"></jsp:include>

	<center> 
	 
	<table>
    <c:forEach var="cal" items="${calDetails}">
	<c:set var="dateid" value="${cal.dateid}"/>
	<c:set var="datepicker" value="${cal.datepicker}"/>
	<c:set var="datepicker1" value="${cal.datepicker1}"/>
			
	<tr>
		<td>Date ID</td>
		<td>${cal.dateid}</td>
	</tr>
	<tr>
		<td>Search-In Date</td>
		<td>${cal.datepicker}</td>
	</tr>
	<tr>
		<td>Search-Out Date</td>
		<td>${cal.datepicker1}</td>
	</tr>
	
	
	</c:forEach>
	</table>
	<%-- 
	<c:url value="update.jsp" var="resupdate">
		<c:param name="roomid" value="${roomid}"/>
		<c:param name="guestName" value="${guestName}"/>
		<c:param name="rooms" value="${rooms}"/>
		<c:param name="adults" value="${adults}"/>
		<c:param name="children" value="${children}"/>
	</c:url>
	
	<a href="${resupdate}">
	<input class="button1" type="button" name="update" value="Update Reservation Data"><br><br>
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
	<input class="button1" type="button" name="delete" value="Delete Reservation Data">
	</a>
	--%>
</center>	
	
	<jsp:include page="footer.jsp" />
	
	
</body>
</html>