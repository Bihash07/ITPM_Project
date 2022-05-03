<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Management</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
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

<jsp:include page="header.jsp"></jsp:include>
<br><br>

<div class="container">
  <div class="row">
      <div class="thumbnail">
  <form action="payment" method="post">
    <div class="form-group">
    <label><u> Personal Information</u></label><br><br>
    
      <label for="name">Contact Name:</label>
      <input type="name" class="form-control" id="name" placeholder="Enter name" name="name" required>
     
      
       <label for="cno">Contact No.:</label>
      <input type="cno" class="form-control" id="cno" placeholder="+942230987" name="cno" required>
      
      
       <label for="cemail">Email:</label>
      <input type="cemail" class="form-control" id="cemail" placeholder="Enter email" name="cemail" required> 
    </div>

    <div class="container">
  <h5>Payment method(visa & master card only)</h5>
     <input type="text" name="paymethod" class="form-control" id="usr">
    </div>
    
    
    <div class="form-group">
    <label><u>Billing Address</u></label><br><br>
     <label for="address">Address:</label>
      <input type="address" class="form-control" id="address" placeholder="Enter address" name="address" required>
         </div>
       
    <center><button type="submit" name="submit" class="btn btn-danger">Proceed To Payment</button></center>
  </form>
</div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>