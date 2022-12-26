package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.uDAO.UserImpDao;
import com.uentity.User;
@WebServlet("/register")
public class RegistterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	try {
		
		String name=req.getParameter("fname");
		String phone=req.getParameter("phone");
		String email=req.getParameter("email");
		String pwd=req.getParameter("pwd");
		String check=req.getParameter("check");
	//	System.out.println(name+""+phone+"" +email+""+pwd+""+check);//
		User us=new User();
		us.setName(name);
		us.setPhone(phone);
		us.setEmail(email);
		us.setPassword(pwd);
		HttpSession session=req.getSession();
		if(check!=null) {
		UserImpDao dao=new UserImpDao(DBConnect.getConn());
		boolean f2=dao.checkUser(email);
		if(f2)
		{	boolean f=dao.userRegister(us);
				
				if(f) {
					
					//System.out.println("User Registered Successfully");
					session.setAttribute("succMsg","Registered Successfully");
					resp.sendRedirect("rejister.jsp");
				}else {
					
					//System.out.println("Something went wrong!!");
					session.setAttribute("failedMsg","Something wrong on server!!");
					resp.sendRedirect("rejister.jsp");
				}
				}
		else
		{   
			session.setAttribute("failedMsg","User Already Exist Try Another Email Id!!");
			resp.sendRedirect("rejister.jsp");
			
		}

		
		}
		else {
			
			//System.out.println("Please click on Agree & term condition checkbox to proceed");
			session.setAttribute("failedMsg","Please check Agree & term condition ");
			resp.sendRedirect("rejister.jsp");	
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();;
	}
	}

}
