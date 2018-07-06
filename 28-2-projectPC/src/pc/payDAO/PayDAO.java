package pc.payDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import pc.DTO.PayDTO;
import pc.driver.Driver;

public class PayDAO {
	Connection connection = null;  
	private PreparedStatement preparedstatement = null;
	private ResultSet resultset = null;
	
	
	// <�ð� �߰� --start>  
	// ������ �ִ� ȸ�� �ð����� �ð� �߰�  payAddTime
	public int payAddTime(int time, String userId) throws ClassNotFoundException, SQLException {
		int addTime = 0;
		Driver driver = new Driver();
		connection = driver.driverConnection();
		System.out.println(connection + "<-- connection");
		String sql = "update pc_user set user_time = ? where user_id = ?";
		preparedstatement = connection.prepareStatement(sql);
		preparedstatement.setInt(1, time);
		preparedstatement.setString(2, userId);
//		System.out.println(payDto.getPaymentName() + "<--getPaymentName()");
		preparedstatement.executeUpdate();
	
		
		return addTime;
		
	}
	
	// <�ð� �߰� ---End>  
		
		
	//<ȸ���� ���� �ð� ��ȸ start> 
	// pc_user���̺� ȸ�� �ð� ��ȸ userHaveTime
	public int userHaveTime(String userId) throws ClassNotFoundException, SQLException {
		int addTime = 0;
		Driver driver = new Driver();
		connection = driver.driverConnection();
	
		String sql = "SELECT user_time FROM pc_user WHERE user_id = ?";
		preparedstatement = connection.prepareStatement(sql);
		preparedstatement.setString(1, userId);
		
		
		resultset = preparedstatement.executeQuery();
		
		while(resultset.next()) {
			addTime = resultset.getInt(1);
		}
		
		return addTime;
	}
	//<ȸ���� ���� �ð� ��ȸ ---End> 
	
	
	
// <���ױ� �߰� �޼��� start>
	// ���ױ��� �ϳ��� �ִ��� ������ Ȯ��
	public int payNoCheck() throws ClassNotFoundException, SQLException {
		Driver driver = new Driver();
		connection = driver.driverConnection();
		int check = 0; 
		
		String sql = "select max(payment_no) from pc_payment";
		preparedstatement = connection.prepareStatement(sql);
		resultset = preparedstatement.executeQuery();
		if(resultset.next()) {
			check  = resultset.getInt(1);
		}
		
		resultset.close();
		preparedstatement.close();
		connection.close();
		
		return check;
	}
	
	//���ױ��� �ϳ��� ���� �� ���� �޼���
	public int payInsertNoOne(PayDTO payDto) throws SQLException, ClassNotFoundException {
		Driver driver = new Driver();
		connection = driver.driverConnection();
		
		String sql = "insert into pc_payment(payment_no, payment_name, payment_time) values(501,?,?)";
		preparedstatement = connection.prepareStatement(sql);
		preparedstatement.setString(1, payDto.getPaymentName());
		preparedstatement.setInt(2, payDto.getPaymentTime());
		
		int insertCheck = preparedstatement.executeUpdate();
		
		preparedstatement.close();
		connection.close();
		
		return insertCheck;
	}
	
	// ���ױ��� �ϳ��� ���� �� ���� �޼���
	public int payInsertOneOver(PayDTO payDto, int check) throws SQLException, ClassNotFoundException {
		Driver driver = new Driver();
		connection = driver.driverConnection();
		
		String sql = "insert into pc_payment(payment_no, payment_name, payment_time) values(?,?,?)";
		preparedstatement = connection.prepareStatement(sql);
		preparedstatement.setInt(1, check+1);
		preparedstatement.setString(2, payDto.getPaymentName());
		preparedstatement.setInt(3, payDto.getPaymentTime());
		
		int insertCheck = preparedstatement.executeUpdate();
		
		preparedstatement.close();
		connection.close();
		
		return insertCheck;
	}
// <���ױ� �߰� �޼��� end>
	
// <���ױ� ���� (����Ʈ) �޼��� start>
	public ArrayList<PayDTO> payList() throws ClassNotFoundException, SQLException {
		ArrayList<PayDTO> arPayList = new ArrayList<>();
		Driver driver = new Driver();
		connection = driver.driverConnection();
		
		String sql = "select payment_no,payment_name,payment_time from pc_payment";
		preparedstatement = connection.prepareStatement(sql);
		resultset = preparedstatement.executeQuery();
		
		while(resultset.next()) {
			PayDTO payDto = new PayDTO();
			payDto.setPaymentNo(resultset.getInt(1));
			payDto.setPaymentName(resultset.getString(2));
			payDto.setPaymentTime(resultset.getInt(3));
			arPayList.add(payDto);
		}
		
		resultset.close();
		preparedstatement.close();
		connection.close();
		
		return arPayList;
	}
// <���ױ� ���� �޼��� end>
	
// <���ױ� ���� �޼��� start>
	// ������ ���ױ� �ҷ�����
	public PayDTO payOneSelect(int paymentNo) throws ClassNotFoundException, SQLException {
		Driver driver = new Driver();
		connection = driver.driverConnection();
		
		PayDTO payDto = new PayDTO();
		
		String sql = "select payment_name,payment_time from pc_payment where payment_no=?";
		preparedstatement = connection.prepareStatement(sql);
		preparedstatement.setInt(1, paymentNo);
		resultset = preparedstatement.executeQuery();
		
		if(resultset.next()) {
			payDto.setPaymentName(resultset.getString(1));
			payDto.setPaymentTime(resultset.getInt(2));
		}
		
		resultset.close();
		preparedstatement.close();
		connection.close();
		
		return payDto;
	}
	
	// ���ױ� DB���� �����ϱ�
	public int payUpdate(PayDTO payDto) throws ClassNotFoundException, SQLException {
		Driver driver = new Driver();
		connection = driver.driverConnection();
		
		String sql = "update pc_payment set payment_name=?,payment_time=? where payment_no=?";
		preparedstatement = connection.prepareStatement(sql);
		preparedstatement.setString(1, payDto.getPaymentName());
		preparedstatement.setInt(2, payDto.getPaymentTime());
		preparedstatement.setInt(3, payDto.getPaymentNo());
		
		int insertCheck = preparedstatement.executeUpdate();
		
		preparedstatement.close();
		connection.close();
		
		return insertCheck;
	}
// <���ױ� ���� �޼��� end>
	
// <���ױ� ���� �޼��� start>
	public int payDelete(int paymentNo) throws ClassNotFoundException, SQLException {
		Driver driver = new Driver();
		connection = driver.driverConnection();
		
		String sql = "delete from pc_payment where payment_no=?";
		preparedstatement = connection.prepareStatement(sql);
		preparedstatement.setInt(1, paymentNo);
		
		int insertCheck = preparedstatement.executeUpdate();
		
		preparedstatement.close();
		connection.close();
		
		return insertCheck;
	}
// <���ױ� ���� �޼��� end>
}
