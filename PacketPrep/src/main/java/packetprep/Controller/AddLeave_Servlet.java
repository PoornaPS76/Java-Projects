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
import packetprep.Model.Add_Leave;

/**
 * Servlet implementation class AddLeave_Servlet
 */
public class AddLeave_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddLeave_Servlet() {
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
		String casual_leaves = request.getParameter("casual_leaves");
		String sick_leaves = request.getParameter("sick_leaves");
		String payoff_leaves = request.getParameter("payoff_leaves");
		String leaves_used = request.getParameter("leaves_used");
		String total_leaves = request.getParameter("total_leaves");

		Add_Leave al = new Add_Leave();

		al.setUsername(username);
		al.setCasual_leaves(casual_leaves);
		al.setSick_leaves(sick_leaves);
		al.setPayoff_leaves(payoff_leaves);
		al.setLeaves_used(leaves_used);
		al.setTotal_leaves(total_leaves);

		boolean b;

		try {
			b = UserDAO.addleave(al);
			if (b == true) {
				RequestDispatcher rd = request.getRequestDispatcher("Leaves_Added.jsp");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("Leaves_Adding_Failed.jsp");
				rd.forward(request, response);
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
