package com.user.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.uDAO.CartImpDao;
import com.uDAO.OrderImpDao;
import com.uentity.Cart;
import com.uentity.Food_Order;
@WebServlet("/order")
public class Order_Servlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try{
			HttpSession session=req.getSession();
			int id =Integer.parseInt(req.getParameter("id"));
			String name=req.getParameter("name");
			String email=req.getParameter("email");
			String phone=req.getParameter("phone");
			String address=req.getParameter("address");
			String landmark=req.getParameter("landmark");
			String state=req.getParameter("state");
			String city=req.getParameter("city");
			String pincode=req.getParameter("zip");
			String modeofpayment=req.getParameter("mop");
			String cardname=req.getParameter("Cardholder_Name");
			String cardnum=req.getParameter("Card_Number");
			String expiration=req.getParameter("expdate");
			String cvv=req.getParameter("cvv");
			String Fulladdress=address+","+landmark+","+state+","+city+","+pincode;
			String carddetail=cardname+","+cardnum+","+expiration+","+cvv;
		
			CartImpDao dao=new  CartImpDao(DBConnect.getConn());
			List<Cart> clist=dao.getFoodByUser(id);
			if(clist.isEmpty()) {
				session.setAttribute("failedMsg", "Add the food-item");
				resp.sendRedirect("checkout.jsp");
			}
			else {
			OrderImpDao dao2=new OrderImpDao(DBConnect.getConn());
			
			Food_Order o=null;
			ArrayList<Food_Order> orderlist=new ArrayList<Food_Order>();
			Random r=new Random();
			for(Cart ca:clist) {
				o=new Food_Order();
			    o.setOrder_id("FOOD-ORD-00"+r.nextInt(1000));
			    o.setUserName(name);
			    o.setEmail(email);
			    o.setFulladd(Fulladdress);
			    o.setPhone(phone);			 
			    o.setCusinename(ca.getFname());
			    o.setDescription(ca.getFdescription());
			    o.setDiscount_percent(ca.getDiscount()+"");
			    o.setPrice(ca.getPrice()+"");
			    o.setPaymentType(modeofpayment);
			    o.setCartdetail(carddetail);
			    orderlist.add(o);
			   
			}
			if("noselect".equals(modeofpayment)) {
				session.setAttribute("failedMsg", "Choose Payment Method");
				resp.sendRedirect("checkout.jsp");
			}else {
				boolean f=dao2.saveOrder(orderlist);
				if(f)
				{
					resp.sendRedirect("order_success.jsp");
				}else {
					session.setAttribute("failedMsg","Your order Failed");
					resp.sendRedirect("checkout.jsp");
				}
				
			}
			}
			
		}
		catch(Exception e) 
		{
			e.printStackTrace();
		}
	}

}
