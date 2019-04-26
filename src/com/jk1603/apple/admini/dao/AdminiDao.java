package com.jk1603.apple.admini.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;

public interface AdminiDao {
	//添加商品
	@Update("INSERT INTO goods (`name`,`price`,`number`,\r\n" + 
			"`specs`,`details`,`amount`)\r\n" + 
			"VALUES(#{name},#{price},#{number},\r\n" + 
			"#{specs},#{details},#{amount})")
	void addGoods(Goods g);

	//查询商品
	@Select("SELECT `id`,`name`,`price`,`number`,`specs`,"
			+ "`details`,`amount` FROM goods WHERE `number`= #{number}")
	List<Goods> getGoods(String number);
	
	//查询商品显示到index页面上
	@Select("SELECT `name`,`specs`,`details`,`price`,`img` FROM goods")
	List<Goods> getGoodstoindex();
	
	//添加后台用户
	@Update("INSERT INTO `admini`(`admini_name`, `ad_password`) VALUES (#{adminiName}, #{adPassword})")
	void addAdmini(Admini ad);

}
