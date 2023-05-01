package com.logitone.webapp.miniproject.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.logitone.webapp.miniproject.entities.Message;

public class HomeLinkControllerServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		RequestDispatcher rd =null;

		String link = request.getParameter("link");

		if (link.equals("loginform")) {
			rd=request.getRequestDispatcher("./login_page.jsp");
		}
		if (link.equals("registerform")) {
			rd=request.getRequestDispatcher("./register_page.jsp");
		}
		if (link.equals("profile")) {
			rd=request.getRequestDispatcher("./profile.jsp");
		}
		rd.forward(request, response);

	}

}
