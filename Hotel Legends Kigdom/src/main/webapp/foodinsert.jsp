<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="main/header.jsp" />
<style>
.button:hover {
  background-color: #555;
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
	<center>
</head>
	<h1>Food Inserting</h1>

		<form  name="myForm" action="insertfoodservlet" method="post" >
		<br>
		<p style="color:"black;",style="font-size:20px;">Food name</p><br><input type="text" name="foodname"><br>
		<p style="color:"black;",style="font-size:20px;">Food type</p><br><input type="text" name="foodtype"><br>
		<p style="color:"black;",style="font-size:20px;">Quantity</p><br><input type="text" name="quantity"><br>
		<p style="color:"black;",style="font-size:20px;">price (RS)</p><br><input type="text" name="price"><br>
		
		<br>
		<br>
		<div class ="myDiv">
	 <button onclick="document.location='search.jsp'">Insert Food</button>	
		</div>
		</form>
</center>
<jsp:include page="main/footer.jsp" />

</body>
</html>