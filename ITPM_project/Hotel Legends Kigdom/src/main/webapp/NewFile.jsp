<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Legend's Kingdom</title>
<link rel="stylesheet" href="css/style.css">
<link href="images/logo.jpg" rel ="icon" type= "image/icon">
<style type="text/css">


</style>
</head>
<body>
  <jsp:include page="main/header.jsp"/>
   <jsp:include page="main/sidebar.jsp"/>
    
<section class="home-section">
    <nav>
      <div class="sidebar-button">
       <i class='bx bx-user'></i>
        <span class="dashboard">Corporate Events</span>
      </div>
      <div class="profile-details">
        <img src="profile.jpg" alt="">
        <span class="admin_name">admin</span>
        <i class='bx bx-chevron-down' ></i>
      </div>
    </nav>

  <div class="container">
    <div class="title">New Corporate Event Registration</div>
    <div class="content">
      <form action="#" method="post">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Full Name</span>
            <input  type="text" class="form-control" placeholder="Enter Your name" name="name" id="name" required>
          </div>
          <div class="input-box">
            <span class="details">NIC No</span>
            <input type="text" class="form-control" placeholder="123456789v/1234567890" pattern='^(?:19|20)?\d{2}(?:[0-35-8]\d\d(?<!(?:000|500|36[7-9]|3[7-9]\d|86[7-9]|8[7-9]\d)))\d{4}(?:[vVxX0-90-90-9])$' title='Please enter valid NIC ' name="nic" id="nic" required>          </div>
          <div class="input-box">
            <span class="details">Email Address</span>
            <input type="email" class="form-control" placeholder="example@gmail.com " name="email" id="email" required>
          </div>
          
          <div class="input-box">
            <span class="details">Home Address</span>
            <input type="text" class="form-control" placeholder="home address " name="address" id="address" required ">  
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
            <span class="details">Avarage No of Gest</span>
            <input type="number" class="form-control" placeholder="No of gest " name="guestno" id="guestno" required>          
          </div>      
        <div class="input-box">
             <span class="details">Gender</span>
             <select class="form-select" name="payment" id="payment">
                     <option>Select payment</option>
                       <option>1st class | Rs.200,000.00</option>
             		   <option>2nd class | Rs.175,000.00</option>
             		   <option>3rd class | Rs.150,000.00</option>
               </select>
              </div>       
             </div><br>
          <div>
                <input class="btn save" type="submit"  name="submit" value="Save" id="submit" style="margin:0 10px 0 10px; ">  
                <input class="btn reset"  type="reset"  name="reset" value="reset" id="reset" >
               <a href="CopEventsRead.jsp"><input class="btn view" type="Button" value="View Details" style="margin: 0 0 0 100px;"></a>
             </div>
          </form>
            
        </div>
    </div>
  </section>
	<jsp:include page="main/footer.jsp"/>
	
</body>
</html>