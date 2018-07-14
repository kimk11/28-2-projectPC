/*2018.06.29 송유빈*/
package pc.goodsDAO;

import pc.DTO.GoodsDTO;
import pc.driver.Driver;
import java.sql.*;
import java.util.ArrayList;

public class GoodsDAO {
	Connection connection = null;
	PreparedStatement preparedstatement = null;
	ResultSet resultSet = null;
	
	
	// 07 상품판매
	
	
	
	// 06 상품 재고 	selectGoodsStock
	
	
	
	// 05 상품 입고 등록  insertGoodsReceiving
	
	
	
	// 04 상품 삭제  deleteGoods
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
	
	
	// 03-1 상품 조회 후 수정 SelectforUpdate
	public GoodsDTO selectForUpdate(int code) throws ClassNotFoundException, SQLException {
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
	
	
	// 03 상품 수정  updateGoods
	public void updateGoods(GoodsDTO goods) throws ClassNotFoundException, SQLException {
		System.out.println("03 updateGoods <GoodsDAO>");
		Driver db = new Driver();
		connection = db.driverConnection();
		System.out.println("connection : " + connection);
		String sql = "UPDATE pc_goods SET goods_name=?, goods_price=?, goods_cate=? WHERE goods_code=?";
		preparedstatement = connection.prepareStatement(sql);
		preparedstatement.setString(1, goods.getGoodsName());
		preparedstatement.setInt(2, goods.getGoodsPrice());
		preparedstatement.setString(3, goods.getGoodsCate());
		preparedstatement.setInt(4, goods.getGoodsCode());
		
		preparedstatement.executeUpdate();

		preparedstatement.close();
		connection.close();
	}
	
	//02-1 상품 리스트 페이징  goods_cate 분류에 대한 수 goods1Count
	public int goods1Count(String sk, String sv) throws ClassNotFoundException, SQLException {
		System.out.println("02-1 goods1Count <GoodsDAO>");
		String check = "";
		int totalRow = 0;
		Driver db = new Driver();
		connection = db.driverConnection();
		
		if((sk == null && sv == null) || sk.equals("") && sv.equals("")) {
			preparedstatement = connection.prepareStatement("SELECT count(goods_cate) FROM pc_goods");
		// 전체 리스트
		}else if(sk.equals("all")) {
			preparedstatement = connection.prepareStatement("SELECT count(goods_cate) FROM pc_goods");
		// goods_code가 과자일 때
		}else if(sk.equals("goods1")) {
			check = "과자";
			preparedstatement = connection.prepareStatement("SELECT count(goods_cate) FROM pc_goods WHERE goods_cate=?");
			preparedstatement.setString(1, check);
		
		// goods_code가 음료일 때
		}else if(sk.equals("goods2")) {
			check = "음료";
			preparedstatement = connection.prepareStatement("SELECT count(goods_cate) FROM pc_goods WHERE goods_cate=?");
			preparedstatement.setString(1, check);
		
		// goods_code가 간식일 때
		}else if(sk.equals("goods3")) {
			check = "간식";
			preparedstatement = connection.prepareStatement("SELECT count(goods_cate) FROM pc_goods WHERE goods_cate=?");
			preparedstatement.setString(1, check);
		// goods_code가 식품일 때
		}else if(sk.equals("goods4")) {
			check = "식품";
			preparedstatement = connection.prepareStatement("SELECT count(goods_cate) FROM pc_goods WHERE goods_cate=?");
			preparedstatement.setString(1, check);
		}
		
		resultSet = preparedstatement.executeQuery();
		
		if(resultSet.next()) {
			totalRow = resultSet.getInt("count(goods_cate)");
		}
		
		resultSet.close();
		preparedstatement.close();
		connection.close();
		return totalRow;

	}



	
	// 02 상품 조회 리스트 selectGoods
	public ArrayList<GoodsDTO> selectGoods(int StartPage,int pagePerRow, String sk ,String sv) throws ClassNotFoundException, SQLException {
		System.out.println("02 selectGoods <GoodsDAO>");
		ArrayList<GoodsDTO> arGoodsList = new ArrayList<>();
		String check = "";
		Driver db = new Driver();
		connection = db.driverConnection();
		System.out.println("connection : " + connection);
		
		// 둘 다 null일 때 
		if((sk == null && sv == null) || sk.equals("") && sv.equals("")) {
			System.out.println("01조건_sk null sv null");
			preparedstatement = connection.prepareStatement("SELECT goods_code,goods_name, goods_price,goods_cate,goods_date FROM pc_goods limit ?,?");
			preparedstatement.setInt(1, StartPage);
			preparedstatement.setInt(2, pagePerRow);
			// sk가 전체일 때
		}else if(sk.equals("all") && sv == "") {
			System.out.println("02조건_sk(전체)이고  sv 공백");
			preparedstatement = connection.prepareStatement("SELECT goods_code,goods_name, goods_price,goods_cate,goods_date FROM pc_goods limit ?,?");
			preparedstatement.setInt(1,StartPage);
			preparedstatement.setInt(2,pagePerRow);
		}else if(sk.equals("all") && sv != "") {
			System.out.println("02조건_sk(전체)이고  sv 공백");
			preparedstatement = connection.prepareStatement("SELECT goods_code,goods_name, goods_price,goods_cate,goods_date FROM pc_goods limit ?,?");
			preparedstatement.setInt(1,StartPage);
			preparedstatement.setInt(2,pagePerRow);
			// sk가 과자이고 sv 공백
		}else if(sk.equals("goods1") && sv == "") {
			check="과자";
			System.out.println("02조건_sk(과자)이고  sv 공백");
			preparedstatement = connection.prepareStatement("SELECT goods_code,goods_name,goods_price,goods_cate,goods_date FROM pc_goods WHERE goods_cate = ? limit ?,?");
			preparedstatement.setString(1,check);
			preparedstatement.setInt(2,StartPage);
			preparedstatement.setInt(3,pagePerRow);
			// sk가 음료이고 sv 공백
		}else if(sk.equals("goods2") && sv == "") {
			check="음료";
			System.out.println("02조건_sk(음료)이고  sv 공백");
			preparedstatement = connection.prepareStatement("SELECT goods_code,goods_name,goods_price,goods_cate,goods_date FROM pc_goods WHERE goods_cate = ? limit ?,?");
			preparedstatement.setString(1,check);
			preparedstatement.setInt(2,StartPage);
			preparedstatement.setInt(3,pagePerRow);
			//sk가 간식이고 sv 공백
		}else if(sk.equals("goods3") && sv == "") {
			check="간식";
			System.out.println("02조건_sk(간식)이고  sv 공백");
			preparedstatement = connection.prepareStatement("SELECT goods_code,goods_name,goods_price,goods_cate,goods_date FROM pc_goods WHERE goods_cate = ? limit ?,?");
			preparedstatement.setString(1,check);
			preparedstatement.setInt(2,StartPage);
			preparedstatement.setInt(3,pagePerRow);
			//sk가 식품이고 sv 공백
		}else if(sk.equals("goods4") && sv == "") {
			check="식품";
			System.out.println("02조건_sk(식품)이고  sv 공백");
			preparedstatement = connection.prepareStatement("SELECT goods_code,goods_name,goods_price,goods_cate,goods_date FROM pc_goods WHERE goods_cate = ? limit ?,?");
			preparedstatement.setString(1,check);
			preparedstatement.setInt(2,StartPage);
			preparedstatement.setInt(3,pagePerRow);	
			//sk가 과자이고 sv 값이 있을 때
		}else if(sk.equals("goods1") && sv != null) {
			check="과자";
			System.out.println("02조건_sk(과자)이고  sv null이 아님");
			preparedstatement = connection.prepareStatement("SELECT goods_code,goods_name,goods_price,goods_cate,goods_date FROM pc_goods WHERE goods_cate=? and goods_name=?");
			preparedstatement.setString(1,check);
			preparedstatement.setString(2,sv);
			//sk가 음료이고 sv 값이 있을 때
		}else if(sk.equals("goods2") && sv != null) {
			check="음료";
			System.out.println("02조건_sk(음료)이고  sv null이 아님");
			preparedstatement = connection.prepareStatement("SELECT goods_code,goods_name,goods_price,goods_cate,goods_date FROM pc_goods WHERE goods_cate=? and goods_name=?");
			preparedstatement.setString(1,check);
			preparedstatement.setString(2,sv);
			//sk가 간식이고 sv 값이 있을 때
		}else if(sk.equals("goods3") && sv != null) {
			check="간식";
			System.out.println("02조건_sk(간식)이고  sv null이 아님");
			preparedstatement = connection.prepareStatement("SELECT goods_code,goods_name,goods_price,goods_cate,goods_date FROM pc_goods WHERE goods_cate=? and goods_name=?");
			preparedstatement.setString(1,check);
			preparedstatement.setString(2,sv);
			//sk가 식품이고 sv 값이 있을 때
		}else if(sk.equals("goods4") && sv != null) {
			check="식품";
			System.out.println("02조건_sk(식품)이고  sv null이 아님");
			preparedstatement = connection.prepareStatement("SELECT goods_code,goods_name,goods_price,goods_cate,goods_date FROM pc_goods WHERE goods_cate=? and goods_name=?");
			preparedstatement.setString(1,check);
			preparedstatement.setString(2,sv);
		}
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
	
	// 01 상품등록 insertGoods
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
