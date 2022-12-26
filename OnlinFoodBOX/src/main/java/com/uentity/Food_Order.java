package com.uentity;

public class Food_Order {
private int id;
private String Order_id;
private String userName;
private String email;
private String phone;
private String fulladd;
private String cusinename;
private String description;
private String Price;
private String discount_percent;
private String paymentType;
private String cartdetail;
public Food_Order() {
	super();
	// TODO Auto-generated constructor stub
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getOrder_id() {
	return Order_id;
}
public void setOrder_id(String order_id) {
	Order_id = order_id;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getFulladd() {
	return fulladd;
}
public void setFulladd(String fulladd) {
	this.fulladd = fulladd;
}
public String getCusinename() {
	return cusinename;
}
public void setCusinename(String cusinename) {
	this.cusinename = cusinename;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getPrice() {
	return Price;
}
public void setPrice(String price) {
	Price = price;
}
public String getDiscount_percent() {
	return discount_percent;
}
public void setDiscount_percent(String discount_percent) {
	this.discount_percent = discount_percent;
}
public String getPaymentType() {
	return paymentType;
}
public void setPaymentType(String paymentType) {
	this.paymentType = paymentType;
}
public String getCartdetail() {
	return cartdetail;
}
public void setCartdetail(String cartdetail) {
	this.cartdetail = cartdetail;
}
@Override
public String toString() {
	return "Food_Order [id=" + id + ", Order_id=" + Order_id + ", userName=" + userName + ", email=" + email
			+ ", phone=" + phone + ", fulladd=" + fulladd + ", cusinename=" + cusinename + ", description="
			+ description + ", Price=" + Price + ", discount_percent=" + discount_percent + ", paymentType="
			+ paymentType + ", cartdetail=" + cartdetail + "]";
}



}
