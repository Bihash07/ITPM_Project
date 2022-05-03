<%@page import="java.sql.*" %>
    
       <%
    	
    	
    		String ceid=request.getParameter("ceid");
       
    		Connection con;
    		PreparedStatement pst;
    		ResultSet rs;
    		
    		Class.forName("com.mysql.jdbc.Driver");
    		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotellegendskingdom","root","Root123.");
    		pst = con.prepareStatement("delete from cop_event where ceid= ?");
    		pst.setString(1,ceid);
    		pst.executeUpdate();
    		
    		%>
    		
    		
    		
    		
    		
    		<script>
    		alert("Event Details was Successfully Deleted");
    		location.href = 'CopEventsRead.jsp';
    		</script>	
