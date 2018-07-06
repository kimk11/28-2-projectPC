package pc.orderDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pc.driver.Driver;
import pc.DTO.GoodsDTO;
import pc.DTO.OrderDTO;
import pc.DTO.UserDTO;

public class OrderDAO {
	Connection connection = null;  
	private PreparedStatement preparedstatement = null;
	private ResultSet resultset = null;
//상품 주문 상품 >> 상품 리스트에서 해당 물풀 클릭시 db에저장
	// 물품코드로 물품정보 조회
	public GoodsDTO orderOneSelect(int goodsCode) throws ClassNotFoundException, SQLException {
		Driver db = new Driver();
		connection = db.driverConnection();
		
		GoodsDTO goodsDto = new GoodsDTO();
		
		String sql = "SELECT goods_code,goods_name,goods_price,goods_cate,goods_date FROM pc_goods where goods_code=?";
		preparedstatement = connection.prepareStatement(sql);
		preparedstatement.setInt(1, goodsCode);
		resultset = preparedstatement.executeQuery();
		
		if(resultset.next()) {
			goodsDto.setGoodsCode(resultset.getInt(1));
			goodsDto.setGoodsName(resultset.getString(2));
			goodsDto.setGoodsPrice(resultset.getInt(3));
			goodsDto.setGoodsCate(resultset.getString(4));
			goodsDto.setGoodsDate(resultset.getString(5));
		}
		
		resultset.close();
		preparedstatement.close();
		connection.close();
		
		return goodsDto;
	}
	
	// 주문 내역 db에 데이터 추가 - 리턴값 0이면 추가 안됨
	public int orderInsert(GoodsDTO goodsDto, UserDTO userDto) throws ClassNotFoundException, SQLException {
		Driver db = new Driver();
		connection = db.driverConnection();
		
		String sql = "insert into pc_order(user_id,goods_code,seat_no,goods_price,goods_name) values(?,?,?,?,?)";
		preparedstatement = connection.prepareStatement(sql);
		preparedstatement.setString(1, userDto.getUserId());
		preparedstatement.setInt(2, goodsDto.getGoodsCode());
		preparedstatement.setInt(3, userDto.getSeatNo());
		preparedstatement.setInt(4, goodsDto.goodsPrice);
		preparedstatement.setString(5, goodsDto.getGoodsName());
		
		int check = preparedstatement.executeUpdate();
		
		preparedstatement.close();
		connection.close();
		
		return check;
	}
//주문 내역 >> db 리스트 
	//전체 조회
	public ArrayList<OrderDTO> orderHistory() throws ClassNotFoundException, SQLException {
		System.out.println("01 orderHistory <OrederDAO>");
		ArrayList<OrderDTO> arOrderList = new ArrayList<>();
		Driver db = new Driver();
		connection = db.driverConnection();
		System.out.println("connection : " + connection);
		
		String sql = "SELECT order_code,user_id,goods_code,seat_no,goods_price,goods_name FROM pc_order";
		preparedstatement = connection.prepareStatement(sql);
		
		resultset = preparedstatement.executeQuery();
		
		while(resultset.next()) {
			OrderDTO orderDto = new OrderDTO();
			orderDto.setOrderCode(resultset.getInt(1));
			orderDto.setUserId(resultset.getString(2));
			orderDto.setGoodsCode(resultset.getInt(3));
			orderDto.setSeatNo(resultset.getInt(4));
			orderDto.setGoodsPrice(resultset.getInt(5));
			orderDto.setGoodsName(resultset.getString(6));
			arOrderList.add(orderDto);
			
		}
		
		resultset.close();
		preparedstatement.close();
		connection.close();
		return arOrderList;
	}
	
	// 개인 사용자 조회
	public ArrayList<OrderDTO> orderOneHistory(String userId) throws ClassNotFoundException, SQLException {
		System.out.println("01 orderHistory <OrederDAO>");
		ArrayList<OrderDTO> arOrderList = new ArrayList<>();
		Driver db = new Driver();
		connection = db.driverConnection();
		System.out.println("connection : " + connection);
		
		String sql = "SELECT order_code,user_id,goods_code,seat_no,goods_price,goods_name FROM pc_order where user_id=?";
		preparedstatement = connection.prepareStatement(sql);
		preparedstatement.setString(1, userId);
		
		resultset = preparedstatement.executeQuery();
		
		while(resultset.next()) {
			OrderDTO orderDto = new OrderDTO();
			orderDto.setOrderCode(resultset.getInt(1));
			orderDto.setUserId(resultset.getString(2));
			orderDto.setGoodsCode(resultset.getInt(3));
			orderDto.setSeatNo(resultset.getInt(4));
			orderDto.setGoodsPrice(resultset.getInt(5));
			orderDto.setGoodsName(resultset.getString(6));
			arOrderList.add(orderDto);
			
		}
		
		resultset.close();
		preparedstatement.close();
		connection.close();
		return arOrderList;
	}
}
