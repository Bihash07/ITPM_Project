package DButill;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import service.Calender;


public class calenderUtill {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	
	
public static boolean validate(String datepicker) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from calender where datepicker='"+datepicker+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	

public static List<Calender> getcalender(String datepicker) {
	
	ArrayList<Calender> calender = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from calender where datepicker='"+datepicker+"'";
		rs = stmt.executeQuery(sql);
		
		while (rs.next()) {
			
			int dateid = rs.getInt(1);
			String datepicker12 = rs.getString(2);
			String datepicker1 = rs.getString(3);
		
			
			
			Calender cal = new Calender(dateid, datepicker12,  datepicker1);
			calender.add(cal);
		}
		con.close();
		} catch (Exception e) {
		
	}
	
	return calender;	
}	


public static boolean insertcalender(String datepicker, String datepicker1) {
	
	boolean isSuccess = false;
	
	
	try {
		con = DBConnect.getConnection();
		stmt =  con.createStatement();
	    String sql = "insert into calender values (0,'"+datepicker+"','"+datepicker1+"')";
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
