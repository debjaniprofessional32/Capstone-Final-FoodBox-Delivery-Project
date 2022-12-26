package com.uDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.uentity.Cart;

public class CartImpDao implements CartDao{

	
	private Connection conn;
	public CartImpDao(Connection conn) {
		
		this.conn=conn;
	}
	@Override
	public boolean addCart(Cart c) {
		boolean f=false;
		try {
			String sql="insert into cart(fid,uid,fname,fdescription,price,totalprice,discount) values(?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, c.getFid());
			ps.setInt(2, c.getUserid());
			ps.setString(3, c.getFname());
			ps.setString(4, c.getFdescription());
			ps.setDouble(5, c.getPrice());
			ps.setDouble(6, c.getTotalprice());
			ps.setDouble(7, c.getDiscount());//
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public List<Cart> getFoodByUser(int userID) {
		List<Cart> list =new ArrayList<Cart>();
		
		Cart c=null;
		double totalp=0;
		try {
			
			String sql="select * from cart where uid=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, userID);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				c=new Cart();
			    c.setCid(rs.getInt(1));
			    c.setFid(rs.getInt(2));
			    c.setUserid(rs.getInt(3));
			    c.setFname(rs.getString(4));
			    c.setFdescription(rs.getString(5));
			    c.setPrice(rs.getDouble(6));
			    
			    totalp=totalp+rs.getDouble(7);
			    c.setTotalprice(totalp);
			   
			    
			    c.setDiscount(rs.getDouble(8));
			    
			    
			    list.add(c);
			    
			    
			    
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	@Override
	public boolean deleteCusine(int fid,int uid,int cid)  {
		boolean f=false;
		try {
		String sql="delete from cart where fid=? and uid=? and cid=?" ;
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, fid);
		ps.setInt(2, uid);
		ps.setInt(3, cid);
		int i=ps.executeUpdate();
		if(i==1) {
			f=true;
		}
		
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		return f;
	}

}
