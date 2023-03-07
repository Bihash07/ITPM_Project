<%@page import="javax.servlet.ServletContext" %>
<%@page import="javax.servlet.http.HttpServletRequest" %>
<%@page  import="java.sql.*" %>
<%@page import="com.DBConnect" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
<jsp:include page="main/header.jsp" />

<%
		String foodname=request.getParameter("foodname");
		String foodtype=request.getParameter("foodtype");
		String quantity=request.getParameter("quantity");
		String price=request.getParameter("price");
		
	
		try{
			 Connection con=DBConnect.getConnection();
			Statement stmt=con.createStatement();
			
			String sql ="select idfood from food where foodname='"+foodname+"'and foodType='"+foodtype+"'and quantity='"+quantity+"'and price='"+price+"'";
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				
				int id=rs.getInt(1);
	%>
	<body>
	<center>
	<h1>Food update</h1>
		<form action="updatefoodservlet" method="post" onsubmit="return validation()">
		<br>
		<p style="color:"black;",style="font-size:20px;">food id</p><input type="text" name="id"value="<%=id %>" readonly><br>
		<%
		
		application.setAttribute("id", id);
			}	
			
			
		con.close();
		}
		catch(Exception e){
			
			e.printStackTrace();
		}
		%>
		<p style="color:"black;",style="font-size:20px;">Food Name<input type="text" name="foodname"value="<%=foodname %>" readonly></p><br>
		
		<p style="color:"black;",style="font-size:20px;">Food type<input type="text" name="foodtype" value="<%=foodtype %>" readonly></p><br>
		<p style="color:"black;",style="font-size:20px;">Quantity<input type="text" name="quantity" id="qty"  value="<%=quantity %>" ></p><br>
		<span id="qty" style="color:red"></span>
		<p style="color:"black;",style="font-size:20px;">Price (RS)<input type="text" name="price" value="<%=price %>" ></p><br>
		
		
		
		<br>
		<br>
		<div class ="myDiv">
	 <button onclick="document.location='fooddelete.jsp'">Delete Food</button>	
		</div>
	
		</form>
	</center>

	

<jsp:include page="main/footer.jsp" />


<script type="text/javascript">
function validation(){
	var qty=document.getelementByID('quantity').value;
	if(quantity == ""){
		document.getElementById('qty').innerHTML="** Please fill the Quantity field<br>";
		return false;
		}
		if(quantity < "0"){
		document.getElementById('qty').innerHTML="** The quantity field should not contain negative values<br>";
		return false;
		}
		if(isNaN(phone)){
			document.getElementById('pn').innerHTML="**  should contain only digits<br>";
			return false;
			}
}
}
</script>
</body>
</html>



