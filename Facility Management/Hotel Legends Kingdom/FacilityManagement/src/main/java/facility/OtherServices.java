package facility;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class OtherServices {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
//Validate
	public static List<ResDetails> validate(String name){
		
		ArrayList<ResDetails> RD = new ArrayList<>();
		
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Select * from sportreservation where name ='"+name+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				String name1 = rs.getString(1);
				String contact = rs.getString(2);
				String date = rs.getString(3);
				String time = rs.getString(4);
				int members = rs.getInt(5);
				String remarks = rs.getString(6);
				String ground = rs.getString(7);
				String other = rs.getString(8);
				String pool = rs.getString(9);
				
				
				ResDetails resd = new ResDetails(name1,contact,date,time,members,remarks,ground,other,pool);
				RD.add(resd);
			}
			
		}
		catch(Exception e){
			
			e.printStackTrace();
		}
		return RD;
		
	}
	
	
	
	//Insert sport reservation
	
	public static boolean InsertSportRes(String name, String contact, String date, String time, String members, String remarks, String ground, String other, String pool) {
		
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into sportreservation values ('"+name+"','"+contact+"','"+date+"','"+time+"','"+members+"','"+remarks+"','"+ground+"','"+other+"','"+pool+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
	
	//Insert guide 
	
	
	public static boolean InsertforGuide(String name, String language, String email, String date, String timeperiod, String contactno, String places) {
		
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into guide values ('"+name+"','"+language+"','"+email+"','"+date+"','"+timeperiod+"','"+contactno+"','"+places+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
	

}
