package com.jk1603.apple.user.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

public interface UserUpdateDao {
	//购物车中已存在该商品则增加商品的数量
	@Update("UPDATE shoppingcart SET sh_amount=#{newamount} WHERE goods_id=#{goodsId}")
	void setshAmount(@Param("newamount")int newamount,@Param("goodsId")int goodsId);
}
