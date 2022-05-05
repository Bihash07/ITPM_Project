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
<jsp:include page="header.jsp" />
<c:forEach var="rd" items= "${RDetails}" >

	${rd.name}
	${rd.contact}
	${rd.date}
	${rd.time}
	${rd.members}
	${rd.remarks}
	${rd.ground}
	${rd.other}
	${rd.pool}

</c:forEach>
<jsp:include page="footer.jsp" />
</body>
</html>