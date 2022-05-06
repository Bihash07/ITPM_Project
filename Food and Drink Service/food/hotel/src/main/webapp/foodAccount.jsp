<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp" />
<meta charset="ISO-8859-1">
<title>Food Account</title>
<style>
.button:hover {
 background-color: #555;
}
.button {
  padding: 15px 25px;
  font-size: 24px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #fca605;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #fca605}

.button:active {
  background-color: #fca605;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
.myDiv {
  padding: 15px 25px;
  font-size: 24px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #fca605;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #fca605}

.button:active {
  background-color: #fca605;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}





</style>
</head>
<center>
<body>

<table>


<c:forEach var="che" items="${cheDetails }">

<c:set var="idfood" value="${che.idfood}"/>
<c:set var="foodname" value="${che.foodname}"/>
<c:set var="foodtype" value="${che.foodtype}"/>
<c:set var="quantity" value="${che.quantity}"/>
<c:set var="price" value="${che.price}"/>
<tr>
	
	<td><p style="color:"black;",style="font-size:20px;"><center> food ID</center><br><input  type="text" name="idfood" value=${che.idfood}><br><br></td>
	<!--<td>${che.idfood}</td>  -->
</tr>

<tr>
	<td><p style="color:"black;",style="font-size:20px;"><center> food name</center><br><input type="text" name="foodname" value=${che.foodname}><br><br></td>
	<!--${che.foodname}</td>  -->
</tr>

<tr>
	<td><p style="color:"black;",style="font-size:20px;"><center> food type</center><br><input type="text" name="foodtype" value=${che.foodtype}><br><br></td>
	<!-- ${che.foodtype}</td> -->
</tr>
<tr>
	<td><p style="color:"black;",style="font-size:20px;"><center>  quantity</center><br><input type="text" name="quantity" value=${che.quantity}><br><br></td>
	<!--${che.quantity}</td>  -->
</tr>

<tr>
	<td><p style="color:"black;",style="font-size:20px;"><center>  price</center><br><input type="text" name="price" value=${che.price}><br><br></td>
	<!--${che.price}</td>  -->
</tr>

</c:forEach>
</table>

	<c:url value="foodupdate.jsp" var="cheupdate">
	<c:param name="idfood" value="${idfood}"/>
	<c:param name="foodname" value="${foodname}"/>
	<c:param name="foodtype" value="${foodtype}"/>
	<c:param name="quantity" value="${quantity}"/>
	<c:param name="price" value="${price}"/>

	
	</c:url>
	<br>
	<br>
	<div class ="myDiv">
	 <a href="${cheupdate}">
		<input type="button" name="update" value="foodupdate">
	</a>
		</div>
	
	  

	<br>
	
	<c:url value="fooddelete.jsp" var="chedelete">
	<c:param name="idfood" value="${idfood}"/>
	<c:param name="foodname" value="${foodname}"/>
	<c:param name="foodtype" value="${foodtype}"/>
	<c:param name="quantity" value="${quantity}"/>
	<c:param name="price" value="${price}"/>
	</c:url>
	
	<div class ="myDiv">
	 <a href="${chedelete}">
		<input type="button" name="delete" value="fooddelete">
	</a>
		</div>

	
<jsp:include page="footer.jsp" />	
</center>
</body>
</html>