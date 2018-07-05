package pc.orderDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pc.driver.Driver;
import pc.DTO.GoodsDTO;
import pc.DTO.OrderDTO;

public class OrderDAO {
	Connection connection = null;  
	private PreparedStatement preparedstatement = null;
	private ResultSet resultset = null;
//상품 주문 상품 >> 상품 리스트에서 해당 물풀 클릭시 db에저장
	
//주문 내역 >> db 리스트 
	public ArrayList<OrderDTO> orderHistory() throws ClassNotFoundException, SQLException {
		System.out.println("01 orderHistory <OrederDAO>");
		ArrayList<OrderDTO> arOrderList = new ArrayList<>();
		Driver db = new Driver();
		connection = db.driverConnection();
		System.out.println("connection : " + connection);
		
		String sql = "SELECT order_code,user_id,goods_code,seat_no,goods_price FROM pc_order";
		preparedstatement = connection.prepareStatement(sql);
		
		resultset = preparedstatement.executeQuery();
		
		while(resultset.next()) {
			OrderDTO orderDto = new OrderDTO();
			orderDto.setOrderCode(resultset.getInt(1));
			orderDto.setUserId(resultset.getString(2));
			orderDto.setGoodsCode(resultset.getInt(3));
			orderDto.setSeatNo(resultset.getInt(4));
			orderDto.setGoodsPrice(resultset.getInt(5));
			arOrderList.add(orderDto);
			
		}
		
		resultset.close();
		preparedstatement.close();
		connection.close();
		return arOrderList;
	}
}
