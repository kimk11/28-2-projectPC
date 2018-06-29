package pc.driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Driver {
	private Connection connection = null;
	
	public Connection driverConnection() throws ClassNotFoundException, SQLException {
		String className = "com.mysql.jdbc.Driver";
		String jdbcDriver = "jdbc:mysql://localhost:3306/pcdb?useUnicode=true&characterEncoding=euckr";
		String dbUser = "pcid";
		String dbPass = "pcpw";
		
		Class.forName(className);
		connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		
		return	connection;
	}
}
