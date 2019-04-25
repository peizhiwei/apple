package com.jk1603.apple.admini.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;

public interface AdminiDao {
	//�����Ʒ
	@Update("INSERT INTO goods (`name`,`price`,`number`,\r\n" + 
			"`specs`,`details`,`amount`)\r\n" + 
			"VALUES(#{name},#{price},#{number},\r\n" + 
			"#{specs},#{details},#{amount})")
	void addGoods(Goods g);

	//��ѯ��Ʒ
	@Select("SELECT `name`,`price`,`number`,`specs`,"
			+ "`details`,`amount` FROM goods WHERE `number`= #{number}")
	List<Goods> getGoods(String number);
	//��Ӻ�̨�û�
		@Update("INSERT INTO `admini`(`admini_name`, `ad_password`) VALUES (#{adminiName}, #{adPassword})")
		void addAdmini(Admini ad);

}
