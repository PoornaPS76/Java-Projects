package packetprep.Controller;

import java.io.IOException;
//import java.io.PrintWriter;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import packetprep.DAO.UserDAO;
import packetprep.Model.Reg;

/**
 * Servlet implementation class Reg
 */
public class Sign_up extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Sign_up() {
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
		String id = request.getParameter("id");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		Reg s = new Reg();
		s.setId(id);
		s.setFirstname(firstname);
		s.setLastname(lastname);
		s.setUsername(username);
		s.setPassword(password);

		// PrintWriter pw = response.getWriter();

		boolean b = false;
		try {
			b = UserDAO.registerUser(s);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		if (b == true) {
			RequestDispatcher rd = request.getRequestDispatcher("Registration_Success.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("Registration_Failed.jsp");
			rd.forward(request, response);
		}

	}
}
