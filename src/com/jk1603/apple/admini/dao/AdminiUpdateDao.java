package com.jk1603.apple.admini.dao;

import java.util.List;

import org.apache.ibatis.annotations.Update;

import com.jk1603.apple.admini.pojo.Goods;

public interface AdminiUpdateDao {
	//±‡º≠…Ã∆∑
	@Update("UPDATE `apple`.`goods` SET `name` = ?, "
			+ "`price` = ?, `number` = ?, `specs` = ?, "
			+ " `details` = ?, `amount` = ? WHERE `number` = #{number};")
	List<Goods> setGoods(String number);
}
