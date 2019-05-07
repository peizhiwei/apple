package com.jk1603.apple.admini.dao;


import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;


import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
import com.jk1603.apple.admini.pojo.Outstore;


public interface AdminiInsertDao {
	//添加商品
	@Update("INSERT INTO goods (`name`,`price`,`number`,\r\n" + 
			"`specs`,`details`,`upshelf`,`type_id`,`date`,`superadmini_id`,`admini_id`)\r\n" + 
			"VALUES(#{name},#{price},#{number},\r\n" + 
			"#{specs},#{details},#{upshelf},#{type.id},#{date},#{superadmini.id},#{admini.id})")
	void addGoods(Goods goods);

	//商品出库
	@Update("INSERT INTO `outstore_goods` (`ck_number`, `name`, `total`, `date`, `builder` )\r\n" + 
				"VALUES(#{ckNumber}, #{name}, #{amount}, #{date}, #{builder})")
	void outStore(Outstore ous);
	
	//商品入库
	@Update("INSERT INTO store (amount,goods_id,admini_id,superadmini_id) "
		  + "VALUES (#{amount}, #{goodsId}, #{adminiId}, #{superadminiId})")
	void intoStore(@Param("intostroe")Intostore intostroe,@Param("operationId")int operationId);
	
	//添加管理员
	@Update("INSERT INTO admini (`admini_name`, `admini_password`) VALUES (#{adminiName},#{adminiPassword})")
	void addAdmini(Admini admini);
}
