package com.uDAO;

import java.util.List;

import com.uentity.CusineList;
import com.uentity.Food_Order;

public interface OrderDao {
	public int getOrderNo();
	public boolean saveOrder(List<Food_Order> fo);
   public List<Food_Order> getCusine(String email);
   public List<Food_Order> listOfOrderforAdmin();
}
