package packetprep.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import packetprep.DAO.UserDAO;
import packetprep.Model.Approve_Leave;

/**
 * Servlet implementation class Approve_Leave_Servlet
 */
public class Approve_Leave_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Approve_Leave_Servlet() {
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
		String status = request.getParameter("status");

		if (status != null && !status.isEmpty()) {
			Approve_Leave ap = new Approve_Leave();
			ap.setUsername(username);
			ap.setStatus(status);

			if (status.equalsIgnoreCase("Approve")) {
				try {
					boolean b = UserDAO.approveleave(ap);
					if (b) {
						RequestDispatcher rd = request.getRequestDispatcher("Leave_Approved.jsp");
						rd.forward(request, response);
					}
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			} else if (status.equalsIgnoreCase("Reject")) {
				try {
					boolean b = UserDAO.approveleave(ap);
					if (b) {
						RequestDispatcher rd = request.getRequestDispatcher("Leave_Rejected.jsp");
						rd.forward(request, response);
					}
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			} else {
				pw.print("Invalid status");
			}
		} else {
			pw.print("No status selected");
		}
	}

}
