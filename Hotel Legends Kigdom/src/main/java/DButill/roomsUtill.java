package DButill;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import service.HRooms;
	


public class roomsUtill 

{ 
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	
	
public static boolean validate(String guestName) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from reserve where guestName='"+guestName+"'";
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
	

public static List<HRooms> getreserve(String guestName) {
	
	ArrayList<HRooms> reserve = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from reserve where guestName='"+guestName+"'";
		rs = stmt.executeQuery(sql);
		
		while (rs.next()) {
			
			int roomid = rs.getInt(1);
			String guestName1 = rs.getString(2);
			String rooms = rs.getString(3);
			String adults = rs.getString(4);
			String children = rs.getString(5);
			
			
			HRooms res = new HRooms(roomid,  guestName1,  rooms,  adults,  children);
			reserve.add(res);
		}
		con.close();
		} catch (Exception e) {
		
	}
	
	return reserve;	
}	


public static boolean insertreserve(String guestName, String rooms, String adults, String children) {
	
	boolean isSuccess = false;
	
	
	try {
		con = DBConnect.getConnection();
		stmt =  con.createStatement();
	    String sql = "insert into reserve values (0,'"+guestName+"','"+rooms+"','"+adults+"','"+children+"')";
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


	
	
	public static boolean updatereserve(String roomid, String guestName, String rooms, String adults,
			String children) {
		
		try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update reserve set guestName='"+guestName+"',rooms='"+rooms+"',adults='"+adults+"',children='"+children+"'"
    				+ "where roomid='"+roomid+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		con.close();
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }	
	
	
	
	

	public static List<HRooms> getreserveDetails(String roomid) {
		
		int convertedroomid = Integer.parseInt(roomid);
    	
    	ArrayList<HRooms> res = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from reserve where roomid='"+convertedroomid+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int roomid1 = rs.getInt(1);
    			String guestName = rs.getString(2);
    			String rooms = rs.getString(3);
    			String adults = rs.getString(4);
    			String children = rs.getString(5);
    			
    			
    			HRooms m = new HRooms( roomid1,  guestName,  rooms,  adults,  children);
    			res.add(m);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return res;	
    }

	
	
	

public static boolean deletereserve(String roomid) {
	
	int convId = Integer.parseInt(roomid);
	
	try {
		
		 con = DBConnect.getConnection();
		 stmt = con.createStatement();
		String sql = "delete from reserve where roomid='"+convId+"'";
		int r = stmt.executeUpdate(sql);
		
		if (r > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		con.close();
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}
}