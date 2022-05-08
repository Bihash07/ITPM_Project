<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hotel Legend's Kingdom</title>
<link href="logo.jpg" rel ="icon" type= "image/icon">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
<style type="text/css">
.home-section .text{
  display: inline-block;
  color: #11101d;
  font-size: 25px;
  font-weight: 500;
  margin: 18px
}
.home-section nav{
  display: flex;
  justify-content: space-between;
  height: 80px;
  background: #F4C327;
  align-items: center;
  max-width:1500px;
  width: calc(100% - 18px);
  margin: 13px 3px 0 6px;
  z-index: 100;
  padding: 0 18px;
  border-radius:5px;
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  transition: all 0.5s ease;
  
}
.sidebar.active ~ .home-section nav{
  left: 205px;
  right:60px;
  width: calc(100% - 400px);
}
.home-section nav .sidebar-button{
  display: flex;
  align-items: center;
  font-size: 24px;
  font-weight: 500;
}
nav .sidebar-button i{
  font-size: 35px;
  color:#fff;
  margin-right: 10px;
  margin-bottom:3px;
}
.home-section nav .sidebar-button{
	color: #fff;
}
.home-section nav .profile-details{
  display: flex;
  align-items: center;
  background: #F4C327;
  border: 2px solid #F4C327;
  border-radius: 6px;
  height: 50px;
  min-width: 190px;
  padding: 0 15px 0 2px;
}
.home-section nav .profile-details img{
  height: 40px;
  width: 40px;
  border-radius: 50%;
  object-fit: cover;
}
nav .profile-details .admin_name{
  font-size: 15px;
  font-weight: 500;
  color: #fff;
  margin: 0 10px;
  white-space: nowrap;
}
nav .profile-details i{
  font-size: 25px;
  color: #fff;
}

@media (max-width: 420px) {
  .sidebar li .tooltip{
    display: none;
  }
}
     
.home-section .home-content{
  position: relative;
  padding-top: 20px;
}
.home-content .overview-boxes{
  display: flex;
  align-items: center;
  background-image: url("bg.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  border-radius:10px;
  justify-content: space-between;
  flex-wrap: wrap;
  padding: 15px 15px 15px 15px;
  margin-bottom: 26px;
}
.overview-boxes .box{
  display: flex;
  align-items: center;
  justify-content: center;
  width: calc(100% / 4 - 20px);
  height: 450px;
  background: #fff;
  padding: 15px 14px;
  border-radius: 12px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.1);
}
.overview-boxes .box-topic{
  font-size: 27px;
  font-weight: 500;
  
}
.home-content .box .indicator{
  display: flex;
  align-items: center;
}
.home-content .box .indicator i{
  height: 30px;
  width: 30px;
  background: #F4C327;
  line-height: 20px;
  border-radius: 6px;
  color: #fff;
  font-size: 25px;
  padding: 5px 2px 1px 2px;
}
.box .indicator i.down{
  background: #e87d88;
}
.home-content .box .indicator .text{
  font-size: 14px;
}
.home-content .box .indicator .text:hover{
  color:#F4C327;
}
.home-content .box .cart{
  display: inline-block;
  font-size: 40px;
  height: 200px;
  width: 280px;
  background-image: url("images/food1.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  line-height: 50px;
  text-align: center;
  color: #66b0ff;
  border-radius: 12px;
  margin: 1px 0px 0 0px;
}
.home-content .box .cart.two{
  
   background-image: url("images/room service.jpg");
  background-repeat: no-repeat;
  background-size: cover;
 }
.home-content .box .cart.three{
   background-image: url("images/card2.jpg");
  background-repeat: no-repeat;
  background-size: cover;
 }
.home-content .box .cart.four{
   background-image: url("images/lobby.jpg");
  background-repeat: no-repeat;
  background-size: cover;
 }

    
</style>
     
     
</head>
<body>  
 
  <jsp:include page="main/header.jsp"></jsp:include>  

   <section class="home-section">
      <nav>
      <div class="sidebar-button">
       <i class='bx bx-calendar-event' ></i>
        <span class="dashboard">Dashboard</span>
      </div>
      <div class="profile-details">
        <img src="images/profile.jpg" alt="">
        <span class="admin_name">admin</span>
        <i class='bx bx-chevron-down' ></i>
      </div>
    </nav>
  
    <div class="home-content">
     
      <div class="overview-boxes">
        <div class="box">
          <div class="right-side">
          <i class='cart'></i>
            <div class="box-topic">Food & Drink<br>Services </div>
            <div class="indicator">
              <i class='bx bx-edit-alt'></i>
              <a href="view.jsp"><span class="text">Food And Drink Details</span></a>
            </div>
          
        </div>
          
        </div>
        
        <div class="box">
          <div class="right-side">
          <i class='cart two' ></i>
            <div class="box-topic">Reservation <br>Services </div>
            <div class="indicator">
              <i class='bx bx-dot'></i>
              <a href="Rooms_Dashboard.jsp"><span class="text">Reservation Details</span></a>
            </div>
          </div>
          
        </div>
        
        <div class="box">
          <div class="right-side">
          <i class='cart three' ></i>
            <div class="box-topic">Event <br>Services </div>
            <div class="indicator">
              <i class='bx bx-edit-alt'></i>
              <a href="eventdashboard.jsp"><span class="text">Event Details</span></a>
            </div>
          </div>
          
        </div>
        
        <div class="box"> 
          <div class="right-side">          
          <i class=' cart four' ></i>
            <div class="box-topic">Other Service</div>
            <div class="indicator">
              <i class='bx bx-edit-alt'></i>
              <a href="OtherServices.jsp"><span class="text">Other services Details</span></a>
            </div>
          </div>
          
        </div>
      </div>
    </div>
  </section>
 <jsp:include page="main/footer.jsp"></jsp:include>
</body>
</html>


