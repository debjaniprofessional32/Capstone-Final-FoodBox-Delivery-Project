package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.uDAO.UserImpDao;
import com.uentity.User;
@WebServlet("/update_profile")
public class UserProfileUpdate extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			String name=req.getParameter("name");
			String phone=req.getParameter("phone");
			String email=req.getParameter("email");
			String pwd=req.getParameter("pwd");
			User us=new User();
			us.setId(id);
			us.setName(name);
			us.setPhone(phone);
			us.setEmail(email);
			HttpSession session=req.getSession();

			UserImpDao dao=new UserImpDao(DBConnect.getConn());
            boolean f=dao.checkPassword(id, pwd);
            if(f) 
            { 
            	boolean f2=  dao.updateProfile(us);
                       if(f2)
                       {session.setAttribute("succMsg","User profile updated Successfully");
           			resp.sendRedirect("Edit_Profile.jsp");
            	      }else 
            	      {session.setAttribute("failedMsg","something wrong on server");
          			resp.sendRedirect("Edit_Profile.jsp");
                      }}
                       else{
                    	   session.setAttribute("failedMsg","Your password incorrect");
               			resp.sendRedirect("Edit_Profile.jsp");
            	}
            
            }
		catch(Exception e)
		{
			e.printStackTrace();
			}
	}
  
}
