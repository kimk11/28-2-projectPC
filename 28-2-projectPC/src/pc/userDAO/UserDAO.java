package pc.userDAO;

import pc.DTO.UserDTO;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Connection;
import pc.driver.Driver;

public class UserDAO {
	Connection connection = null;
	PreparedStatement preparedstatement = null;
	
	public UserDTO userInsert(UserDTO userdto) throws ClassNotFoundException, SQLException {
		System.out.println("01_uInsert UserDAO.java");
		
		Driver driver = new Driver();
		connection = driver.driverConnection();
		System.out.println(connection + "<-- connection");
		
		preparedstatement = connection.prepareStatement("INSERT INTO pc_user VALUES (?, ?, ?, now())");
		preparedstatement.setString(1, userdto.getUserId());
		preparedstatement.setString(2, userdto.getUserPw());
		preparedstatement.setString(3, userdto.getUserName());
		
		return userdto;
	}
}
