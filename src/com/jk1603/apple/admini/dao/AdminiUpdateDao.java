package com.jk1603.apple.admini.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Store;

public interface AdminiUpdateDao {
	
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
	@Update("UPDATE store SET amount =#{amount},date=#{date} WHERE goods_id=#{goods.id}")
	void plusstoreamount(Store store);
	
	//修改商品信息
	@Update("UPDATE goods SET `name` = #{name}, `price` = #{price}, `number` = #{number}, `specs` =#{specs},`details` = #{details},`type_id` = #{type.id} WHERE `id` = #{id}")
	void updategoods(Goods goods);
	//修改商品的图片
	@Update("UPDATE goods SET img=#{img} WHERE id=#{id}")
	void updategoodsimg(Goods goods);
	
}
