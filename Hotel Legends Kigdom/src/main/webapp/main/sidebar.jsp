<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Legend's Kingdom</title>
<link rel="stylesheet" href="css/sidebar.css">
<link href="main/logo.jpg" rel ="icon" type= "image/icon">	
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

       <div class="sidebar">
        <div class="logo-details">
            <div class="logo_name">Hotel_Legend's_Kingdom</div>
            <i class='bx bx-chevron-right' id="btn"></i>
        </div>
        <ul id="myUL" class="nav-list">
          
          <li>
           <a href="dashboard.jsp">
             <i class='bx bx-home' ></i>
             <span class="links_name">Home</span>
           </a>
           <span class="tooltip">HOME</span>
         </li>
          <li>
            <a href="CopEventsCreate.jsp">
            <!-- Use bx-tada -->
              <i class='bx bx-slideshow'></i>
              <span class="links_name">Corporate Events</span>
            </a>
             <span class="tooltip">Corporate Events</span>
          </li>
          <li>
           <a href="PerEventsCreate.jsp">
             <i class='bx bx-drink' ></i>
             <span class="links_name">Personal Events</span>
           </a>
           <span class="tooltip">Personal Events</span>
         </li>
         <li>
           <a href="AwaEventsCreate.jsp">
             <i class='bx bx-award'  ></i>
             <span class="links_name">Award Ceremonies</span>
           </a>
           <span class="tooltip">Award Ceremonies</span>
         </li>
         <li>
           <a href="FesEventsCreate.jsp">
             <i class='bx bx-meteor'></i>
             <span class="links_name">Festivals</span>
           </a>
           <span class="tooltip">Festivals</span>
         </li>
         <li>
              <a href="login.jsp">
             <i class='bx bx-log-out' id="log_out" ></i>
             <span class="links_name">Log-out</span>
           </a>
             <span class="tooltip">Log-out</span>
         </li>
       
         <li>
             <button onclick="topFunction()" id="myBtn" title="Go to top"><i class='bx bx-chevrons-up'></i></button>
             <span class="tooltip">Top</span>
         </li>
       </ul>
      </div>
     
     
      <script type="text/javascript" src="javascript/sidebar.js"></script>
</body>
</html>