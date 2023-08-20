package packetprep.Controller;

import java.io.IOException;
//import java.io.PrintWriter;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import packetprep.DAO.UserDAO;
import packetprep.Model.Reg;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		// PrintWriter pw = response.getWriter();

		String uname = getServletContext().getInitParameter("username");
		String pwd = getServletContext().getInitParameter("password");

		if (username.equals(uname) && password.equals(pwd)) {
			RequestDispatcher rd = request.getRequestDispatcher("Manager_Home.jsp");
			rd.forward(request, response);

		}
		Reg s = new Reg();
		s.setUsername(username);
		s.setPassword(password);

		boolean b = false;
		try {
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			b = UserDAO.validateUser(s);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		if (b == true) {
			RequestDispatcher rd = request.getRequestDispatcher("Employee_Home.jsp");
			rd.forward(request, response);

		} else {
			RequestDispatcher rd = request.getRequestDispatcher("Login_Failed.jsp");
			rd.forward(request, response);
		}
	}

}
