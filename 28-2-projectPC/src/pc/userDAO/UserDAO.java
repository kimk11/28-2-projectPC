package pc.userDAO;

import pc.DTO.UserDTO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Connection;

import pc.driver.Driver;

public class UserDAO {
	Connection connection = null;
	PreparedStatement preparedstatement = null;
	ResultSet result = null;
	
	public void userInsert(UserDTO userdto) throws ClassNotFoundException, SQLException {
		System.out.println("01_uInsert UserDAO.java");
		
		Driver driver = new Driver();
		connection = driver.driverConnection();
		System.out.println(connection + "<-- connection");
		
		preparedstatement = connection.prepareStatement("INSERT INTO pc_user (user_id, user_pw, user_name, user_date) VALUES (?, ?, ?, now())");
		preparedstatement.setString(1, userdto.getUserId());
		preparedstatement.setString(2, userdto.getUserPw());
		preparedstatement.setString(3, userdto.getUserName());
		
		preparedstatement.executeUpdate();
		
		preparedstatement.close();
		connection.close();
	}
	
	public ArrayList<UserDTO> userSelectByPage(int begin, int rowPerPage) throws ClassNotFoundException, SQLException {
		System.out.println("02_01_userSelectByPage UserDAO.java");
		
		ArrayList<UserDTO> list = new ArrayList<>();
		
		Driver driver = new Driver();
		connection = driver.driverConnection();
		System.out.println(connection + "<-- connection");
		
		preparedstatement = connection.prepareStatement("SELECT user_id, user_name FROM pc_user ORDER BY user_id ASC LIMIT ?, ?");
		preparedstatement.setInt(1, begin);
		preparedstatement.setInt(2, rowPerPage);
		
		result = preparedstatement.executeQuery();
		
		while(result.next()) {
			UserDTO userDto = new UserDTO();
			userDto.setUserId(result.getString("user_id"));
			userDto.setUserName(result.getString("user_name"));
			list.add(userDto);
		}
		
		result.close();
		preparedstatement.close();
		connection.close();
		
		return list;
	}
	
	public int userCount() throws ClassNotFoundException, SQLException {
		System.out.println("02_02_userCount UserDAO.java");

		int rowNumber = 0;
		
		Driver driver = new Driver();
		connection = driver.driverConnection();
		System.out.println(connection + "<-- connection");
		
		preparedstatement = connection.prepareStatement("SELECT count(*) AS count FROM pc_user");
		
		result = preparedstatement.executeQuery();
		
		if(result.next()) {
			rowNumber = result.getInt("count");
		}
		
		result.close();
		preparedstatement.close();
		connection.close();

		return rowNumber;
	}
	
	public UserDTO userSelectDetail(String userId) throws ClassNotFoundException, SQLException {
		System.out.println("03_userSelectDetail UserDAO.java");
		
		UserDTO userDto = new UserDTO();
		
		Driver driver = new Driver();
		connection = driver.driverConnection();
		System.out.println(connection + "<-- connection");
		
		preparedstatement = connection.prepareStatement("SELECT * FROM pc_user WHERE user_id = ?");
		preparedstatement.setString(1, userId);
		
		result = preparedstatement.executeQuery();
		
		if(result.next()) {
			userDto.setUserId(result.getString("user_id"));
			userDto.setUserPw(result.getString("user_pw"));
			userDto.setUserLevel(result.getString("user_level"));
			userDto.setUserName(result.getString("user_name"));
			userDto.setUserTime(result.getInt("user_time"));
			userDto.setUserDate(result.getString("user_date"));
			userDto.setUserPoint(result.getInt("user_point"));
			userDto.setSeatNo(result.getInt("seat_no"));
		}
		
		result.close();
		preparedstatement.close();
		connection.close();
		
		return userDto;
	}
	
	public UserDTO userSelectForm(String userId) throws ClassNotFoundException, SQLException {
		System.out.println("04_userSelectDetail UserDAO.java");
		
		UserDTO userDto = new UserDTO();
		
		Driver driver = new Driver();
		connection = driver.driverConnection();
		System.out.println(connection + "<-- connection");
		
		preparedstatement = connection.prepareStatement("SELECT * FROM pc_user WHERE user_id = ?");
		preparedstatement.setString(1, userId);
		
		result = preparedstatement.executeQuery();
		
		if(result.next()) {
			userDto.setUserId(result.getString("user_id"));
			userDto.setUserPw(result.getString("user_pw"));
			userDto.setUserLevel(result.getString("user_level"));
			userDto.setUserName(result.getString("user_name"));
			userDto.setUserTime(result.getInt("user_time"));
			userDto.setUserDate(result.getString("user_date"));
			userDto.setUserPoint(result.getInt("user_point"));
			userDto.setSeatNo(result.getInt("seat_no"));
		}
		
		result.close();
		preparedstatement.close();
		connection.close();
		
		return userDto;
	}
	
