package com.uentity;

public class Cart {
private int cid;
private int fid;
private int userid;
private String fname;
private String fdescription;
private Double price;
private Double totalprice;
private Double discount;
public int getCid() {
	return cid;
}
public void setCid(int cid) {
	this.cid = cid;
}
public int getFid() {
	return fid;
}
public void setFid(int fid) {
	this.fid = fid;
}
public int getUserid() {
	return userid;
}
public void setUserid(int userid) {
	this.userid = userid;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getFdescription() {
	return fdescription;
}
public void setFdescription(String fdescription) {
	this.fdescription = fdescription;
}
public Double getPrice() {
	return price;
}
public void setPrice(Double price) {
	this.price = price;
}
public Double getTotalprice() {
	return totalprice;
}
public void setTotalprice(Double totalprice) {
	this.totalprice = totalprice;
}
public Double getDiscount() {//
	return discount;
}
public void setDiscount(Double discount) {
	this.discount = discount;//
}


}
