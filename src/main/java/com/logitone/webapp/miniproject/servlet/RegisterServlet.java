package com.logitone.webapp.miniproject.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.logitone.webapp.miniproject.dao.UserDao;
import com.logitone.webapp.miniproject.entities.User;
import com.logitone.webapp.miniproject.helper.ConnectionProvider;

public class RegisterServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		try (PrintWriter out = resp.getWriter()) {

			// fetch all form data

			String check = request.getParameter("check");
			if (check == null) {
				out.println("box is not checked");
			} else {
				// rest of the data
				String name = request.getParameter("user_name");
				String email = request.getParameter("user_email");
				String password = request.getParameter("user_password");
				String gender = request.getParameter("gender");
				String about = request.getParameter("about");
				// create user object and set all data to that object
				User user = new User(name, email, password, gender, about);
				// create userDao object
				UserDao dao = new UserDao();
				if (dao.saveUser(user)) {
					// save..
					RequestDispatcher rs = request.getRequestDispatcher("./login_page.jsp");
					rs.forward(request, resp);
					out.println("Registration Successful");
				} else {
					out.println("error");
				}

			}
		}
	}

}
