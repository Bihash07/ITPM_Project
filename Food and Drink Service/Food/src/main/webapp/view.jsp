<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Hotel Legend's Kingdom  Food view</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<style>
html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 50%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}

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

<div class="row">
  <div class="column">
    <div class="card">
      <img src="images/main resturent.jpg" alt="Jane" style="width:50%" "height:50%">
      <div class="container">
        <h2>Main Resturent</h2>
        <p>Main Resturent have Specially deliciuos foods.</p>
        <p>They are healthy and safe. </p>
        <p>Beakfast,Lunch,Dinner also provid in here</p>
        <p>24 hours all the foods are provided.</p>
        <table>
  <tr>
    <th>Food Item</th>
    <th>Price</th>
    
  </tr>
  <tr>
    <td>Rice and Curry (Breakfast,Lunch,Dinner)</td>
    <td>RS300</td>
   
  </tr>
  <tr>
    <td>ShotEats</td>
    <td> starting from RS50 </td>
   
  </tr>
  <tr>
    <td>Soft Drinks</td>
    <td>Starting from RS50</td>
   
  </tr>
  
  <tr>
    <td>Set Menu</td>
    <td>Starting from RS250</td>
   
  </tr>
</table>
        <p><button class="button">Order now</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="images/coffe shop.jpg" alt="Mike" style="width:50%" "height:50%">
      <div class="container">
        <h2>Coffee Shop</h2>
        <p>In the Coffe shop we have several variations of coffee.</p>
        <p>they are super delisious !!!!</p>
        <p>Open from 10am -5pm</p>
         <table>
  <tr>
    <th>Food Item</th>
    <th>Price</th>
    
  </tr>
  <tr>
    <td>AFFOGATO. 
    <td>RS350</td>
   
  </tr>
  <tr>
    <td>CAFFÈ LATTE</td>
    <td> starting from RS450 </td>
   
  </tr>
  <tr>
    <td>CAFFÈ MOCHA</td>
    <td>Starting from RS550</td>
   
  </tr>
  
  <tr>
    <td>CAPPUCCINO</td>
    <td>Starting from RS250</td>
   
  </tr>
</table>
        <p><button class="button">Order now</button></p>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="images/chineese food mall.jpg" alt="John" style="width:50%" "height:50%">
      <div class="container">
        <h2>China Mall</h2>
        <p>China Mall hase several kind of famouse chinese foods .</p>
        <p>Special chinese chefs are provide delicious and safty foods </p>
        <p>Open from 1pm-8pm</p>
           <table>
  <tr>
    <th>Food Item</th>
    <th>Price</th>
    
  </tr>
  <tr>
    <td>RKung Pao Chicken</td>
    <td>Starting from RS3000</td>
   
  </tr>
  <tr>
    <td>Special Chinese Noodles with full set menu</td>
    <td> starting from RS9950 </td>
   
  </tr>
  <tr>
    <td>Hot Pot</td>
    <td>Starting from RS5500</td>
   
  </tr>
  
  <tr>
    <td>Dumpling (10 pieces and sauce)</td>
    <td>Starting from RS550</td>
   
  </tr>
</table>
        <p><button class="button">Order Now</button></p>
        </div>
    </div>
  </div>
        
        
        
    <div class="column">
    <div class="card">
      <img src="images/a al carate'.jpg" alt="Mike" style="width:50%" "height:50%">
      <div class="container">
        <h2>A al carate'</h2>
        <p>A la carte menu refers to when a diner orders one type of dish that is separate from a plate of an original menu.</p>
        <p> The term carries the meaning of going opposite of the menu.</p>
        <p>It came into English in the 1830s. It is the opposite of the word table d'hote, which means according to the menu..</p>
        <p>they are super delisious !!!!</p>
        <p>there Prices depends on your food odering </p>
        <p>07am -10pm food providing</p>
 

        <p><button class="button">Order now</button></p>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="card">
      <img src="images/bbq facilites.jpg" alt="Mike" style="width:50%" "height:50%">
      <div class="container">
        <h2>BBQ</h2>
        <p>It is only for weekends evening.</p>
        <p>they are super delisious !!!!</p>
        <p>06pm -10pm food providing</p>
   <table>
  <tr>
    <th>BBQ type</th>
    <th>Price</th>
    
  </tr>
  <tr>
    <td>Small</td>
    <td>RS3000</td>
   
  </tr>
  <tr>
    <td>Medium</td>
    <td>RS5550 </td>
   
  </tr>
  <tr>
    <td>Large</td>
    <td> RS9500</td>
   
  </tr>
  
  <tr>
    <td>Legend's kingdom Special</td>
    <td>RS10,550</td>
   
  </tr>
</table>

        <p><button class="button">Order now</button></p>
      </div>
    </div>
  </div>
      
    <div class="column">
    <div class="card">
      <img src="images/room service.jpg" alt="Mike" style="width:50%" "height:50%">
      <div class="container">
        <h2>Room Service</h2>
        <p>It is also like a a al carate' service.</p>
        <p> customers can oder what they are like and they will be provide everything as soon as possible .</p>
        <p>As the customer have to pay additional fee for room service person.</p>
        <p>there Prices depends on your food odering </p>
        <p>24 hours food providing</p>
 

        <p><button class="button">Order now</button></p>
        
      </div>
    </div>
  </div>
     
      </div>
  
   
  <div class="container">
  <span onclick="this.parentElement.style.display='none'" class="closebtn">&times;</span>
  <img id="expandedImg" style="width:50%; align="center">
  <div id="imgtext"></div>
  
  <center>
  <a href=foodinsert.jsp>
  	<input type="submit" name="submit" value="Insert Food" >
  	</a>
 </center>
  
       
</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>