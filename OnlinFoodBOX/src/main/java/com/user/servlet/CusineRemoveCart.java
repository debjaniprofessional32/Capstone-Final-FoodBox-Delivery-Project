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
@WebServlet("/remove_Cusine")
public class CusineRemoveCart extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int fid=Integer.parseInt(req.getParameter("fid"));
		int uid=Integer.parseInt(req.getParameter("uid"));
		int cid=Integer.parseInt(req.getParameter("cid"));
		CartImpDao dao=new CartImpDao(DBConnect.getConn());
		boolean f=dao.deleteCusine(fid,uid,cid);
		HttpSession session=req.getSession();
		if(f) {
			
			session.setAttribute("succMsg", "Cusine removed from the cart");
			resp.sendRedirect("checkout.jsp");
		}else {
			session.setAttribute("failedMsg", "Cusine is still in cart");
			resp.sendRedirect("checkout.jsp");
		}
	}

}
