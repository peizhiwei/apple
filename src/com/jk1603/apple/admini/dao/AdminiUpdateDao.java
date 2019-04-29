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
}
