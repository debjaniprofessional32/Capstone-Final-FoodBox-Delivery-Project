package com.uentity;

public class CusineList {
	    private int fid;
		private String fname;
	    private String description;
		private String price;
	    private String category;	
		private String status;
		private String photoname;
		private String email;
        private String discountpercent;
        private String discountamount;
        private String finalprice;
		public CusineList() {
			super();
			// TODO Auto-generated constructor stub
		}
		public CusineList(String fname, String description, String price, String category, String status,
				String photoname, String email, String discountpercent, String discountamount, String finalprice) {
			super();
			this.fname = fname;
			this.description = description;
			this.price = price;
			this.category = category;
			this.status = status;
			this.photoname = photoname;
			this.email = email;
			this.discountpercent = discountpercent;
			this.discountamount = discountamount;
			this.finalprice = finalprice;
		}
		public int getFid() {
			return fid;
		}
		public void setFid(int fid) {
			this.fid = fid;
		}
		public String getFname() {
			return fname;
		}
		public void setFname(String fname) {
			this.fname = fname;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public String getPrice() {
			return price;
		}
		public void setPrice(String price) {
			this.price = price;
		}
		public String getCategory() {
			return category;
		}
		public void setCategory(String category) {
			this.category = category;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}
		public String getPhotoname() {
			return photoname;
		}
		public void setPhotoname(String photoname) {
			this.photoname = photoname;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getDiscountpercent() {
			return discountpercent;
		}
		public void setDiscountpercent(String discountpercent) {
			this.discountpercent = discountpercent;
		}
		public String getDiscountamount() {
			return discountamount;
		}
		public void setDiscountamount(String discountamount) {
			this.discountamount = discountamount;
		}
		public String getFinalprice() {
			return finalprice;
		}
		public void setFinalprice(String finalprice) {
			this.finalprice = finalprice;
		}
		@Override
		public String toString() {
			return "CusineList [fid=" + fid + ", fname=" + fname + ", description=" + description + ", price=" + price
					+ ", category=" + category + ", status=" + status + ", photoname=" + photoname + ", email=" + email
					+ ", discountpercent=" + discountpercent + ", discountamount=" + discountamount + ", finalprice="
					+ finalprice + "]";
		}
		
	
		
	
}
