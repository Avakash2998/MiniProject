package com.logitone.webapp.miniproject.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.logitone.webapp.miniproject.entities.Message;
import com.logitone.webapp.miniproject.dao.UserDao;
import com.logitone.webapp.miniproject.entities.User;
import com.logitone.webapp.miniproject.helper.ConnectionProvider;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		try {

			// login
			// fetch username and password from request
			String userEmail = request.getParameter("email");
			String userPassword = request.getParameter("password");
			UserDao dao = new UserDao();
			User u = dao.getUserByEmailAndPassword(userEmail, userPassword);
			if (u == null) {
				// login
				// error
				Message msg = new Message("Invalid Details! Try Again","error","alert-danger");
				HttpSession s = request.getSession();
				s.setAttribute("msg", msg);
				response.sendRedirect("login_page.jsp");
			} else {
				// login success
				HttpSession s = request.getSession();
				s.setAttribute("currentUser", u);
				response.sendRedirect("./HomeLinkControllerServlet?link=profile");
				
			}


		}catch (Exception e) {
			e.printStackTrace();
		}

	}

}
