package com;

public class display {
	
		private int idfood;
		private String foodname;
		private String foodtype;
		private String quantity;
		private String price;





		public display() {


		}


		public display(int idfood, String foodname, String foodtype, String quantity,
		String price) {

		super();
		this.idfood = idfood;
		this.foodname = foodname;
		this.foodtype = foodtype;
		this.quantity = quantity;
		this.price = price;

		}




		public int getidfood() {
		return idfood;
		}




		public String getfoodname() {
		return foodname;
		}




		public String getfoodtype() {
		return foodtype;
		}




		public String getquantity() {
		return quantity;
		}




		public String getprice() {
		return price;
		}




		}


