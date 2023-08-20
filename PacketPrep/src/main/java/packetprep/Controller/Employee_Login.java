package packetprep.Controller;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class Employee_Login
 */
public class Employee_Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Employee_Login() {
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
		PrintWriter pw = response.getWriter();
		Reg r = new Reg();
		String username = request.getParameter("username");
		String pwd = request.getParameter("password");

		r.setUsername(username);
		r.setPassword(pwd);

		try {
			boolean b = UserDAO.validateUser(r);
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			if (b == true) {
				RequestDispatcher rd = request.getRequestDispatcher("Employee_Home.jsp");
				rd.forward(request, response);
			} else {
				pw.print("Login Again");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
