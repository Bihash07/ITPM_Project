<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Legend's Kingdom</title>


 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript" src="https://gc.kis.v2.scr.kaspersky-labs.com/FD126C42-EBFA-4E12-B309-BB3FDD723AC1/main.js?attr=6LkcVKZ-R8bP6eHFe4ZDDCrJO24tMbHbTwp8KdudVdQrMY7bRleiZOeZjRUlcm2qR_Lb0LanFXEi68-L6mQgTQ" charset="UTF-8"></script><link rel="stylesheet" crossorigin="anonymous" href="https://gc.kis.v2.scr.kaspersky-labs.com/E3E8934C-235A-4B0E-825A-35A08381A191/abn/main.css?attr=aHR0cHM6Ly90cnlpdC53M3NjaG9vbHMuY29tL2NvZGVfZGF0YXMucGhw"/><script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker({ minDate: -20, maxDate: "+1M +15D" });
    $( "#datepicker1" ).datepicker({ minDate: -20, maxDate: "+1M +15D" });
  } );
  </script>

</head>


<body>

<jsp:include page="main/header.jsp"></jsp:include>

<center>
<form action="calenderInsert" method="get">
<p>Search-In: <input type="text" id="datepicker">    Search-Out: <input type="text" id="datepicker1"> <button type="submit" name="submit" class="btn btn-info">Insert</button></p>
</form>

</center>

<form action="insert" method="Get" onsubmit="return validation()">
<div class="container">
  <div class="row">
      <div class="thumbnail">
          <img src="images/room1.jpg" alt="Lights" style="width:30%">
          <div class="caption">
          <form>
            <div class="form-group">
                                <label for="usr">Guest Name</label>
                                <input type="text" name="guestName" class="form-control" id="usr">
                                 <label for="qty">Rooms</label>
                                <input type="text" name="rooms" class="form-control" id="qt">
                                		<span id="qt" style="color:red"></span><br>
                                 <label for="qty">Adults</label>
                                <input type="text" name="adults" class="form-control" id="qt">
                                		<span id="qt" style="color:red"></span><br>
                                 <label for="qty">Children</label>
                                <input type="text" name="children" class="form-control" id="qt">
                                		<span id="qt" style="color:red"></span><br>
  
                                        <button type="submit" name="submit" class="btn btn-danger">Complete Booking</button>
               </div>
             </form> 
                
    </div>
    </div>    
</div>
</div>
 </form>
 
  
  <jsp:include page="main/footer.jsp"></jsp:include>
  
<script type="text/javascript">
function validation(){
	var qty = document.getElementById('qty').value;
	if(qty > "4"){
		document.getElementById('qt').innerHTML="** The field should not contain values geater than four<br>";
		return false;
		}
	
}
</script>

  
 
  
  
   </body>
</html>