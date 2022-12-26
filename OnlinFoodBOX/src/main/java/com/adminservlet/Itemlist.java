package com.adminservlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DB.DBConnect;
import com.uDAO.CusineImpDao;
import com.uentity.CusineList;
@MultipartConfig
@WebServlet("/additemlist")
public class Itemlist extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	try {
		
		 String fname=req.getParameter("cname");
		 String description=req.getParameter("description");
		 String price=req.getParameter("price");
		 String category=req.getParameter("category");
		 String status=req.getParameter("status");
		 String discountpercent=req.getParameter("discountpercent");
		 String discountAmount=req.getParameter("discountAmount");//
		 String finalprice=req.getParameter("final_price");//
		 Part part=req.getPart("fimg");
		 String fileName=part.getSubmittedFileName();
		 CusineList cl=new CusineList(fname,description,price,category,status,fileName,"admin",discountpercent,discountAmount,finalprice);
		CusineImpDao dao=new CusineImpDao(DBConnect.getConn());
			
		
		boolean f=dao.addCusine(cl);
			HttpSession session=req.getSession();
			if(f)
			{		
				String path2=getServletContext().getRealPath("")+"food";
			File f2=new File(path2);
			part.write(path2+File.separator+fileName);						
				
				session.setAttribute("succMsg", "New Cusine Added Succesfully");
				resp.sendRedirect("admin/addcusine.jsp");
				
			}else
			{
				session.setAttribute("failedMsg", "Cusine not added yet");
				resp.sendRedirect("admin/addcusin.jsp");
				
			}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	}

}
