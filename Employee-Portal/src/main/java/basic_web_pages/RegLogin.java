package basic_web_pages;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class RegLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegLogin() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc", "root", "Ps@mysql76");

			String username = request.getParameter("username");
			String password = request.getParameter("password");

			PrintWriter pw = response.getWriter();
			response.setContentType("text/html");

			String sql = "select username,password from reg where username = ? and password = ?";

			pst = con.prepareStatement(sql);

			pst.setString(1, username);
			pst.setString(2, password);

			rs = pst.executeQuery();

			if (rs.next()) {
				RequestDispatcher rd = request.getRequestDispatcher("Registration.html");
				rd.forward(request, response);
			}
			else {
				RequestDispatcher rd = request.getRequestDispatcher("reg_login.html");
				pw.println("Invalid username/password");
				rd.include(request, response);
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
