package pc.driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Driver {
	private Connection connection = null;
	
	public Connection driverConnection() throws ClassNotFoundException, SQLException {
		String className = "org.mariadb.jdbc.Driver";
		String jdbcDriver = "jdbc:mysql://kjw4968.cafe24.com:3306/kjw4968?useUnicode=true&characterEncoding=euckr";
		String dbUser = "kjw4968";
		String dbPass = "adsw0530!@";
		
		Class.forName(className);
		connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		
		return	connection;
	}
}
