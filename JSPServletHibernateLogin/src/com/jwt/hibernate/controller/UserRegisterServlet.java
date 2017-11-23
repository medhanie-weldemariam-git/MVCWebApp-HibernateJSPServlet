package com.jwt.hibernate.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jwt.hibernate.model.User;
import com.jwt.hibernate.service.RegisterService;

@WebServlet(name = "UserRegisterServlet", urlPatterns = { "/UserRegisterServlet" })
public class UserRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		String first_name = request.getParameter("firstName");
		String last_name = request.getParameter("lastName");
		String e_mail = request.getParameter("email");
		String user_name = request.getParameter("userName");
		String pass_word = request.getParameter("passWord");

		User user = new User(first_name, last_name, e_mail, user_name,
				pass_word);

		try {
			RegisterService registerService = new RegisterService();
			boolean result = registerService.register(user);
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Registration Successful</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<center>");
			if (result) {
				out.println("<h1>Thanks for Registering with us :</h1>");
				out.println("To login with new UserId and Password<a href=login.jsp>Click here</a>");
			} else {
				out.println("<h1>Registration Failed</h1>");
				out.println("To try again<a href=register.jsp>Click here</a>");
			}
			out.println("</center>");
			out.println("</body>");
			out.println("</html>");
		} finally {
			out.close();
		}

	}
}
