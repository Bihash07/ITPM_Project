<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="main/header.jsp" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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






</style>
</head>
<body>
	 
	<%
		String idfood=request.getParameter("idfood");
		String foodname=request.getParameter("foodname");
		String foodtype=request.getParameter("foodtype");
		String quantity=request.getParameter("quantity");
		String price=request.getParameter("price");
	%>
	
	
	<br>
	<br>
	<br>
	<br>
	<center>
	<h1>Food Delete</h1>
	
		<form action="deletefoodservlet" method="post">
		<br>
		<p style="color:"black;",style="font-size:20px;">Food id</p><input type="text" name="idfood" value="<%=request.getParameter("id") %>" readonly><br>
		<p style="color:"black;",style="font-size:20px;">Food name</p><input type="text" name="foodname" value="<%=foodname %>" readonly><br>
		<p style="color:"black;",style="font-size:20px;">Food type</p><input type="text" name="foodtype" value="<%=foodtype %>" readonly><br>
		<p style="color:"black;",style="font-size:20px;">Quantity</p><input type="text" name="quantity" value="<%=quantity %>"readonly ><br>
		<p style="color:"black;",style="font-size:20px;">Price (RS)</p><input type="text" name="price" value="<%=price %>" readonly><br>
		
		
		<br>
	<input type="submit" name="submit" value="fooddelete " >
  
		</form>
	</center>
	 
	
<jsp:include page="main/footer.jsp" />
</body>
</html>