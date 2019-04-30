package com.jk1603.apple.admini.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
import com.jk1603.apple.admini.pojo.Outstore;
import com.jk1603.apple.admini.pojo.Type;
import com.jk1603.apple.admini.pojo.Stock;

public interface AdminiSelectDao {
	//查询商品
	@Select("SELECT * FROM goods WHERE `number`= #{number}")
	List<Goods> getGoods(String number);
	//查询分类
	@Select("SELECT id,type_name as typeName FROM type")
	List<Type> getType();
	//根据分类名查询分类id
	@Select("select id from type where type_name=#{typeName}")
	int gettypeid(String typeName);
	
	//遍历数据库将商品信息展示在前端页面
	@Select("SELECT g.*,t.type_name as 'type.typeName' FROM goods g\r\n" + 
			"LEFT JOIN type t on g.type_id=t.id")
	List<Goods> getallGoods();
	//查询商品显示到index页面上
	@Select("SELECT `name`,`specs`,`details`,`price`,`img` FROM goods")
	List<Goods> getGoodstoindex();
	
	//查询商品出库详情
	@Select("SELECT `id`,`ck_number` as ckNumber,`name`,`total` as amount,`date`,`builder` "
				+ "FROM outstore_goods WHERE `ck_number` = #{ckNumber}")
	List<Outstore> getOutstore(String number);
	
	//查询商品入库详情
	@Select("SELECT `id`,`rk_number` as rkNumber,`name`,`total` as amount,`date`,`builder` "
			+ "FROM intostore_goods WHERE `rk_number` = #{rkNumber}")
	List<Intostore> getIntostore(String number);
	
	//查询商品库存
	@Select("SELECT `number`,`name`,`specs`,"
			+ "`details`,`amount` FROM goods WHERE `number`= #{number}")
	List<Stock> getStock(String number);
	//获取goods表中id最大的值
	@Select("SELECT MAX(id) FROM goods")
	int getgoodsmaxid();
		
}
