<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
    
       <%
    	
    	if(request.getParameter("submit")!=null)
    	{
    		String aeid= request.getParameter("aeid");
    		String name = request.getParameter("name");
	     	String nic = request.getParameter("nic");
		    String email = request.getParameter("email");
    		String phone=request.getParameter("phone");
    		String type=request.getParameter("type");
    		String date=request.getParameter("date");
    		String guestno=request.getParameter("guestno");
    		String payment=request.getParameter("payment");
    		
    		Connection con;
    		PreparedStatement pst;
    		ResultSet rs;
    		
    		
    		Class.forName("com.mysql.jdbc.Driver");
    		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotellegendskingdom","root","Root123.");
    		pst = con.prepareStatement("update Awa_event set f_name =?,nic =?,email =?,phone =?,event_type =?,date =?,guestno =?,payment =? where ceid =?");
    		
    		pst.setString(1,name);
    		pst.setString(2,nic); 
    		pst.setString(3,email);
    		pst.setString(4,phone);
    		pst.setString(5,type); 	
    		pst.setString(6,date); 
    		pst.setString(7,guestno);
    		pst.setString(8,payment);
    		pst.setString(9,aeid);
    				
    		
    		pst.executeUpdate();
    		
    		%>
    		
    		
    		
    		
    		
    		
    		<script>
    		alert("Event Details was Successfully Updated!");
    		location.href = 'AwaEventsRead.jsp';
    		
    		</script>
    		    		
    		

    		
    		<%	
    	}
    
    %>
     
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Legend's Kingdom</title>
   <link href="logo.jpg" rel ="icon" type= "image/icon">
<link rel="stylesheet" href="css/style.css">

</head>
<body>


   <jsp:include page="main/header.jsp"/>  

<section class="home-section">
 <jsp:include page="main/sidebar.jsp"/>  
   
  <div class="container">
    <div class="title">Update the Event Details </div><br>
    <div class="content">
      <form action="#" method="post">
        <div class="user-details">
				
				
				<%
				
						Connection con;
			    		PreparedStatement pst;
			    		ResultSet rs;
			    		
			    		Class.forName("com.mysql.jdbc.Driver");
			    		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotellegendskingdom","root","Root123.");
						
			    		String aeid=request.getParameter("aeid"); 
						pst = con.prepareStatement("select * from Awa_event where aeid= ?");
						pst.setString(1,aeid);
			    		rs = pst.executeQuery();
			    		
			    		while(rs.next())
			    			
			    		{
			    		
			    			
				%>
				
			
			<div class="input-box">
                <span class="details">Event ID</span>
                <input type="text"  placeholder="Event Id" value="<%= rs.getString("aeid")%>|<%= rs.getString("f_name")%>" name="ceid" id="ceid" readonly required> 
             </div><br><br>
             <div class="input-box">
                <span class="details">Full Name</span>
                <input type="text" class="form-control" placeholder="Enter Your name" value="<%= rs.getString("f_name")%>" name="name" id="name" required> 
             </div>
             <div class="input-box">
                <span class="details">NIC No</span>
                <input type="text" class="form-control" placeholder="123456789v/1234567890" value="<%= rs.getString("nic")%>" name="nic" id="nic" pattern='^(?:19|20)?\d{2}(?:[0-35-8]\d\d(?<!(?:000|500|36[7-9]|3[7-9]\d|86[7-9]|8[7-9]\d)))\d{4}(?:[vVxX0-90-90-9])$' required> 
             </div>
             <div class="input-box">
                <span class="details">Email Address</span>
                <input type="email" class="form-control" placeholder="example@gmail.com" value="<%= rs.getString("email")%>" name="email" id="email" required> 
             </div>         
             <div class="input-box">
                <span class="details"> Phone no</span>
                <input type="tel" class="form-control" placeholder="+9400-0000-000 " value="<%= rs.getString("phone")%>" name="phone" id="phone" pattern="[0-9]{10}" required> 
             </div>
             <div class="input-box">
                <span class="details">Corporate event Type</span>
                <select class="form-select" name="type" id="type">
                      <option  value="<%= rs.getString("event_type")%>"><%= rs.getString("event_type")%></option>
                      <option>Select Award event Type</option>
                      <option>Employee of the Year Awards.</option>
                      <option>Years of Service Awards.</option>
           	          <option>Work Anniversary Awards.</option>
                      <option>Performance Awards.</option>
                 	  <option>Behavior and Value Awards.</option>
               </select>    
             </div>  
             <div class="input-box">
                <span class="details">Event Date</span>
                <input type ="date" class="form-control" value="<%= rs.getString("date")%>"  pattern="\d{2}/\d{2}/\d{2}" name="date" id="date" required>
             </div>  
             <div class="input-box">
                <span class="details">Nuber Of Guest</span>
                <input type="text" class="form-control" placeholder="No of Guest" value="<%= rs.getString("guestno")%>" name="guestno" id="guestno" required>        
             </div>   
             <div class="input-box"> 
                <span class="details">Payment Type</span>
                <select class="form-select" name="payment" id="payment" required>
             		<option  value="<%= rs.getString("payment")%>"><%= rs.getString("payment")%></option>		
             		<option>1st class | Rs.200,000.00</option>
             		<option>2nd class | Rs.175,000.00</option>
             		<option>3rd class | Rs.150,000.00</option>
             	</select>
             </div><br>
					
					
					<% }  %>
					
					
							
             <div>
			    <input class="btn save" type="submit"  name="submit" value="Update" id="submit" style="margin-right:20px">  
                <input class="btn reset"  type="reset"  name="reset" value="reset" id="reset" > 
		     </div><br>
			 <div align="center">
				 <a href="AwaEventsRead.jsp"><input class="btn view" type="Button" value="View Details"></a>
		     </div>
            </div>
          </form>
       </div>
     </div>
</section>
		
   <jsp:include page="main/footer.jsp"></jsp:include>		

</body>
</html>