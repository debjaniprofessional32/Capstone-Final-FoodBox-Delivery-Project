package com.uDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.uentity.CusineList;
import com.uentity.Food_Order;
public class OrderImpDao implements OrderDao{
  
	private Connection conn;
  
	public OrderImpDao(Connection conn) {
	super();
	this.conn = conn;
}

	@Override
	public int getOrderNo() {
		int i=1;
		try {
			
			String sql="Select * from f_order";
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
				
			{
				
				i++;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return i;
	}

	@Override
	public boolean saveOrder(List<Food_Order> fo) {
		boolean f=false;
		try {
String sql="insert into f_order(order_id,user_name,Email,address,phone,cuisne_name,description,discount_percent,price,Payment,carddetail) values (?,?,?,?,?,?,?,?,?,?,?)";
		conn.setAutoCommit(false);
		PreparedStatement ps=conn.prepareStatement(sql);
		for(Food_Order c:fo)
		{
			ps.setString(1,c.getOrder_id());
			ps.setString(2,c.getUserName());
			ps.setString(3,c.getEmail());
			ps.setString(4,c.getFulladd());
			ps.setString(5,c.getPhone());
			ps.setString(6,c.getCusinename());
			ps.setString(7,c.getDescription());
			ps.setString(8,c.getDiscount_percent());
			ps.setString(9,c.getPrice());
			ps.setString(10,c.getPaymentType());
			ps.setString(11,c.getCartdetail());
			ps.addBatch();
		}
		int[] count=ps.executeBatch();
		conn.commit();
		f=true;
		conn.setAutoCommit(true);
		}
		
		catch(Exception e)
		{
			e.printStackTrace();}
		return f;
	}

	@Override
	public List<Food_Order> getCusine(String email) {
		List<Food_Order> list=new  ArrayList<Food_Order>();
		Food_Order o=null;
		try {
			String sql="select * from f_order where Email=?";
			PreparedStatement ps=conn.prepareStatement(sql)	;
			ps.setString(1,email);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				o=new Food_Order();
				o.setId(rs.getInt(1));
				o.setOrder_id(rs.getString(2));
				o.setUserName(rs.getString(3));
				o.setEmail(rs.getString(4));
				o.setFulladd(rs.getString(5));
				o.setPhone(rs.getString(6));
				o.setCusinename(rs.getString(7));
				o.setDescription(rs.getString(8));
				o.setDiscount_percent(rs.getString(9));
				o.setPrice(rs.getString(10));
				o.setPaymentType(rs.getString(11));
				o.setCartdetail(rs.getString(12));
				list.add(o);
			}
		}
		
		catch(Exception e) 
		{
			e.printStackTrace();
			}
		return list;
	}

	@Override
	public List<Food_Order> listOfOrderforAdmin() {
		List<Food_Order> list=new  ArrayList<Food_Order>();
		Food_Order o=null;
		try {
			String sql="select * from f_order ";
			PreparedStatement ps=conn.prepareStatement(sql)	;
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				o=new Food_Order();
				o.setId(rs.getInt(1));
				o.setOrder_id(rs.getString(2));
				o.setUserName(rs.getString(3));
				o.setEmail(rs.getString(4));
				o.setFulladd(rs.getString(5));
				o.setPhone(rs.getString(6));
				o.setCusinename(rs.getString(7));
				o.setDescription(rs.getString(8));
				o.setDiscount_percent(rs.getString(9));
				o.setPrice(rs.getString(10));
				o.setPaymentType(rs.getString(11));
				o.setCartdetail(rs.getString(12));
				list.add(o);
			}
		}
		
		catch(Exception e) 
		{
			e.printStackTrace();
			}
		return list;
	}
	
	

}
