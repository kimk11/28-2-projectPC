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
	
	
	// 03 ��ǰ ����  updateGoods
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
	
	//02-1 ��ǰ ����Ʈ ����¡  goods_cate �з��� ���� �� goods1Count
	public int goods1Count(String sk, String sv) throws ClassNotFoundException, SQLException {
		System.out.println("02-1 goods1Count <GoodsDAO>");
		String check = "";
		int totalRow = 0;
		Driver db = new Driver();
		connection = db.driverConnection();
		
		if((sk == null && sv == null) || sk.equals("") && sv.equals("")) {
			preparedstatement = connection.prepareStatement("SELECT count(goods_cate) FROM pc_goods");
		// ��ü ����Ʈ
		}else if(sk.equals("all")) {
			preparedstatement = connection.prepareStatement("SELECT count(goods_cate) FROM pc_goods");
		// goods_code�� ������ ��
		}else if(sk.equals("goods1")) {
			check = "����";
			preparedstatement = connection.prepareStatement("SELECT count(goods_cate) FROM pc_goods WHERE goods_cate=?");
			preparedstatement.setString(1, check);
		
		// goods_code�� ������ ��
		}else if(sk.equals("goods2")) {
			check = "����";
			preparedstatement = connection.prepareStatement("SELECT count(goods_cate) FROM pc_goods WHERE goods_cate=?");
			preparedstatement.setString(1, check);
		
		// goods_code�� ������ ��
		}else if(sk.equals("goods3")) {
			check = "����";
			preparedstatement = connection.prepareStatement("SELECT count(goods_cate) FROM pc_goods WHERE goods_cate=?");
			preparedstatement.setString(1, check);
		// goods_code�� ��ǰ�� ��
		}else if(sk.equals("goods4")) {
			check = "��ǰ";
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



	
	// 02 ��ǰ ��ȸ ����Ʈ selectGoods
	public ArrayList<GoodsDTO> selectGoods(int StartPage,int pagePerRow, String sk ,String sv) throws ClassNotFoundException, SQLException {
		System.out.println("02 selectGoods <GoodsDAO>");
		ArrayList<GoodsDTO> arGoodsList = new ArrayList<>();
		String check = "";
		Driver db = new Driver();
		connection = db.driverConnection();
		System.out.println("connection : " + connection);
		
		// �� �� null�� �� 
		if((sk == null && sv == null) || sk.equals("") && sv.equals("")) {
			System.out.println("01����_sk null sv null");
			preparedstatement = connection.prepareStatement("SELECT goods_code,goods_name, goods_price,goods_cate,goods_date FROM pc_goods limit ?,?");
			preparedstatement.setInt(1, StartPage);
			preparedstatement.setInt(2, pagePerRow);
			// sk�� ��ü�� ��
		}else if(sk.equals("all") && sv == "") {
			System.out.println("02����_sk(��ü)�̰�  sv ����");
			preparedstatement = connection.prepareStatement("SELECT goods_code,goods_name, goods_price,goods_cate,goods_date FROM pc_goods limit ?,?");
			preparedstatement.setInt(1,StartPage);
			preparedstatement.setInt(2,pagePerRow);
		}else if(sk.equals("all") && sv != "") {
			System.out.println("02����_sk(��ü)�̰�  sv ����");
			preparedstatement = connection.prepareStatement("SELECT goods_code,goods_name, goods_price,goods_cate,goods_date FROM pc_goods limit ?,?");
			preparedstatement.setInt(1,StartPage);
			preparedstatement.setInt(2,pagePerRow);
			// sk�� �����̰� sv ����
		}else if(sk.equals("goods1") && sv == "") {
			check="����";
			System.out.println("02����_sk(����)�̰�  sv ����");
			preparedstatement = connection.prepareStatement("SELECT goods_code,goods_name,goods_price,goods_cate,goods_date FROM pc_goods WHERE goods_cate = ? limit ?,?");
			preparedstatement.setString(1,check);
			preparedstatement.setInt(2,StartPage);
			preparedstatement.setInt(3,pagePerRow);
			// sk�� �����̰� sv ����
		}else if(sk.equals("goods2") && sv == "") {
			check="����";
			System.out.println("02����_sk(����)�̰�  sv ����");
			preparedstatement = connection.prepareStatement("SELECT goods_code,goods_name,goods_price,goods_cate,goods_date FROM pc_goods WHERE goods_cate = ? limit ?,?");
			preparedstatement.setString(1,check);
			preparedstatement.setInt(2,StartPage);
			preparedstatement.setInt(3,pagePerRow);
			//sk�� �����̰� sv ����
		}else if(sk.equals("goods3") && sv == "") {
			check="����";
			System.out.println("02����_sk(����)�̰�  sv ����");
			preparedstatement = connection.prepareStatement("SELECT goods_code,goods_name,goods_price,goods_cate,goods_date FROM pc_goods WHERE goods_cate = ? limit ?,?");
			preparedstatement.setString(1,check);
			preparedstatement.setInt(2,StartPage);
			preparedstatement.setInt(3,pagePerRow);
			//sk�� ��ǰ�̰� sv ����
		}else if(sk.equals("goods4") && sv == "") {
			check="��ǰ";
			System.out.println("02����_sk(��ǰ)�̰�  sv ����");
			preparedstatement = connection.prepareStatement("SELECT goods_code,goods_name,goods_price,goods_cate,goods_date FROM pc_goods WHERE goods_cate = ? limit ?,?");
			preparedstatement.setString(1,check);
			preparedstatement.setInt(2,StartPage);
			preparedstatement.setInt(3,pagePerRow);	
			//sk�� �����̰� sv ���� ���� ��
		}else if(sk.equals("goods1") && sv != null) {
			check="����";
			System.out.println("02����_sk(����)�̰�  sv null�� �ƴ�");
			preparedstatement = connection.prepareStatement("SELECT goods_code,goods_name,goods_price,goods_cate,goods_date FROM pc_goods WHERE goods_cate=? and goods_name=?");
			preparedstatement.setString(1,check);
			preparedstatement.setString(2,sv);
			//sk�� �����̰� sv ���� ���� ��
		}else if(sk.equals("goods2") && sv != null) {
			check="����";
			System.out.println("02����_sk(����)�̰�  sv null�� �ƴ�");
			preparedstatement = connection.prepareStatement("SELECT goods_code,goods_name,goods_price,goods_cate,goods_date FROM pc_goods WHERE goods_cate=? and goods_name=?");
			preparedstatement.setString(1,check);
			preparedstatement.setString(2,sv);
			//sk�� �����̰� sv ���� ���� ��
		}else if(sk.equals("goods3") && sv != null) {
			check="����";
			System.out.println("02����_sk(����)�̰�  sv null�� �ƴ�");
			preparedstatement = connection.prepareStatement("SELECT goods_code,goods_name,goods_price,goods_cate,goods_date FROM pc_goods WHERE goods_cate=? and goods_name=?");
			preparedstatement.setString(1,check);
			preparedstatement.setString(2,sv);
			//sk�� ��ǰ�̰� sv ���� ���� ��
		}else if(sk.equals("goods4") && sv != null) {
			check="��ǰ";
			System.out.println("02����_sk(��ǰ)�̰�  sv null�� �ƴ�");
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
