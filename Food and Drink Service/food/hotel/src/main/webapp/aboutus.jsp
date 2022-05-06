<!DOCTYPE html>
<html>
<jsp:include page="header.jsp" />
<style>
* {
  box-sizing: border-box;
}

body {
  margin: 0;
  font-family: Arial;
}

.header {
  text-align: center;
  padding: 32px;
  color:Orange;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  padding: 0 4px;
}

/* Create four equal columns that sits next to each other */
.column {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
  max-width: 25%;
  padding: 0 4px;
}

.column img {
  margin-top: 8px;
  vertical-align: middle;
  width: 100%;
}

/* Responsive layout - makes a two column-layout instead of four columns */
@media screen and (max-width: 800px) {
  .column {
    -ms-flex: 50%;
    flex: 50%;
    max-width: 50%;
  }
}

/* Responsive layout - makes the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column {
    -ms-flex: 100%;
    flex: 100%;
    max-width: 100%;
  }
}
</style>
<body>

<!-- Header -->
<div class="header">
  <h1>Hotel Legend's Kingdom</h1>
  </div>
  <center>
  <p>We always suppose to give a good service to our customers.<br>
  Every time we try to do our best their happines it alsp our pleasure.<br>
  Treat best foods and accomadations in 24 hours.</p>
</center>

<!-- Photo Grid -->
<div class="row"> 
  <div class="column">
    <img src="images/a al carate'.jpg" style="width:100%" >
    <img src="images/award ceromony.jpg" style="width:100%">
    <img src="images/bbq facilites.jpg" style="width:100%" >
    <img src="images/chineese food mall.jpg" style="width:100%" >
    <img src="images/coffe shop.jpg"style="width:100%" >
    <img src="images/conference.jpg" style="width:100%" >
    <img src="images/cooprerate.jpg" style="width:100%" >
  </div>
  <div class="column">
    <img src="images/events.jpg" style="width:100%">
    <img src="images/food.jpg" style="width:100%">
    <img src="images/wedding.jpeg" style="width:100%" >
    <img src="images/food1.jpg"style="width:100%" >
    <img src="images/main resturent.jpg" style="width:100%" >
    <img src="images/nature.jpeg" style="width:100%" >
  </div>  
  <div class="column">
    <img src="images/out door resturent.jpg" style="width:100%" >
    <img src="images/parties.jpg"style="width:100%" >
    <img src="images/room service.jpg" style="width:100%" >
    <img src="images/bbq facilites.jpg" style="width:100%" >
    <img src="images/room.jpeg" style="width:100%" >
    <img src="images/coffe shop.jpg" style="width:100%" >
    <img src="images/events.jpg" style="width:100%">
  </div>
  <div class="column">
    <img src="images/birthday.jpg" style="width:100%" >
    <img src="images/lobby.jpg"style="width:100%" >
    <img src="images/kitchen.jpg" style="width:100%" >
    <img src="images/garden.jpg" style="width:100%" >
    <img src="images/pool.jpg" style="width:100%" >
    <img src="images/DJ.jpg" style="width:100%" >
    
  </div>
  </div>
<jsp:include page="footer.jsp" />  

</body>
</html>
