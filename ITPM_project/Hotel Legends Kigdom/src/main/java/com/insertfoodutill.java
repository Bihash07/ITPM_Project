package com;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class insertfoodutill {
	
	private static boolean isSucccess;
	private static Connection con =null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	private static PreparedStatement preparedStatement =null;
	
	public static int insertfood(String foodname,String foodtype, String quantity, String price )
	{
		int id=0;
		
		try {
			con=DBConnect.getConnection();
			preparedStatement  =con.prepareStatement("insert into food values(0,'"+foodname+"','"+foodtype+"','"+quantity+"','"+price+"');",Statement.RETURN_GENERATED_KEYS);
			preparedStatement.executeUpdate();
			rs=preparedStatement.getGeneratedKeys();
			while(rs.next())
			{
				id=rs.getInt(1);
			}
			con.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return id;
	}
		
	public static boolean updatefood(String idfood,String foodname,String foodtype,String quantity,String price) {
		
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="update food set foodname='"+foodname+"',foodtype='"+foodtype+"',quantity='"+quantity+"',price='"+price+"'"+"where iDfood='"+idfood+"'";
			int rs=stmt.executeUpdate(sql);
			
			
			if(rs>0) {
				isSucccess=true;
			}
			else {
				isSucccess=false;
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		return isSucccess;
	}
	public static boolean deletefood(String idfood){
		
	int convidfood=Integer.parseInt(idfood);
	
	
	try {
		con=DBConnect.getConnection();
		stmt=con.createStatement();
		String sql="delete from food where idfood= '"+convidfood+"'";
		int rs=stmt.executeUpdate(sql);
		
		
		if(rs>0) {
			isSucccess=true;
		}
		else {
			isSucccess=false;
		}
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	
	
	return isSucccess;
	
}
	public static boolean validate(String foodname) {

		try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from food where foodname='"+foodname+"'";
		rs = stmt.executeQuery(sql);

		if (rs.next()) {
		isSucccess = true;
		} else {
		isSucccess = false;
		}
		con.close();
		} catch (Exception e) {
		e.printStackTrace();
		}

		return isSucccess;
		}



		public static List<display> getfood(String foodname) {

		ArrayList<display> food = new ArrayList<>();

		try {

		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from food where foodname='"+foodname+"'";
		rs = stmt.executeQuery(sql);

		while (rs.next()) {

		int idfood = rs.getInt(1);
		String foodname1 = rs.getString(2);
		String foodtype = rs.getString(3);
		String quantity = rs.getString(4);
		String price = rs.getString(5);


		display m = new display(idfood, foodname1, foodtype, quantity, price);
		food.add(m);
		}
		con.close();
		} catch (Exception e) {

		}

		return food;
		}




		public static boolean insertfood1(String foodname, String foodtype, String quantity, String price) {

		boolean isSuccess = false;


		try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "insert into food values (0,'"+foodname+"','"+foodtype+"','"+quantity+"','"+price+"')";
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
			
			
