<%@page import="java.sql.*" %>
    
       <%
    	
    	
    		String aeid=request.getParameter("aeid");
       
    		Connection con;
    		PreparedStatement pst;
    		ResultSet rs;
    		
    		Class.forName("com.mysql.jdbc.Driver");
    		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotellegendskingdom","root","Root123.");
    		pst = con.prepareStatement("delete from Awa_event where aeid= ?");
    		pst.setString(1,aeid);
    		pst.executeUpdate();
    		
    		%>
    		
    		
    		
    		
    		
    		<script>
    		alert("Employee Details was Successfully Deleted");
    		location.href = 'AwaEventsRead.jsp';
    		</script>	
