 
    <%	
     String username = request.getParameter("uname");
     String pass = request.getParameter("pass");
    
     if(username.equals("admin") && pass.equals("admin123"))
     {
    	 
      %>
      
      <script> 
        location.href = 'dashboard.jsp'; 
      </script>
      
      <%
       }
     else
       { 
       %>
       
       <script> 
        alert("Admin Login failed!!! Please Check the Username or Password "); 
        location.href = 'login.jsp'; 
       </script>
       
       <%
       }
       %>
       
 