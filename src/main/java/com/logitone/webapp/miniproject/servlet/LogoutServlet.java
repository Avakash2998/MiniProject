package com.logitone.webapp.miniproject.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.logitone.webapp.miniproject.dao.UserDao;
import com.logitone.webapp.miniproject.entities.Message;
import com.logitone.webapp.miniproject.entities.User;


public class LogoutServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		try (PrintWriter out = response.getWriter()) {
			
            HttpSession s = request.getSession();  
            s.removeAttribute("currentUser");
            Message m = new Message("Logout Successfully", "success", "alert-success");
            s.setAttribute("msg", m);
            response.sendRedirect("login_page.jsp");
		}

	}

}
  
