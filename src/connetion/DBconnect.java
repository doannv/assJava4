package connetion;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
	public static Connection getConnection() {
		Connection con = null;
		try {
			String url = "jdbc:sqlserver://localhost:1433;databaseName=QuanLyDienThoai";
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			con = DriverManager.getConnection(url, "sa", "123456");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

	
}
