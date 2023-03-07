package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import DButill.DBConnect;

public class LoginDao {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static PreparedStatement preparedStatement = null;

	
	
		public static String validateCustomer(String username, String password) {
			
			
			String role = null;
			
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "select username,password from customer where username='"+username+"' and password='"+password+"'";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					String uname = rs.getString(1);
					String pwd = rs.getString(2);
					
					if(uname.equals(username) && pwd.equals(password))
						role = "customer";
					
				}
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			finally {
			
			try {
				
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
			return role;
			
		
		}
		
	
}
