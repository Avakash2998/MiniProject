package com.logitone.webapp.miniproject.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.logitone.webapp.miniproject.dao.UserDao;
import com.logitone.webapp.miniproject.entities.Message;
import com.logitone.webapp.miniproject.entities.User;
import com.logitone.webapp.miniproject.helper.ConnectionProvider;
@MultipartConfig
public class EditServlet extends HttpServlet {
@Override
protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html");
	try (PrintWriter out = response.getWriter()) {
		
		//fetch all data
		String userEmail = request.getParameter("user_email");
		String userName = request.getParameter("user_name");
		String userPassword = request.getParameter("user_password");
		String userGender = request.getParameter("user_gender");
		String userAbout = request.getParameter("user_about");
		Part part = request.getPart("image");
		String imageName=part.getSubmittedFileName();
		
		//get the user from the session
		HttpSession s = request.getSession();
		User user =(User)s.getAttribute("currentUser");
		user.setEmail(userEmail);
		user.setName(userName);
		user.setPassword(userPassword);
		user.setAbout(userAbout);
		user.setProfile(imageName);
		
		//update database
		UserDao userDao = new UserDao();
		boolean ans = userDao.updateUser(user);
		if(ans) {
			out.println("updated to db");
		}
		else {
			out.print("not updated");
		}
	 }
  }

}

