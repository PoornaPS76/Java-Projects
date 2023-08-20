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
 * Servlet implementation class Update_Profile
 */
public class Update_Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Update_Profile() {
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
		// PrintWriter pw=response.getWriter();
		String id = request.getParameter("id");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String confirmpassword = request.getParameter("confirmpassword");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String location = request.getParameter("location");
		String state = request.getParameter("state");
		String pincode = request.getParameter("pincode");

		Reg r = new Reg();

		r.setId(id);
		System.out.println(r.getId());
		r.setFirstname(firstname);
		System.out.println(r.getFirstname());

		r.setLastname(lastname);
		System.out.println(r.getLastname());
		r.setUsername(username);
		System.out.println(r.getUsername());
		r.setPassword(password);
		System.out.println(r.getPassword());
		r.setConfirmpassword(confirmpassword);
		System.out.println(r.getConfirmpassword());
		r.setGender(gender);
		System.out.println(r.getGender());

		r.setDob(dob);
		System.out.println(r.getDob());
		r.setEmail(email);
		System.out.println(r.getEmail());
		r.setMobile(mobile);
		System.out.println(r.getMobile());
		r.setLocation(location);
		System.out.println(r.getLocation());
		r.setState(state);
		System.out.println(r.getState());
		r.setPincode(pincode);
		System.out.println(r.getPincode());

		try {
			boolean b = UserDAO.updateUser(r);

			if (b == true) {
				RequestDispatcher rd = request.getRequestDispatcher("Detailes_Updated.jsp");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("Details_Update_Failed.jsp");
				rd.forward(request, response);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
