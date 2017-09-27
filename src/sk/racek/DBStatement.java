package sk.racek;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class DBStatement {
	public static void executeInsertStatementToPersonTable(Connection dbConnection, PersonBean person, String tablePath)
			throws SQLException {
		String query = "INSERT INTO " + tablePath + " (name, email, age) VALUES ('" + person.getName() + "','"
				+ person.getEmail() + "', " + person.getAge() + ")";

		Statement statement = dbConnection.createStatement();
		statement.executeUpdate(query);
	}
}
