package com.jk1603.apple.admini.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;
import org.springframework.web.bind.annotation.PutMapping;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
import com.jk1603.apple.admini.pojo.Outstore;
import com.jk1603.apple.admini.pojo.Type;

public interface AdminiInsertDao {
	//�����Ʒ
	@Update("INSERT INTO goods (`name`,`price`,`number`,\r\n" + 
			"`specs`,`details`,`amount`,`upshelf`,`type_id`,`date`)\r\n" + 
			"VALUES(#{name},#{price},#{number},\r\n" + 
			"#{specs},#{details},#{amount},#{upshelf},#{type.id},#{date})")
	void addGoods(Goods goods);

	//��Ʒ����
	@Update("INSERT INTO `outstore_goods` (`ck_number`, `name`, `total`, `date`, `builder` )\r\n" + 
				"VALUES(#{ckNumber}, #{name}, #{amount}, #{date}, #{builder})")
	void outStore(Outstore ous);
	
	//��Ʒ���
	@Update("INSERT INTO `intostore_goods` (`rk_number`, `name`, `total`, `date`, `builder` )\r\n" + 
			"VALUES\r\n" + 
			"	(#{rkNumber}, #{name}, #{amount}, #{date}, #{builder})")
	void intoStore(Intostore ins);
	@Update("INSERT INTO admini (`admini_name`, `admini_password`) VALUES (#{adminiName},#{adminiPassword})")
	void addAdmini(Admini admini);
}
