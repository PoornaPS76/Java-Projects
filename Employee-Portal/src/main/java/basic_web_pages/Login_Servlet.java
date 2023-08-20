package basic_web_pages;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class Login_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public Login_Servlet() {
        super();
        }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		PrintWriter pw = response.getWriter();

		ServletContext sc = getServletContext();

		String uname = sc.getInitParameter("username");
		String pwd = sc.getInitParameter("password");

		if (username.equals(uname) && password.equals(pwd)) {
			RequestDispatcher rd = request.getRequestDispatcher("Admin.html");
			rd.forward(request, response);
			pw.println("Login Success");
		}
		else if(username.equals("ramu") && password.equals("456")) {
			RequestDispatcher rd = request.getRequestDispatcher("Ramu.html");
			rd.forward(request, response);
		}
		else if(username.equals("sai") && password.equals("123")) {
			RequestDispatcher rd = request.getRequestDispatcher("Sai.html");
			rd.forward(request, response);
		}
		else if(username.equals("satish") && password.equals("123")) {
			RequestDispatcher rd = request.getRequestDispatcher("Satish.html");
			rd.forward(request, response);
		}
		else if(username.equals("suresh") && password.equals("123")) {
			RequestDispatcher rd = request.getRequestDispatcher("Suresh.html");
			rd.forward(request, response);
		}
		else if(username.equals("rishin") && password.equals("123")) {
			RequestDispatcher rd = request.getRequestDispatcher("Rishin.html");
			rd.forward(request, response);
		}
		else if(username.equals("neeraj") && password.equals("123")) {
			RequestDispatcher rd = request.getRequestDispatcher("Neeraj.html");
			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd = request.getRequestDispatcher("Loginagain.html");
			rd.include(request, response);
		}
	}

}
