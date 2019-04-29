package com.jk1603.apple.admini.dao;

import org.apache.ibatis.annotations.Update;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
import com.jk1603.apple.admini.pojo.Outstore;
import com.jk1603.apple.admini.pojo.Type;

public interface AdminiInsertDao {
	//添加商品
	@Update("INSERT INTO goods (`name`,`price`,`number`,\r\n" + 
			"`specs`,`details`,`amount`,`upshelf`,`type_id`)\r\n" + 
			"VALUES(#{name},#{price},#{number},\r\n" + 
			"#{specs},#{details},#{amount},#{upshelf},"
			+ "(SELECT id as typeId FROM type WHERE type_name=#{typeName}))")
	void addGoods(Goods g,Type sort);
	//添加后台用户
	@Update("INSERT INTO `admini`(`admini_name`, `ad_password`) VALUES (#{adminiName}, #{adPassword})")
	void addAdmini(Admini ad);
	//商品出库
	@Update("INSERT INTO `outstore_goods` (`ck_number`, `name`, `total`, `date`, `builder` )\r\n" + 
				"VALUES(#{ckNumber}, #{name}, #{amount}, #{date}, #{builder})")
	void outStore(Outstore ous);
	
	//商品入库
	@Update("INSERT INTO `intostore_goods` (`rk_number`, `name`, `total`, `date`, `builder` )\r\n" + 
			"VALUES\r\n" + 
			"	(#{rkNumber}, #{name}, #{amount}, #{date}, #{builder})")
	void intoStore(Intostore ins);
}
