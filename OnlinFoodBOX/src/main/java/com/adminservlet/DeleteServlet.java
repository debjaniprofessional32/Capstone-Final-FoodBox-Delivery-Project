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

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			
			CusineImpDao dao=new CusineImpDao(DBConnect.getConn());
			boolean f=dao.deleteservlet(id);
			HttpSession session=req.getSession();
			 if(f)
			 {
				 session.setAttribute("succMsg","Cusine Deleted");
				 resp.sendRedirect("admin/listcusine.jsp");
			 }
			 else
			 {
				 session.setAttribute("failedMsg","Cusine not Deleted");
				 resp.sendRedirect("admin/listcusine.jsp");
			 }
		}
		catch(Exception e)
		{e.printStackTrace();}
	}

}
