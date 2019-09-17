package com.onlineShopping.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.onlineShopping.dao.*;
import com.onlineShopping.pojo.User;


@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;



	User u=new User();
	UserDao au=new UserDao();


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



		HttpSession session=request.getSession();
		String action=request.getParameter("action");

		if(action!=null && action.equals("delet"))
		{
			String nm=request.getParameter("emailid");

			boolean d=au.deletuser(nm);
			if(d) {
				response.sendRedirect("User");
			}
		}
		else if (action!=null && action.equals("edit")) {
			String nm=request.getParameter("emailid");
			User u1=au.getUserById(nm);
			session.setAttribute("u", u1);
			response.sendRedirect("updateUser.jsp");
		}

		else {
			List<User> li=au.getlist();
			session.setAttribute("ulist", li);
			response.sendRedirect("userList.jsp");
		}




	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action=request.getParameter("action");
		String name=request.getParameter("name");
		String contact=request.getParameter("contact");
	  //String address=request.getParameter("add");
		String emailid=request.getParameter("emailid");
		String pass=request.getParameter("pass");
		String cpass=request.getParameter("cpass");

		u.setName(name);
		u.setContact(contact);
	  //u.setAddress(address);
		u.setEmail(emailid);
		u.setPass(pass);


		if(pass!=null && pass.equals(cpass))
		{
			boolean b=au.adduser(u);

			if(b)
			{
				response.sendRedirect("success.jsp");
			}
		}
		else
		{
			response.sendRedirect("error.jsp");
		}


		if (action!=null && action.equals("updateUser")) {

			boolean b=au.edituser(u);
			if(b) {
				response.sendRedirect("User");
			}

		}

	}

}
