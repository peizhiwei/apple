package com.jk1603.apple.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.user.pojo.Shoppingcart;
import com.jk1603.apple.user.pojo.User;

public interface UserSelectDao {
	//查询对应用户id的购物车中的信息
	@Select("SELECT s.id,s.sh_amount,g.id `goods.id`,g.`name` `goods.name`,g.price `goods.price`,g.img `goods.img`\r\n" + 
			"FROM shoppingcart s,goods g,`user` u\r\n" + 
			"WHERE s.goods_id = g.id\r\n" + 
			"AND s.user_id = #{id}\r\n" + 
			"GROUP BY s.id")
	List<Shoppingcart> getshoppingcart(int id);
	
	//查询购物车中是否存在该商品
	@Select("SELECT * FROM shoppingcart WHERE goods_id=#{goods.id} AND user_id=#{user.id}")
	List<Shoppingcart> getshopping(Shoppingcart shoppingcart);
	
	//查询购物车中指定商品的数量
	@Select("SELECT sh_amount as shAmount FROM shoppingcart WHERE goods_id=#{goodsId}")
	int getshoppingamount(int goodsId);
	
	@Select("SELECT upshelf FROM goods WHERE id=#{goodsId}")
	boolean selectgoodsupshlf(int goodsId);
}