/*2018.06.29 송유빈*/
package pc.goodsDAO;

import pc.DTO.GoodsDTO;
import pc.driver.Driver;
import java.sql.*;

public class GoodsDAO {
	Connection connection = null;
	PreparedStatement preparedstatement = null;

	// 01 상품 입고 insertGoods
	public void insertGoods(GoodsDTO goods) throws ClassNotFoundException, SQLException {
		System.out.println("01 insertGoods");
		Driver db = new Driver();
		connection = db.driverConnection();
		System.out.println("connection : " + connection);
		preparedstatement = connection.prepareStatement("INSERT INTO pc_goods(goods_code,goods_name,goods_price,goods_cate,goods_date) VALUES(?,?,?,?,now())");
		preparedstatement.setInt(1, goods.getGoodsCode());
		preparedstatement.setString(2, goods.getGoodsName());
		preparedstatement.setInt(3, goods.getGoodsPrice());
		preparedstatement.setString(4, goods.getGoodsCate());
		preparedstatement.executeUpdate();

		preparedstatement.close();
		connection.close();
	}

}
