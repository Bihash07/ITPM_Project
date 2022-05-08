package service;

public class HRooms {

	  private int roomid;
	  private String guestName;
	  private String rooms;
	  private String adults;
	  private String children;
	
	    
	  

		public HRooms() {
	    	
	    	
	    }
	
		
		public HRooms(int roomid, String guestName, String rooms, String adults,
				String children) {
			
			super();
			this.roomid = roomid;
			this.guestName = guestName;
			this.rooms = rooms;
			this.adults = adults;
			this.children = children;
			
		}


		public int getRoomid() {
			return roomid;
		}


		public String getGuestName() {
			return guestName;
		}


		public String getRooms() {
			return rooms;
		}


		public String getAdults() {
			return adults;
		}


		public String getChildren() {
			return children;
		}

	
}
	

