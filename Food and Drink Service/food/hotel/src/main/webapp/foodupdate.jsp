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









</style>
<jsp:include page="header.jsp" />

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
		<form action="updatefoodservlet" method="post">
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
		<p style="color:"black;",style="font-size:20px;">Food Name<input type="text" name="foodname"value="<%=foodname %>" ></p><br>
		<p style="color:"black;",style="font-size:20px;">Food type<input type="text" name="foodtype" value="<%=foodtype %>" ></p><br>
		<p style="color:"black;",style="font-size:20px;">Quantity<input type="text" name="quantity" value="<%=quantity %>" ></p><br>
		<p style="color:"black;",style="font-size:20px;">Price (RS)<input type="text" name="price" value="<%=price %>" ></p><br>
		
		
		
		<br>
		<br>
	<input type="submit" name="submit" value="foodupdate" >
		</form>
	</center>

	

<jsp:include page="footer.jsp" />

</body>
</html>