<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Legend's Kingdom</title>
<link rel="stylesheet" type="text/css" href="OS_css/OS_sportInsert.css" />



</head>
<body>
<jsp:include page="main/header.jsp" />
<br><br>

<%
	String name = request.getParameter("rdname");
	String cnumber = request.getParameter("rdcon");
	String date = request.getParameter("rddate");
	String time = request.getParameter("rdtime");
	String nomem = request.getParameter("rdmem");
	String remarks = request.getParameter("rdrem");
	String ground = request.getParameter("rdgnd");
	String other = request.getParameter("rdos");
	String pool = request.getParameter("rdpool");
%>


<div class="row">
	<div class ="colomn">
<br>
 
	<h3>You can delete your sport-area reservation here...</h3>
   </div>
   </div>




<br><br>
<div class ="form">
   <div class = "container">
   		<div class ="title"> Delete Form </div>
   		
   			<form action ="OSdelete" method="post">
   			
		   				<div class="user-details">
		   					<div class ="input-box">
		   						<span class = "details"> Your Name</span>
		   						<input type="text" id="yname" name="yname" style="color:red" value="<%=name%>" readonly>
		   						
		   					</div>
		   				
		   					<div class ="input-box">
		   						<span class = "details"> Contact Number</span>
		   						<input type="tel" id="cno" name="cno" style="color:red" value="<%=cnumber %>" readonly >
		   						
		   					</div>
		   					
		   					<div class ="input-box">
		   						<span class = "details"> Date</span>
		   						<input type="date" id="date" name="date" style="color:red" value="<%=date %>" readonly >
		   						
		   					</div>
		   					
		   					<div class ="input-box">
		   						<span class = "details"> Time</span>
		   						<input type="time" id="time" name="time" style="color:red" value="<%=time %>" readonly >
		   						
		   					</div>
		   					
		   					<div class ="input-box">
		   						<span class = "details"> Number of members</span>
		   						<input type="number" id="mem" name="mem" style="color:red" value="<%=nomem %>" readonly >
		   						
		   					</div>
		   					
		   					<div class ="input-box">
		   						<span class = "details"> Remarks</span>
		   						<input type="text" id="remarks" name="remarks" style="color:red" value="<%=remarks %>"  readonly>
		   						
		   					</div>
		   					
		   					<div class ="input-box">
		   						<span class = "details">Do you want to reserve Legend's ground ?</span>
		   						<input type="text" id="ground" name="ground" style="color:red" value="<%=ground %>" readonly >
		   						
		   					</div>
		   					<div class ="input-box">
		   						<span class = "details">Other sports</span>
		   						<input type="text" id="other"  name="other" style="color:red" value="<%=other %>"  readonly>
		   						
		   					</div>
		   					
		   					<div class ="input-box">
		   						<span class = "details">Do you want to reserve Legend's pool ?</span>
		   						<input type="text" id="pool" name="pool" style="color:red" value="<%=pool %>" readonly >
		   						
		   					</div>
		   					
		   					
		   					<div class ="button">
		   						<input type="submit" value="Delete">
		   				
		   					</div>
		   					
		   					
		   				
</div>
</form>
</div>
</div>
<br><br>

<jsp:include page="main/footer.jsp" />
</body>
</html>