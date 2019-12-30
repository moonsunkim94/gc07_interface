package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCUtil {
	public static Connection getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
			System.out.println("DB Connection ����~~~~");
			return DriverManager.getConnection(url, "system", "oracle");

		} catch (Exception e) {
			System.out.println("DB Connection ���� => " + e.toString());
			return null;
		}
	}
}
