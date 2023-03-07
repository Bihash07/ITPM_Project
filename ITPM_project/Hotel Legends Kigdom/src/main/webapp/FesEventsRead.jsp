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
</head>
<body>
  <jsp:include page="main/header.jsp"/>
   
   <section class="home-section">

   <jsp:include page="main/sidebar.jsp"/>
   <div class="container"  style=" width: 113%; margin: 30px 40px 10px 20px; ">
    <div class="title">Festival Details</div>
    <div class="search">
      <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Event ID.." >
      <label id="msg"></label>
    </div><br>
    <div class="content">
      <form action="#" method="post">
        <table id="tbl-student" class="table">
				 	  
				 			<tr> 
				 			    <th>Event ID</th>
				 				<th>Customer Name</th>
				 				<th>Customer NIC</th>
				 				<th>Customer Email</th>
				 				<th>customer Phone No</th>
				 				<th>Corporate Event Type</th>
				 				<th>Event Date</th>
				 				<th>No Of Guest</th>
				 				<th>Payment Type</th>
				 				<th>EDIT</th>
				 				<th>DELETE</th>
				 			
				 			
				 			</tr>
				 			
				 			<%
				 			
				 			
				 			Connection con;
				    		PreparedStatement pst;
				    		ResultSet rs;
				    		
				    		Class.forName("com.mysql.jdbc.Driver");
				    		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotellegendskingdom","root","Root123.");
				    		
				 			String query ="select * from Fes_event";
				 			Statement st=con.createStatement();
				 			
				 			rs = st.executeQuery(query);
				 			
								while(rs.next())
								{
									
									String id =rs.getString("feid");
									
												 			
				 			
				 			
				 			%>
				 			
				 			
				 			
				 			<tr id="myUL"  ">
				 			    <td><%=rs.getString("feid") %></td>
				 				<td><%=rs.getString("f_name") %></td>
				 				<td><%=rs.getString("nic") %></td>
				 				<td><%=rs.getString("email") %></td>
				 				<td><%=rs.getString("phone") %></td>
				 				<td><%=rs.getString("event_type") %></td>
				 				<td><%=rs.getString("date") %></td>
				 				<td><%=rs.getString("guestno") %></td>
				 				<td><%=rs.getString("payment") %></td>
				 				<td><a href="FesEventsUpdate.jsp?ceid=<%=id%>"><input class="btn edit" type="Button"  name="edit" value="EDIT"></a></td>
				 				<td><a href="FesEventsDelete.jsp?ceid=<%=id%>"><input class="btn delete"  type="Button"  name="delete" value="DELETE"></a></td>
				 		  </tr>
				 			

                           
                           <%
				 			
								}
				 			
				 			%>
				 		
				 	
				 	
				 	</table>
				 
				 </form>
				 </div>
			
			</div>
	
	</section>	
	
	 <jsp:include page="main/footer.jsp"/>
<script>
function myFunction() {
	  var input, filter, table, tr, td, i, txtValue;
	  input = document.getElementById("myInput");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("tbl-student");
	  tr = table.getElementsByTagName("tr");
	  for (i = 0; i < tr.length; i++) {
	    td = tr[i].getElementsByTagName("td")[0];
	    if (td) {
	      txtValue = td.textContent || td.innerText;
	      if (txtValue.toUpperCase().indexOf(filter) > -1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    }       
	  }
	}

</script>
	
	
</body>
</html>