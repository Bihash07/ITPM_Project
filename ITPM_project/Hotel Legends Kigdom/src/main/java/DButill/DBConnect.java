package DButill;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con= DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/hotellegendskingdom",  "root", "1234"); 

		}catch(Exception e) {
			
			System.out.println("Database connection is not success!! " + e);
			
		}
		return con;
		
	}

}