	public void userUpdate(UserDTO userDto) throws ClassNotFoundException, SQLException {
		System.out.println("05_userUpdate UserDAO.java");
		
		Driver driver = new Driver();
		connection = driver.driverConnection();
		System.out.println(connection + "<-- connection");
		
		preparedstatement = connection.prepareStatement("UPDATE pc_user SET user_id = ?, user_pw = ?, user_level = ?, user_name = ?, user_time = ?, user_date = ?, user_point = ?, seat_no = ? WHERE user_id = ?");
		preparedstatement.setString(1, userDto.getUserId());
		preparedstatement.setString(2, userDto.getUserPw());
		preparedstatement.setString(3, userDto.getUserLevel());
		preparedstatement.setString(4, userDto.getUserName());
		preparedstatement.setInt(5, userDto.getUserTime());
		preparedstatement.setString(6, userDto.getUserDate());
		preparedstatement.setInt(7, userDto.getUserPoint());
		preparedstatement.setInt(8, userDto.getSeatNo());
		preparedstatement.setString(9, userDto.getUserId());
		
		preparedstatement.executeUpdate();
		
		preparedstatement.close();
		connection.close();
	}
	
	public void userDelete(String userId) throws ClassNotFoundException, SQLException {
		System.out.println("06_userDelete UserDAO.java");
		
		Driver driver = new Driver();
		connection = driver.driverConnection();
		System.out.println(connection + "<-- connection");
		
		preparedstatement = connection.prepareStatement("DELETE FROM pc_user WHERE user_id = ?");
		
		preparedstatement = connection.prepareStatement("DELETE FROM pc_user WHERE user_id = ?");
		preparedstatement.setString(1, userId);
		
		preparedstatement.executeUpdate();
		
		preparedstatement.close();
		connection.close();
	}
	
	public ArrayList<UserDTO> userSelectSearch(String searchKey, String searchValue, UserDTO userDto) throws ClassNotFoundException, SQLException{
		System.out.println("07_userSelectSearch UserDAO.java");
		
		ArrayList<UserDTO> list = new ArrayList<>();
		
		Driver driver = new Driver();
		connection = driver.driverConnection();
		System.out.println(connection + "<-- connection");
		
		if(searchKey == null & searchValue == null){
			preparedstatement = connection.prepareStatement("SELECT * FROM pc_user");
		}else if(searchKey != null & searchValue.equals("")){
			preparedstatement = connection.prepareStatement("SELECT * FROM pc_user;");
		}else if(searchKey != null & searchValue != null){
			if(searchKey.equals(userDto.getUserId())){
				preparedstatement = connection.prepareStatement("SELECT * FROM pc_user WHERE user_id = ?");
				preparedstatement.setString(1, searchValue);
			}else if(searchKey.equals(userDto.getUserName())){
				preparedstatement = connection.prepareStatement("SELECT * FROM pc_user WHERE user_id = ?");
				preparedstatement.setString(1, searchValue);
			}
		}
		
		while(result.next()) {
			UserDTO userDTO = new UserDTO();
			userDTO.setUserId(result.getString("user_id"));
			userDTO.setUserPw(result.getString("user_pw"));
			userDTO.setUserLevel(result.getString("user_level"));
			userDTO.setUserName(result.getString("user_name"));
			userDTO.setUserTime(result.getInt("user_time"));
			userDTO.setUserDate(result.getString("user_date"));
			userDTO.setUserPoint(result.getInt("user_point"));
			userDTO.setSeatNo(result.getInt("seat_no"));
			list.add(userDTO);
		}
		
		result.close();
		preparedstatement.close();
		connection.close();
		
		return list;
	}
	
	//user time 시간으로 바꾸기
	public String userGetTime(UserDTO userDto) {
		String userTime = "";
		
		int time = userDto.getUserTime();
		
		if(time%60==0) {
			userTime = time/60+"시간";
		}else if(time<60) {
			userTime = time%60+"분";
		}else if(time>60) {
			userTime = time/60+"시간";
			userTime += time%60+"분";
		}
		
		return userTime ; 
	}
}
