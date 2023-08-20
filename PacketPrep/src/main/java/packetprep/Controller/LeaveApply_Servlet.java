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
import packetprep.Model.Apply_Leave;

/**
 * Servlet implementation class LeaveApply_Servlet
 */
public class LeaveApply_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LeaveApply_Servlet() {
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

		// PrintWriter pw = response.getWriter();
		String username = request.getParameter("username");
		String from_date = request.getParameter("from_date");
		String to_date = request.getParameter("to_date");
		String no_of_days = request.getParameter("no_of_days");
		String subject = request.getParameter("subject");
		String reason = request.getParameter("reason");

		Apply_Leave a = new Apply_Leave();

		a.setUsername(username);
		a.setFrom_date(from_date);
		a.setTo_date(to_date);
		a.setNo_of_days(no_of_days);
		a.setSubject(subject);
		a.setReason(reason);

		boolean b;
		try {
			b = UserDAO.leaveReport(a);
			if (b == true) {
				RequestDispatcher rd = request.getRequestDispatcher("Leave_Applied.jsp");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("Leave_Applying_Failed.jsp");
				rd.forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
