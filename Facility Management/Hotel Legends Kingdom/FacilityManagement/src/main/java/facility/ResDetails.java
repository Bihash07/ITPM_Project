package facility;

public class ResDetails {

	private String name;
	private String contact;
	private String date;
	private String time;
	private int members;
	private String remarks;
	private String ground;
	private String other;
	private String pool;
	
	
	public ResDetails(String name, String contact, String date, String time, int members, String remarks, String ground,
			String other, String pool) {
		
		this.name = name;
		this.contact = contact;
		this.date = date;
		this.time = time;
		this.members = members;
		this.remarks = remarks;
		this.ground = ground;
		this.other = other;
		this.pool = pool;
	}


	public String getName() {
		return name;
	}


	public String getContact() {
		return contact;
	}

	
	public String getDate() {
		return date;
	}


	public String getTime() {
		return time;
	}


	public int getMembers() {
		return members;
	}


	public String getRemarks() {
		return remarks;
	}


	public String getGround() {
		return ground;
	}


	public String getOther() {
		return other;
	}


	public String getPool() {
		return pool;
	}


	
	
	
	
}
