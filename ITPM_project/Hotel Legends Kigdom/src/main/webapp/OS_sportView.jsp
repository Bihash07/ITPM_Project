<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Hotel Legend's Kingdom</title>

<link rel="stylesheet" type="text/css" href="OS_css/OS_sportView.css" />
</head>
<body>
<jsp:include page="main/header.jsp" />
<br><br><br>

<table id="customers">
<c:forEach var="rd" items= "${RDetails}" >


		<c:set var="rdname" value="${rd.name}"/>
		<c:set var="rdcon" value="${rd.contact}"/>
		<c:set var="rddate" value="${rd.date}"/>
		<c:set var="rdtime" value="${rd.time}"/>
		<c:set var="rdmem" value="${rd.members}"/>
		<c:set var="rdrem" value="${rd.remarks}"/>
		<c:set var="rdgnd" value="${rd.ground}"/>
		<c:set var="rdos" value="${rd.other}"/>
		<c:set var="rdpool" value="${rd.pool}"/>
	
	
	
		<tr>
			<th>Your Name</th>
			<th>Contact Number</th>
			<th>Date</th>
			<th>Time</th>
			<th>No of Members</th>
			<th>Remarks</th>
			<th>Legend's Ground</th>
			<th>Other Sports</th>
			<th>Legend's Pool</th>
			
		</tr>
		
		<tr>
			<td>${rd.name}</td>
			<td>${rd.contact}</td>
			<td>${rd.date}</td>
			<td>${rd.time}</td>
			<td>${rd.members}</td>
			<td>${rd.remarks}</td>
			<td>${rd.ground}</td>
			<td>${rd.other}</td>
			<td>${rd.pool}</td>
		</tr>
	
	

</c:forEach>
</table>
<br><br>

	<c:url value="OS_sportUpdate.jsp" var="rdupdate">
		<c:param name="rdname" value="${rdname}"/>
		<c:param name="rdcon" value="${rdcon}"/>
		<c:param name="rddate" value="${rddate}"/>
		<c:param name="rdtime" value="${rdtime}"/>
		<c:param name="rdmem" value="${rdmem}"/>
		<c:param name="rdrem" value="${rdrem}"/>
		<c:param name="rdgnd" value="${rdgnd}"/>
		<c:param name="rdos" value="${rdos}"/>
		<c:param name="rdpool" value="${rdpool}"/>
	</c:url>


	<div class="ab">
		<a href="${rdupdate}">
		<input type = "button" name="update" value="Update Reservation" >
		</a>
		
	</div>	
		
		
	<c:url value="OS_sportDelete.jsp" var="rddelete">
		<c:param name="rdname" value="${rdname}"/>
		<c:param name="rdcon" value="${rdcon}"/>
		<c:param name="rddate" value="${rddate}"/>
		<c:param name="rdtime" value="${rdtime}"/>
		<c:param name="rdmem" value="${rdmem}"/>
		<c:param name="rdrem" value="${rdrem}"/>
		<c:param name="rdgnd" value="${rdgnd}"/>
		<c:param name="rdos" value="${rdos}"/>
		<c:param name="rdpool" value="${rdpool}"/>
	</c:url>
	
		<div class="cd">
		<a href="${rddelete}">
		<input type = "button" name="delete" value="Delete Reservation" >
		</a>
		</div>
		

<br><br><br>
<jsp:include page="main/footer.jsp" />
</body>
</html>