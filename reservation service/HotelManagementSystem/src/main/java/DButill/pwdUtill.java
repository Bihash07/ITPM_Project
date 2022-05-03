package DButill;

import java.sql.Connection;

import java.sql.Statement;

public class pwdUtill {

 
	private static Connection con = null;
	private static Statement stmt = null;

	
	public static boolean insertpwd(String username, String password) {
		
		boolean isSuccess = false;
		
		
		try {
			con = DBConnect.getConnection();
			stmt =  con.createStatement();
		    String sql = "insert into customer values ('"+username+"','"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

}
