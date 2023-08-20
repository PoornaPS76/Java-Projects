package packetprep.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import packetprep.DAO.UserDAO;
import packetprep.Model.Apply_Leave;

/**
 * Servlet implementation class Apply_Leave
 */
public class Apply_Leave_Servlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Apply_Leave_Servlet1() {
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
		String username = request.getParameter("username");

		String from_date = request.getParameter("from_date");
		String to_date = request.getParameter("to_date");
		// int no_of_days = Integer.parseInt(request.getParameter("no_of_days"));
		String subject = request.getParameter("subject");
		String reason = request.getParameter("reason");

		Apply_Leave a = new Apply_Leave();

		a.setUsername(username);

		a.setFrom_date(from_date);
		a.setTo_date(to_date);

		a.setSubject(subject);
		a.setReason(reason);

		boolean b;
		try {
			b = UserDAO.leaveReport(a);
			if (b == true) {
				pw.print("Leave Applied");
			} else {
				pw.print("Leave Not Applied");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
