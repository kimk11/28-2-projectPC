package pc.seatDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import pc.DTO.SeatDTO;
import pc.driver.Driver;

public class SeatDAO {
	Connection connection = null;  
	private PreparedStatement preparedstatement = null;
	private ResultSet resultset = null;
	
// <�¼� �߰� �޼��� start>
	// �¼��� �ϳ��� ������ Ȯ��
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
	
	// �¼� �߰�
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
// <�¼� �߰� �޼��� end>
}
