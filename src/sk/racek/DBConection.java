package sk.racek;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConection {
	public static final String DEFAULT_URL = "jdbc:postgresql://localhost:5432/zadanie";
	public static final String DEFAULT_USERNAME = "David Racek";
	public static final String JDBC_DRIVER = "org.postgresql.Driver"; 
	
	/**
	 * Returns SQL Connection. For establishing db connection it uses private
	 * static variables dbUrl, dbUssername, dbPassword
	 * 
	 * @return Connection if there were no errors
	 * @throws SQLException
	 * @throws ClassNotFoundException 
	 */
	public static Connection getConection(String dbUrl, String username, String password) throws SQLException, ClassNotFoundException {
		Class.forName(JDBC_DRIVER);
		return DriverManager.getConnection(dbUrl, username, password);
	}

}
