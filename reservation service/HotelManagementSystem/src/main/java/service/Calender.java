package service;

public class Calender {
    
	 private int dateid;
	 private String datepicker;
	 private String datepicker1;
	 
	 public Calender() {
	    	
	    	
	    }
	
	 
	public Calender(int dateid, String datepicker, String datepicker1) {
		super();
		this.dateid = dateid;
		this.datepicker = datepicker;
		this.datepicker1 = datepicker1;
	}

	public int getDateid() {
		return dateid;
	}


	public String getDatepicker() {
		return datepicker;
	}


	public String getDatepicker1() {
		return datepicker1;
	}

	
	 
	
}
