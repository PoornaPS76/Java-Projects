package basic_web_pages;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ServletContextDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletContextDemo() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		PrintWriter pw=response.getWriter();
		
		ServletContext sc= getServletContext();
		
		String uname = sc.getInitParameter("username");
		String pwd = sc.getInitParameter("password");
		
		if(username.equals(uname) && password.equals(pwd))
			pw.println("Login Success");
		else
			pw.print("Login Failed");
	}

}
