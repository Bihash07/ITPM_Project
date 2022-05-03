<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

	<link rel="stylesheet" type="text/css" href="MyAccount.css" />


 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  
   <style>
/* unvisited link */
a:link {
  color: black;
}

/* visited link */
a:visited {
  color: white;
}

/* mouse over link */
a:hover {
  color: hotpink;
}

/* selected link */
a:active {
  color: blue;
}
</style>
  
  
</head>

<body>

<jsp:include page="header.jsp"></jsp:include>



<div class="container">
  <h2>My Account</h2>
  <div class="card-group">
    <div class="card bg-success">
      <div class="card-body text-center">
<form action="LoginServlet" method="post">
		
		 <label for="get"><b>Sign In</b></label><br><br>
		 <label for="email">Username</label>
    	 <input type="text" id="email" name="username" placeholder="Enter Username" required><br><br>
    	 <label for="psw">Password</label>
    	  <input type="password" id="psw" name="password" placeholder="Enter password" required><br><br>
    	
    
		<%-- 	    	
    	 <div class="form-check">
      <label class="form-check-label">
        <input type="checkbox" class="form-check-input">Keep Me Logged In
      </label>
         </div>--%>	
    	
         <button class="btn btn-danger" type="submit" "onclick="checkEmail()">Sign-in</button><br><br>
                 <a href="MyAccount.jsp">Create Password</a>
        
	     
	  </form>
	    </div>
    </div>
    </div>
    </div>
	  <br>
	  <br>
	  
	  <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>