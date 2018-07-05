/*2018.06.29 ������*/
package pc.goodsDAO;

import pc.DTO.GoodsDTO;
import pc.driver.Driver;
import java.sql.*;
import java.util.ArrayList;

public class GoodsDAO {
	Connection connection = null;
	PreparedStatement preparedstatement = null;
	ResultSet resultSet = null;
	
	
	// 07 ��ǰ�Ǹ�
	
	
	
	// 06 ��ǰ ��� 	selectGoodsStock
	
	
	
	// 05 ��ǰ �԰� ���  insertGoodsReceiving
	
	
	
	// 04 ��ǰ ����  deleteGoods
	public GoodsDTO deleteGoods(int code) throws ClassNotFoundException, SQLException {
		System.out.println("03 updateGoods <GoodsDAO>");
		GoodsDTO goodsDto = new GoodsDTO();
		Driver db = new Driver();
		connection = db.driverConnection();
		System.out.println("connection : " + connection);
		String sql = "DELETE FROM pc_goods WHERE goods_code=?";
		preparedstatement = connection.prepareStatement(sql);
		preparedstatement.setInt(1, code);
		preparedstatement.executeUpdate();
	
		preparedstatement.close();
		connection.close();
		return goodsDto;
	}
	
	
	// 03-1 ��ǰ ��ȸ �� ���� SelectforUpdate
	public GoodsDTO SelectforUpdate(int code) throws ClassNotFoundException, SQLException {
		System.out.println("03 updateGoods <GoodsDAO>");
		GoodsDTO goodsDto = new GoodsDTO();
		Driver db = new Driver();
		connection = db.driverConnection();
		System.out.println("connection : " + connection);
		String sql = "SELECT goods_code,goods_name,goods_price,goods_cate,goods_date FROM pc_goods WHERE goods_code=?;";
		preparedstatement = connection.prepareStatement(sql);
		preparedstatement.setInt(1, code);
		resultSet = preparedstatement.executeQuery();
		
		if(resultSet.next()) {
			goodsDto.setGoodsCode(resultSet.getInt(1));
			goodsDto.setGoodsName(resultSet.getString(2));
			goodsDto.setGoodsPrice(resultSet.getInt(3));
			goodsDto.setGoodsCate(resultSet.getString(4));
			goodsDto.setGoodsDate(resultSet.getString(5));
		}
		preparedstatement.close();
		connection.close();
		return goodsDto;
	}
	
	
	// 03 ��ǰ ����  updateGoods
	public void updateGoods(GoodsDTO goods) throws ClassNotFoundException, SQLException {
		System.out.println("03 updateGoods <GoodsDAO>");
		GoodsDTO goodsDto = new GoodsDTO();
		Driver db = new Driver();
		connection = db.driverConnection();
		System.out.println("connection : " + connection);
		String sql = "UPDATE pc_goods SET goods_name=?,goods_price=?,goods_cate=? WHERE goods_code=?";
		preparedstatement = connection.prepareStatement(sql);
		preparedstatement.setString(1, goods.getGoodsName());
		preparedstatement.setInt(2, goods.getGoodsPrice());
		preparedstatement.setString(3, goods.getGoodsCate());
		preparedstatement.setInt(4, goods.getGoodsCode());
		preparedstatement.executeUpdate();

		preparedstatement.close();
		connection.close();
	}
	
	//02-1 ��ǰ ����Ʈ ����¡  pc_goods ���̺��� row �� goodsCount
	public int goodsCount() throws ClassNotFoundException, SQLException {
		System.out.println("02-1 goodsCount <GoodsDAO>");
		int totalRow = 0;
		Driver db = new Driver();
		connection = db.driverConnection();
		System.out.println("connection : " + connection);
		
		String sql = "SELECT count(goods_code) FROM pc_goods";
		preparedstatement = connection.prepareStatement(sql);
		resultSet = preparedstatement.executeQuery();
		
		if(resultSet.next()) {
			totalRow = resultSet.getInt("count(goods_code)");
		}
		
		return totalRow;

	}
	
	
	// 02 ��ǰ ��ȸ ����Ʈ selectGoods
	public ArrayList<GoodsDTO> selectGoods(int StartPage,int pagePerRow) throws ClassNotFoundException, SQLException {
		System.out.println("02 selectGoods <GoodsDAO>");
		ArrayList<GoodsDTO> arGoodsList = new ArrayList<>();
		Driver db = new Driver();
		connection = db.driverConnection();
		System.out.println("connection : " + connection);
		
		String sql = "SELECT goods_code,goods_name, goods_price,goods_cate,goods_date FROM pc_goods limit ?,?";
		preparedstatement = connection.prepareStatement(sql);
		preparedstatement.setInt(1, StartPage);
		preparedstatement.setInt(2, pagePerRow);
		
		resultSet = preparedstatement.executeQuery();
		
		while(resultSet.next()) {
			GoodsDTO goodsDto = new GoodsDTO();
			goodsDto.setGoodsCode(resultSet.getInt(1));
			goodsDto.setGoodsName(resultSet.getString(2));
			goodsDto.setGoodsPrice(resultSet.getInt(3));
			goodsDto.setGoodsCate(resultSet.getString(4));
			goodsDto.setGoodsDate(resultSet.getString(5));
			arGoodsList.add(goodsDto);
			
		}
		
		resultSet.close();
		preparedstatement.close();
		connection.close();
		return arGoodsList;
	}
	
	// 01 ��ǰ��� insertGoods
	public void insertGoods(GoodsDTO goods) throws ClassNotFoundException, SQLException {
		System.out.println("01 insertGoods <GoodsDAO>");
		Driver db = new Driver();
		connection = db.driverConnection();
		System.out.println("connection : " + connection);
		String sql = "INSERT INTO pc_goods(goods_code,goods_name,goods_price,goods_cate,goods_date) VALUES(?,?,?,?,now())";
		preparedstatement = connection.prepareStatement(sql);
		preparedstatement.setInt(1, goods.getGoodsCode());
		preparedstatement.setString(2, goods.getGoodsName());
		preparedstatement.setInt(3, goods.getGoodsPrice());
		preparedstatement.setString(4, goods.getGoodsCate());
		preparedstatement.executeUpdate();

		preparedstatement.close();
		connection.close();
	}

}
