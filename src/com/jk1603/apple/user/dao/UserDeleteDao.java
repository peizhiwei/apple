package com.jk1603.apple.user.dao;

import org.apache.ibatis.annotations.Delete;

public interface UserDeleteDao {
	//删除购物车某一商品
	@Delete("DELETE FROM shoppingcart WHERE id=#{id}")
	void removeshopping(int id);
}
