package com.uDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.uentity.CusineList;

public class CusineImpDao implements CusineDao{
	
	
	private Connection conn;
	
	public CusineImpDao(Connection conn) {
		super();
		this.conn = conn;
	}


	public boolean addCusine(CusineList cl) {
		boolean f=false;
		try
		{
			String sql="insert into list(name,description,price,category,status,photo,email,discountpercent) values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, cl.getFname());
			ps.setString(2, cl.getDescription());
			ps.setString(3, cl.getPrice());
			ps.setString(4, cl.getCategory());
			ps.setString(5, cl.getStatus());
			ps.setString(6, cl.getPhotoname());
			ps.setString(7, cl.getEmail());
			ps.setString(8, cl.getDiscountpercent());
			
			int row=ps.executeUpdate();
			if(row==1) {
				f=true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
	
		
	}
		return f;
}
	
	
	public List<CusineList> getallCusine() {
		List<CusineList> list=new ArrayList<CusineList>();
		CusineList cl1=null;
		try {
			
			String sql="select * from list";
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				
				cl1=new CusineList();
				cl1.setFid(rs.getInt(1));
				cl1.setFname(rs.getString(2));
				cl1.setDescription(rs.getString(3));
				cl1.setPrice(rs.getString(4));
				cl1.setCategory(rs.getString(5));
				cl1.setStatus(rs.getString(6));
				cl1.setPhotoname(rs.getString(7));
				cl1.setEmail(rs.getString(8));
				cl1.setDiscountpercent(rs.getString(9));
				cl1.setDiscountamount(rs.getString(10));
			     cl1.setFinalprice(rs.getString(11));//
	                     list.add(cl1);
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
			}
		return list;
	}



	public CusineList getCusineByID(int fid) {
		CusineList c=null;
		try {
			String sql="select * from list where fid=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1,fid);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				
						
			c=new CusineList();
			c.setFid(rs.getInt(1));
			c.setFname(rs.getString(2));
			c.setDescription(rs.getString(3));
			c.setPrice(rs.getString(4));
			c.setCategory(rs.getString(5));
			c.setStatus(rs.getString(6));
			c.setPhotoname(rs.getString(7));
			c.setEmail(rs.getString(8));
			c.setDiscountpercent(rs.getString(9));
			c.setDiscountamount(rs.getString(10));
		     c.setFinalprice(rs.getString(11));//
		}}
		catch(Exception e)
		{  e.printStackTrace();}
		return c;
	}


	
	public boolean updateEdit(CusineList c) {
		boolean f=false;
		try {
			String sql="UPDATE list SET name=?,description=?,price = ?,discountpercent=?,status=?,category=? WHERE fid=? ";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,c.getFname());
			ps.setString(2,c.getDescription());
			ps.setString(3,c.getPrice());
			ps.setString(4, c.getDiscountpercent());
			ps.setString(5,c.getStatus());
			ps.setString(6, c.getCategory());
			ps.setInt(7, c.getFid());
			
			int row=ps.executeUpdate();
			if(row==1)
			{
				f=true;
				}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}


	
	public boolean deleteservlet(int id) {
		boolean f=false;
		try {
			
			String sql="delete from list where fid=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1,id);
			int r=ps.executeUpdate();
			if(r==1) {
				f=true;
			}
		}
		catch(Exception e)
		{
			
			e.printStackTrace();
		}
		
		
		return f;
	}


	
	public List<CusineList> getVegItem() {
		List<CusineList> list=new ArrayList<CusineList>();
		CusineList c=null;
		try {
			String sql="Select * from list where category=? and status=? order by fid desc";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "Veg");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			int i=1;
			while(rs.next() && i<=4) {
				c= new CusineList();
				c.setFid(rs.getInt(1));
				c.setFname(rs.getString(2));
				c.setDescription(rs.getString(3));
				c.setPrice(rs.getString(4));
				c.setCategory(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoname(rs.getString(7));
				c.setEmail(rs.getString(8));
				c.setDiscountpercent(rs.getString(9));
				c.setDiscountamount(rs.getString(10));
			     c.setFinalprice(rs.getString(11));//
				list.add(c);
				i++;
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}


	
	public List<CusineList> getNon_VegItem() {
		List<CusineList> list=new ArrayList<CusineList>();
		CusineList c=null;
		try {
			String sql="Select * from list where category=? and status=? order by fid desc";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "Non-Veg");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			int i=1;
			while(rs.next() && i<=4) {
				c= new CusineList();
				c.setFid(rs.getInt(1));
				c.setFname(rs.getString(2));
				c.setDescription(rs.getString(3));
				c.setPrice(rs.getString(4));
				c.setCategory(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoname(rs.getString(7));
				c.setEmail(rs.getString(8));
				c.setDiscountpercent(rs.getString(9));
				c.setDiscountamount(rs.getString(10));
			     c.setFinalprice(rs.getString(11));//
				list.add(c);
				i++;
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}


	
	public List<CusineList> getSweetItem() {
		List<CusineList> list=new ArrayList<CusineList>();
		CusineList c=null;
		try {
			String sql="Select * from list where category=? and status=? order by fid desc";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "Sweet");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			int i=1;
			while(rs.next() && i<=4) {
				c= new CusineList();
				c.setFid(rs.getInt(1));
				c.setFname(rs.getString(2));
				c.setDescription(rs.getString(3));
				c.setPrice(rs.getString(4));
				c.setCategory(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoname(rs.getString(7));
				c.setEmail(rs.getString(8));
				c.setDiscountpercent(rs.getString(9));
				c.setDiscountamount(rs.getString(10));
			     c.setFinalprice(rs.getString(11));//
				list.add(c);
				i++;
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}


	
	public List<CusineList> getBurgerPizza() {
		List<CusineList> list=new ArrayList<CusineList>();
		CusineList c=null;
		try {
			String sql="Select * from list where category=? and status=? order by fid desc";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "Burgur/pizza");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			int i=1;
			while(rs.next() && i<=4) {
				c= new CusineList();
				c.setFid(rs.getInt(1));
				c.setFname(rs.getString(2));
				c.setDescription(rs.getString(3));
				c.setPrice(rs.getString(4));
				c.setCategory(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoname(rs.getString(7));
				c.setEmail(rs.getString(8));
				c.setDiscountpercent(rs.getString(9));//
				c.setDiscountamount(rs.getString(10));
			     c.setFinalprice(rs.getString(11));//
				list.add(c);
				i++;
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}



	public List<CusineList> getAllVegItem() {
		List<CusineList> list=new ArrayList<CusineList>();
		CusineList c=null;
		try {
			String sql="Select * from list where category=? and status=? order by fid desc";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "Veg");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				c= new CusineList();
				c.setFid(rs.getInt(1));
				c.setFname(rs.getString(2));
				c.setDescription(rs.getString(3));
				c.setPrice(rs.getString(4));
				c.setCategory(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoname(rs.getString(7));
				c.setEmail(rs.getString(8));
				c.setDiscountpercent(rs.getString(9));
				c.setDiscountamount(rs.getString(10));
			     c.setFinalprice(rs.getString(11));
				list.add(c);
				
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}



	public List<CusineList> getAllNon_VegItem() {
		List<CusineList> list=new ArrayList<CusineList>();
		CusineList c=null;
		try {
			String sql="Select * from list where category=? and status=? order by fid desc";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "Non-Veg");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
		
			while(rs.next()) {
				c= new CusineList();
				c.setFid(rs.getInt(1));
				c.setFname(rs.getString(2));
				c.setDescription(rs.getString(3));
				c.setPrice(rs.getString(4));
				c.setCategory(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoname(rs.getString(7));
				c.setEmail(rs.getString(8));
				c.setDiscountpercent(rs.getString(9));
				c.setDiscountamount(rs.getString(10));
			     c.setFinalprice(rs.getString(11));
				list.add(c);
			
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}


	
	public List<CusineList> getAllSweetItem() {
		List<CusineList> list=new ArrayList<CusineList>();
		CusineList c=null;
		try {
			String sql="Select * from list where category=? and status=? order by fid desc";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "Sweet");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				c= new CusineList();
				c.setFid(rs.getInt(1));
				c.setFname(rs.getString(2));
				c.setDescription(rs.getString(3));
				c.setPrice(rs.getString(4));
				c.setCategory(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoname(rs.getString(7));
				c.setEmail(rs.getString(8));
				c.setDiscountpercent(rs.getString(9));//
				c.setDiscountamount(rs.getString(10));
			     c.setFinalprice(rs.getString(11));//
				list.add(c);
				
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}


	
	public List<CusineList> getAllBurgerPizza() {
		List<CusineList> list=new ArrayList<CusineList>();
		CusineList c=null;
		try {
			String sql="Select * from list where category=? and status=? order by fid desc";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "Burgur/pizza");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
		
			while(rs.next()) {
				c= new CusineList();
				c.setFid(rs.getInt(1));
				c.setFname(rs.getString(2));
				c.setDescription(rs.getString(3));
				c.setPrice(rs.getString(4));
				c.setCategory(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoname(rs.getString(7));
				c.setEmail(rs.getString(8));
				c.setDiscountpercent(rs.getString(9));//
				c.setDiscountamount(rs.getString(10));
			    c.setFinalprice(rs.getString(11));//
				list.add(c);
				
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}


	@Override
	public List<CusineList> getCusinebySearch(String Ch) {
		List<CusineList> list= new ArrayList<CusineList>();
		CusineList c=null;
		try {
		String sql="select * from list where name like ? or description like ? or category like ? and status=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1,"%"+ Ch+"%");
		ps.setString(2,"%"+ Ch+"%");
		ps.setString(3,"%"+ Ch+"%");
		ps.setString(4,"Active");
		ResultSet rs=ps.executeQuery();
		
		while(rs.next()) {
			c= new CusineList();
			c.setFid(rs.getInt(1));
			c.setFname(rs.getString(2));
			c.setDescription(rs.getString(3));
			c.setPrice(rs.getString(4));
			c.setCategory(rs.getString(5));
			c.setStatus(rs.getString(6));
			c.setPhotoname(rs.getString(7));
			c.setEmail(rs.getString(8));
			c.setDiscountpercent(rs.getString(9));//
			c.setDiscountamount(rs.getString(10));
		    c.setFinalprice(rs.getString(11));
		    list.add(c);
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		
		}
		
		return list;
	}


	




	
}
	
