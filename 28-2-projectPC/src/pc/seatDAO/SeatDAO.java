package pc.seatDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pc.DTO.SeatDTO;
import pc.DTO.UserDTO;
import pc.driver.Driver;

public class SeatDAO {
	Connection connection = null;  
	private PreparedStatement preparedstatement = null;
	private ResultSet resultset = null;
	
// <좌석 추가 메서드 start>
	// 좌석이 하나도 없는지 확인
	public int seatCheck() throws ClassNotFoundException, SQLException {
		Driver driver = new Driver();
		connection = driver.driverConnection();
		
		int check = 0;
		String sql = "select max(seat_no) from pc_seat";
		preparedstatement = connection.prepareStatement(sql);
		resultset = preparedstatement.executeQuery();
		
		if(resultset.next()) {
			check = resultset.getInt(1);
		}
		
		resultset.close();
		preparedstatement.close();
		connection.close();
		
		return check;
	}
	
	// 좌석 추가
	public int seatInsert(int check) throws ClassNotFoundException, SQLException {
		Driver driver = new Driver();
		connection = driver.driverConnection();
		
		String sql = "insert into pc_seat(seat_no) values(?)";
		preparedstatement = connection.prepareStatement(sql);
		
		if(0!=check) {
			preparedstatement.setInt(1, check+1);
		}else {
			preparedstatement.setInt(1, 1);
		}
			
		int insertCheck = preparedstatement.executeUpdate();
		
		preparedstatement.close();
		connection.close();
		
		return insertCheck;
	}
// <좌석 추가 메서드 end>
	
// <좌석 로그인 메서드 start>
	//아이디 비밀번호 확인
	public int seatLoginCheck(UserDTO userDto) throws ClassNotFoundException, SQLException {
		Driver driver = new Driver();
		connection = driver.driverConnection();
		int check = 0;
		
		String sql = "select user_pw from pc_user where user_id = ?";
		preparedstatement = connection.prepareStatement(sql);
		preparedstatement.setString(1, userDto.getUserId());
		resultset = preparedstatement.executeQuery();
		if(resultset.next()) {
			if(resultset.getString(1).equals(userDto.getUserPw())) {
				check = 3;
			}else {
				check = 2;
			}
		}else {
			check = 1;
		}
		
		resultset.close();
		preparedstatement.close();
		connection.close();
		
		return check;
		// 리턴값이 0이면 db연결 실패
		// 1이면 아이디 불일치
		// 2이면 비밀번호 불일치
		// 3이면 로그인 성공
	}
	
	//아이디 비밀번호 세션 저장값 가져오기
	public UserDTO seatLoginSession(UserDTO userDto) throws ClassNotFoundException, SQLException {
		Driver driver = new Driver();
		connection = driver.driverConnection();
		
		String sql = "SELECT user_id,user_pw,user_level,user_name,user_time,user_date,user_point,seat_no FROM pc_user WHERE user_id=? AND user_pw=?";
		preparedstatement = connection.prepareStatement(sql);
		preparedstatement.setString(1, userDto.getUserId());
		preparedstatement.setString(2, userDto.getUserPw());
		resultset = preparedstatement.executeQuery();
		if(resultset.next()) {
			userDto.setUserLevel(resultset.getString(3));
			userDto.setUserName(resultset.getString(4));
			userDto.setUserTime(resultset.getInt(5));
			userDto.setUserDate(resultset.getString(6));
			userDto.setUserPoint(resultset.getInt(7));
			userDto.setSeatNo(resultset.getInt(8));
		}
		
		resultset.close();
		preparedstatement.close();
		connection.close();
		
		return userDto;
	}
// <좌석 로그인 메서드 end>
}
