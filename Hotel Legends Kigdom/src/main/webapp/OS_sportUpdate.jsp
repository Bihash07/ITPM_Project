<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Legend's Kingdom</title>
<link rel="stylesheet" type="text/css" href="OS_css/OS_sportInsert.css" />

<!-- Import validation -->
<script type="text/javascript" src="OS_js/validation.js"></script>

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
 
	<h3>Do you want to update any data ?</h3>
   </div>
   </div>




<br><br>
<div class ="form">
   <div class = "container">
   		<div class ="title"> Update Form </div>
   		
   			<form action ="OSupdate" method="post" onsubmit="return validation()">
   			
		   				<div class="user-details">
		   					<div class ="input-box">
		   						<span class = "details"> Your Name</span>
		   						<input type="text" id="yname" name="yname" style="color:blue" value="<%=name%>" ><br>
		   						<span id="yn" style="color:red"></span> 
		   					</div>
		   				
		   					<div class ="input-box">
		   						<span class = "details"> Contact Number</span>
		   						<input type="tel" id="cno" name="cno" style="color:blue" value="<%=cnumber %>"  ><br>
		   						<span id="cn" style="color:red"></span>
		   					</div>
		   					
		   					<div class ="input-box">
		   						<span class = "details"> Date</span>
		   						<input type="date" id="date" name="date" style="color:blue" value="<%=date %>"  ><br>
		   						<span id="dt" style="color:red"></span>
		   					</div>
		   					
		   					<div class ="input-box">
		   						<span class = "details"> Time</span>
		   						<input type="time" id="time" name="time" style="color:blue" value="<%=time %>"  ><br>
		   						<span id="ti" style="color:red"></span>
		   					</div>
		   					
		   					<div class ="input-box">
		   						<span class = "details"> Number of members</span>
		   						<input type="number" id="mem" name="mem" style="color:blue" value="<%=nomem %>"  ><br>
		   						<span id="nom" style="color:red"></span>
		   					</div>
		   					
		   					<div class ="input-box">
		   						<span class = "details"> Remarks</span>
		   						<input type="text" id="remarks" name="remarks" style="color:blue" value="<%=remarks %>"  >
		   						
		   					</div>
		   					
		   					<div class ="input-box">
		   						<span class = "details">Do you want to reserve Legend's ground ?</span>
		   						<input type="text" id="ground" name="ground" style="color:blue" value="<%=ground %>"  ><br>
		   						<span id="gd" style="color:red"></span>
		   					</div>
		   					<div class ="input-box">
		   						<span class = "details">Other sports</span>
		   						<input type="text" id="other"  name="other" style="color:blue" value="<%=other %>"  ><br>
		   						<span id="os" style="color:red"></span>
		   					</div>
		   					
		   					<div class ="input-box">
		   						<span class = "details">Do you want to reserve Legend's pool ?</span>
		   						<input type="text" id="pool" name="pool" style="color:blue" value="<%=pool %>"  ><br>
		   						<span id="pl" style="color:red"></span>
		   					</div>
		   					
		   					
		   					<div class ="button">
		   						<input type="submit" value="Update">
		   				
		   					</div>
		   				
</div>
</form>
</div>
</div>
<br><br>
<jsp:include page="main/footer.jsp" />

</body>
</html>