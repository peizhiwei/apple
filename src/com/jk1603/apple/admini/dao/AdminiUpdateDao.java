package com.jk1603.apple.admini.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

import com.jk1603.apple.admini.pojo.Goods;

public interface AdminiUpdateDao {
	//新增商品
	@Update("UPDATE `apple`.`goods` SET `name` = ?, "
			+ "`price` = ?, `number` = ?, `specs` = ?, "
			+ " `details` = ?, `amount` = ? WHERE `number` = #{number};")
	List<Goods> setGoods(String number);
	//上传商品图片
	@Update("UPDATE goods SET img=#{img} WHERE id=#{id}")
	void setGoodsImg(Goods goods);
	
	//上架
	@Update("UPDATE goods SET upshelf=true WHERE id=#{id}")
	void setUpshelf(int id);
	//下架
	@Update("UPDATE goods SET upshelf=false WHERE id=#{id}")
	void setDownshelf(int id);
	//修改仓库商品库存量（增加库存）
	@Update("UPDATE store SET amount =#{newamount} WHERE goods_id=#{goodsId}")
	void plusstoreamount(@Param("newamount")int newamount,@Param("goodsId")int goodsId);
}
