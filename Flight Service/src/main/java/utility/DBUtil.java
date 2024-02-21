package utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CSJJSPDB", "root", "root");
			System.out.println("Connection established");
			
		} catch (Exception e) {
			System.out.println(e);
			
		}
		return con;
	}

}
