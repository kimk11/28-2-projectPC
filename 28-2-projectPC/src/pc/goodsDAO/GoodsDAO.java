package pc.goodsDAO;

import pc.DTO.GoodsDTO;
import pc.driver.Driver;
import java.sql.*;

public class GoodsDAO {
	Connection connection = null;
	PreparedStatement pstmt = null;

	// 01 상품 입고 insertGoods
	public void insertGoods(GoodsDTO goods) throws ClassNotFoundException, SQLException {
		System.out.println("01 insertGoods");
		Driver db = new Driver();
		connection = db.driverConnection();
		System.out.println("connection : " + connection);
		pstmt = connection.prepareStatement("INSERT INTO pc_goods(goods_name,goods_price) VALUES(?,?)");
		pstmt.setString(2, goods.getGoods_name());
		pstmt.setInt(3, goods.getGoods_price());
		pstmt.executeUpdate();

		pstmt.close();
		connection.close();
	}

}
