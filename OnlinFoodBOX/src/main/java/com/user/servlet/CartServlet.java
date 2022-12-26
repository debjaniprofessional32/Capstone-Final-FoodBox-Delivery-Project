package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.uDAO.CartImpDao;
import com.uDAO.CusineImpDao;
import com.uentity.Cart;
import com.uentity.CusineList;

@WebServlet("/cart")
public class CartServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int fid=Integer.parseInt(req.getParameter("fid"));
			int uid=Integer.parseInt(req.getParameter("uid"));
			CusineImpDao dao=new CusineImpDao(DBConnect.getConn());
			CusineList c=dao.getCusineByID(fid);
			Cart c1=new Cart();
			c1.setFid(fid);
			c1.setUserid(uid);
			c1.setFname(c.getFname());
			c1.setFdescription(c.getDescription());
			c1.setPrice(Double.parseDouble(c.getFinalprice()));
			c1.setTotalprice(Double.parseDouble(c.getFinalprice()));
			c1.setDiscount(Double.parseDouble(c.getDiscountpercent()));//
			CartImpDao dao2=new CartImpDao(DBConnect.getConn());
			boolean f=dao2.addCart(c1);
			HttpSession session=req.getSession();
			if(f)
			{
				session.setAttribute("addCart", "Cusine added to cart");
				resp.sendRedirect("all_veg.jsp");
			}
			else
			{System.out.println("Cart not added yet");
			session.setAttribute("failed", "Cusine not added to cart");
			resp.sendRedirect("all_veg.jsp");
			}
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
	}

}
