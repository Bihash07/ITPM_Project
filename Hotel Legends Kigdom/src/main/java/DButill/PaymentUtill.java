package DButill;

import java.sql.Connection;
import java.sql.Statement;

public class PaymentUtill {
	
	private static Connection con = null;
	private static Statement stmt = null;

	
	public static boolean insertpayment(String name, String cno, String cemail, String paymethod, String address) {
		
		boolean isSuccess = false;
		
		
		try {
			con = DBConnect.getConnection();
			stmt =  con.createStatement();
		    String sql = "insert into payment values ('"+name+"','"+cno+"','"+cemail+"','"+paymethod+"','"+address+"')";
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
