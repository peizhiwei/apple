package com.jk1603.apple.admini.dao;

import java.util.List;

import org.apache.ibatis.annotations.Update;

import com.jk1603.apple.admini.pojo.Goods;

public interface AdminiUpdateDao {
	//编辑商品
	@Update("UPDATE `apple`.`goods` SET `name` = ?, "
			+ "`price` = ?, `number` = ?, `specs` = ?, "
			+ " `details` = ?, `amount` = ? WHERE `number` = #{number};")
	List<Goods> setGoods(String number);
	//上传商品图片
	@Update("UPDATE goods SET img=#{img} WHERE id=#{id}")
	void setGoodsImg(Goods goods);
	
	//控制商品上架
	@Update("UPDATE goods SET upshelf=true WHERE id=#{id}")
	void setUpshelf(int id);
	//控制商品上架
	@Update("UPDATE goods SET upshelf=false WHERE id=#{id}")
	void setDownshelf(int id);
	//修改商品数量
	@Update("UPDATE store SET amount = 41 WHERE goods_id=#{goodsId}")
	void plusstoreamount(int goodsId);
}
