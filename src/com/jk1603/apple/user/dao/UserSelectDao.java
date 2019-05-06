package com.jk1603.apple.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.user.pojo.Shoppingcart;
import com.jk1603.apple.user.pojo.User;

public interface UserSelectDao {
	//≤È—Øπ∫ŒÔ≥µ
	@Select("SELECT s.id,s.sh_amount,g.`name` `goods.name`,g.price `goods.price`,g.img `goods.img`\r\n" + 
			"FROM shoppingcart s,goods g,`user` u\r\n" + 
			"WHERE s.goods_id = g.id\r\n" + 
			"AND s.user_id = #{id}\r\n" + 
			"GROUP BY s.id")
	List<Shoppingcart> getshoppingcart(int id);
}
