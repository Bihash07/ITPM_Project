<%@page import="java.sql.*" %>
    
       <%
    	
    	
    		String feid=request.getParameter("feid");
       
    		Connection con;
    		PreparedStatement pst;
    		ResultSet rs;
    		
    		Class.forName("com.mysql.jdbc.Driver");
    		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotellegendskingdom","root","Root123.");
    		pst = con.prepareStatement("delete from  Fes_event where feid= ?");
    		pst.setString(1,feid);
    		pst.executeUpdate();
    		
    		%>
    		
    		
    		
    		
    		
    		<script>
    		alert("Employee Details was Successfully Deleted");
    		location.href = 'FesEventsRead.jsp';
    		</script>	
