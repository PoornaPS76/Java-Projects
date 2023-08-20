package packetprep.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import packetprep.Factory.Driver_Connection;
import packetprep.Model.Add_Leave;
import packetprep.Model.Apply_Leave;
import packetprep.Model.Approve_Leave;
import packetprep.Model.Reg;

public class UserDAO {
	public static boolean registerUser(Reg s) throws SQLException, ClassNotFoundException {
		Connection con = Driver_Connection.getdbConnection();

		String sql = "insert into registration values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, s.getId());
		pst.setString(2, s.getFirstname());
		pst.setString(3, s.getLastname());
		pst.setString(4, s.getUsername());
		pst.setString(5, s.getPassword());
		pst.setString(6, s.getConfirmpassword());
		pst.setString(7, s.getGender());
		pst.setString(8, s.getDob());
		pst.setString(9, s.getEmail());
		pst.setString(10, s.getMobile());
		pst.setString(11, s.getLocation());
		pst.setString(12, s.getState());
		pst.setString(13, s.getPincode());

		int i = pst.executeUpdate();
		if (i != 0)
			return true;
		else
			return false;

	}

	public static boolean validateUser(Reg s) throws SQLException {

		Connection con = Driver_Connection.getdbConnection();
		String sql = "select username,password from registration where username= ? and password= ?";
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, s.getUsername());
		pst.setString(2, s.getPassword());

		ResultSet rs = pst.executeQuery();

		if (rs.next())
			return true;
		else
			return false;
	}

	public static boolean updateUser(Reg s) throws SQLException {
		Connection con = Driver_Connection.getdbConnection();
		String sql = "UPDATE registration SET id=?, firstname=?, lastname=?, username=?, password=?, confirmpassword=?, gender=?, dob=?, email=?, mobile=?, location=?, state=?, pincode=? WHERE username = ?";
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, s.getId());
		pst.setString(2, s.getFirstname());
		pst.setString(3, s.getLastname());
		pst.setString(4, s.getUsername());
		pst.setString(5, s.getPassword());
		pst.setString(6, s.getConfirmpassword());
		pst.setString(7, s.getGender());
		pst.setString(8, s.getDob());
		pst.setString(9, s.getEmail());
		pst.setString(10, s.getMobile());
		pst.setString(11, s.getLocation());
		pst.setString(12, s.getState());
		pst.setString(13, s.getPincode());
		pst.setString(14, s.getUsername());

		int r = pst.executeUpdate();

		if (r != 0)
			return true;
		else
			return false;
	}

	public static boolean leaveReport(Apply_Leave a) throws SQLException {
		try {
			Connection con = Driver_Connection.getdbConnection();
			String sql = "insert into leavereport values (?,?,?,?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, a.getUsername());
			pst.setString(2, a.getFrom_date());
			pst.setString(3, a.getTo_date());
			pst.setString(4, a.getNo_of_days());
			pst.setString(5, a.getSubject());
			pst.setString(6, a.getReason());
			pst.setString(7, a.getStatus());

			int r = pst.executeUpdate();

			if (r != 0)
				return true;
			else
				return false;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public static boolean approveleave(Approve_Leave a) throws SQLException, ClassNotFoundException {
		Connection con = null;
		PreparedStatement pst = null;
		try {
			con = Driver_Connection.getdbConnection();
			String sql = "UPDATE leavereport SET status=? WHERE username=?";
			pst = con.prepareStatement(sql);

			pst.setString(1, a.getStatus());
			pst.setString(2, a.getUsername());

			int rowsAffected = pst.executeUpdate();
			return rowsAffected > 0;
		} finally {
			// Close the resources in the reverse order of their creation
			if (pst != null) {
				pst.close();
			}
			if (con != null) {
				con.close();
			}
		}
	}

	public static boolean addleave(Add_Leave al) throws SQLException, ClassNotFoundException {
		Connection con = null;
		PreparedStatement pst = null;
		try {
			con = Driver_Connection.getdbConnection();
			String sql = "insert into leaves values (?,?,?,?,?,?)";
			pst = con.prepareStatement(sql);

			pst.setString(1, al.getUsername());
			pst.setString(2, al.getCasual_leaves());
			pst.setString(3, al.getSick_leaves());
			pst.setString(4, al.getPayoff_leaves());
			pst.setString(5, al.getLeaves_used());
			pst.setString(6, al.getTotal_leaves());

			int rowsAffected = pst.executeUpdate();
			return rowsAffected > 0;
		}

		finally {
			// Close the resources in the reverse order of their creation
			if (pst != null) {
				pst.close();
			}
			if (con != null) {
				con.close();
			}
		}

	}
}
