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

import com.logitone.webapp.miniproject.dao.PostDao;
import com.logitone.webapp.miniproject.entities.Post;
import com.logitone.webapp.miniproject.entities.User;
import com.logitone.webapp.miniproject.helper.ConnectionProvider;

@MultipartConfig
public class AddPostServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		try (PrintWriter out = response.getWriter()) {

			int cid = Integer.parseInt(request.getParameter("cid"));
			String pTitle = request.getParameter("pTitle");
			String pContent = request.getParameter("pContent");
			String pCode = request.getParameter("pCode");
			Part part = request.getPart("pPic");
			// getting currentuser id
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("currentUser");
			Post p = new Post(pTitle, pContent, pCode, part.getSubmittedFileName(), cid, user.getId());
			PostDao dao = new PostDao(ConnectionProvider.getConnection());
			if (dao.savePost(p)) {
				out.println("done");
			} else {
				out.println("error");
			}
		}

	}

}