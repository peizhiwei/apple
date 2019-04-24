package com.jk1603.apple.admini.dao;

import org.apache.ibatis.annotations.Update;

import com.jk1603.apple.admini.pojo.Goods;

public interface AdminiDao {
	@Update("INSERT INTO goods (`name`,`price`,`number`,\r\n" + 
			"`specs`,`details`,`amount`)\r\n" + 
			"VALUES(#{name},#{price},#{number},\r\n" + 
			"#{specs},#{details},#{amount})")
	void addGoods(Goods g);
}
