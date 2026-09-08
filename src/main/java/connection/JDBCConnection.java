package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCConnection {
	// database
	private final static String url = "jdbc:mysql://localhost:3307/TrungTam";
	private final static String username = "root";
	private final static String password = "Root@123456";
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection(url,username,password);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
}
