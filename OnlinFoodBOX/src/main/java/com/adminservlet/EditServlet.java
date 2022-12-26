package com.adminservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.uDAO.CusineImpDao;
import com.uentity.CusineList;
@WebServlet("/editCusine")
public class EditServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	try {
		 int id=Integer.parseInt(req.getParameter("id"));
		 String fname=req.getParameter("ename");
		 String description=req.getParameter("description");
		 String price=req.getParameter("price");
		 String discountpercent=req.getParameter("discountpercent");
		 String Category=req.getParameter("category");
		 String status=req.getParameter("status");
		 CusineList c=new CusineList();
		 c.setFid(id);
		 c.setFname(fname);
		 c.setDescription(description);
		 c.setPrice(price);
		 c.setDiscountpercent(discountpercent);
		 c.setCategory(Category);
		 c.setStatus(status);
		 CusineImpDao dao= new CusineImpDao(DBConnect.getConn());
		 boolean f=dao.updateEdit(c);
		 HttpSession session=req.getSession();
		 if(f)
		 {
			 session.setAttribute("succMsg","Cusine Updated");
			 resp.sendRedirect("admin/listcusine.jsp");
		 }
		 else
		 {
			 session.setAttribute("failedMsg","Cusine not Edited");
			 resp.sendRedirect("admin/listcusine.jsp");
		 }
	}
	catch(Exception e) {
		
		e.printStackTrace();
	}
		
		
	}

}
