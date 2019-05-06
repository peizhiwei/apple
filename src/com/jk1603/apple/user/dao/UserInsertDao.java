package com.jk1603.apple.user.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

public interface UserInsertDao {
	@Update("INSERT INTO shoppingcart(`sh_amount`, `goods_id`, `user_id`) \r\n" + 
			"VALUES (1, #{goodsId},#{userId})")
	void addShoppingcart(@Param("goodsId") int goodsId,@Param("userId") int userId);
}
