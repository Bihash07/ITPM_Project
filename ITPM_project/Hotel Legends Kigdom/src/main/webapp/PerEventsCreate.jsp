<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
    
    
    <%
    	
    	if(request.getParameter("submit")!=null)
    	{
    	
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
    		pst = con.prepareStatement("insert into cop_event(f_name,nic,email,phone,event_type,date,guestno,payment)values(?,?,?,?,?,?,?,?)");
    		
            pst.setString(1,name);
    		pst.setString(2,nic); 
    		pst.setString(3,email);
    		pst.setString(4,phone);
    		pst.setString(5,type);
    		pst.setString(6,date);
    		pst.setString(7,guestno);
    		pst.setString(8,payment);
    		pst.executeUpdate();
    		
    		%>
    		
    		<script>
    		alert("Event Details was Successfully added");
    		</script>	
    		
    		<%	
    	}
    
    %>
        
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
<title>Hotel Legend's Kingdom</title>
<link href="logo.jpg" rel ="icon" type= "image/icon">
<link rel="stylesheet" href="css/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
  
  <jsp:include page="main/header.jsp"/>  

  <section class="home-section">
    <jsp:include page="main/sidebar.jsp"/>  
   
    <div class="container">
     <div class="title">Corporate Event Registration</div><br>
      <div class="content">
       <form action="#" method="post">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Name With Initial</span>
            <input  type="text" class="form-control" placeholder="Enter Your name with initial" name="name" id="name" required>
          </div>
          <div class="input-box">
            <span class="details">NIC No</span>
            <input type="text" class="form-control" placeholder="123456789v/1234567890" pattern='^(?:19|20)?\d{2}(?:[0-35-8]\d\d(?<!(?:000|500|36[7-9]|3[7-9]\d|86[7-9]|8[7-9]\d)))\d{4}(?:[vVxX0-90-90-9])$' title='Please enter valid NIC ' name="nic" id="nic" required>          </div>
          <div class="input-box">
            <span class="details">Email Address</span>
            <input type ="email" class="form-control" placeholder="example@gmail.com " name="email" id="email" required>
          </div>
          <div class="input-box">
            <span class="details">Phone No</span>
            <input type="tel" class="form-control" placeholder="+9400-0000-000" name="phone" id="phone" pattern="[0-9]{10}" required>
          </div>
          <div class="input-box">
             <span class="details">Corporate event Type</span>
             <select class="form-select" name="type" id="type">
                  <option>Select Corporate event Type</option>
                  <option>Conferences</option>
                  <option>Recruiting Events</option>
           	      <option>Product Launches</option>
                  <option>Team Building Events</option>
               	  <option>Networking Events</option>
              </select>
          </div> 
          <div class="input-box">
            <span class="details">Event Date</span>
            <input type ="date" class="form-control" pattern="\d{2}/\d{2}/\d{2}" name="date" id="date" required>
          </div>
           <div class="input-box">
            <span class="details">Avarage No of Gest</span>
            <input type="number" class="form-control" placeholder="No of gest" name="guestno" id="guestno" required>          
          </div>      
          <div class="input-box">
             <span class="details">Payment Type</span>
             <select class="form-select" name="payment" placeholder="No of gest" id="payment" required>
                   <option>Select payment</option>
                   <option>1st class | Rs.200,000.00</option>
             	   <option>2nd class | Rs.175,000.00</option>
             	   <option>3rd class | Rs.150,000.00</option>
               </select>
              </div>       
             </div><br>
           <div>
                <input class="btn save" type="submit"  name="submit" value="Save" id="submit" style="margin:0 10px 0 10px; ">  
                <input class="btn reset"  type="reset"  name="reset" value="Reset" id="reset" >
               <a href="CopEventsRead.jsp"><input class="btn view" type="Button" value="View Details" style="margin: 0 0 0 100px;"></a>
           </div>
          </form>
         </div>
       </div>
    </section>
   <jsp:include page="main/footer.jsp"></jsp:include>
   
</body>
</html>
