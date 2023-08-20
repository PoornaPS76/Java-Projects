package packetprep.Factory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Driver_Connection {
	public static Connection getdbConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "Ps@mysql76");
			System.out.println(con);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return con;
	}

	public static void main(String[] args) {
		System.out.println(Driver_Connection.getdbConnection());

	}

}
