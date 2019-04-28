package com.jk1603.apple.admini.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
import com.jk1603.apple.admini.pojo.Outstore;

public interface AdminiDao {
	//�����Ʒ
	@Update("INSERT INTO goods (`name`,`price`,`number`,\r\n" + 
			"`specs`,`details`,`amount`)\r\n" + 
			"VALUES(#{name},#{price},#{number},\r\n" + 
			"#{specs},#{details},#{amount})")
	void addGoods(Goods g);

	//��ѯ��Ʒ
	@Select("SELECT `id`,`name`,`price`,`number`,`specs`,"
			+ "`details`,`amount` FROM goods WHERE `number`= #{number}")
	List<Goods> getGoods(String number);
	
	//��Ʒ���
	@Update("INSERT INTO `intostore_goods` (`rk_number`, `name`, `total`, `date`, `builder` )\r\n" + 
			"VALUES\r\n" + 
			"	(#{rkNumber}, #{name}, #{amount}, #{date}, #{builder})")
	void intoStore(Intostore ins);
	
	//��ѯ��Ʒ�������
	@Select("SELECT `id`,`rk_number` as rkNumber,`name`,`total` as amount,`date`,`builder` "
			+ "FROM intostore_goods WHERE `rk_number` = #{rkNumber}")
	List<Intostore> getIntostore(String number);
	
	//��Ʒ����
	@Update("INSERT INTO `outstore_goods` (`ck_number`, `name`, `total`, `date`, `builder` )\r\n" + 
				"VALUES\r\n" + 
				"	(#{ckNumber}, #{name}, #{amount}, #{date}, #{builder})")
		void outStore(Outstore ous);
		
	//��ѯ��Ʒ��������
	@Select("SELECT `id`,`ck_number` as ckNumber,`name`,`total` as amount,`date`,`builder` "
				+ "FROM outstore_goods WHERE `ck_number` = #{ckNumber}")
		List<Outstore> getOutstore(String number);
		
	//��ѯ��Ʒ��ʾ��indexҳ����
	@Select("SELECT `name`,`specs`,`details`,`price`,`img` FROM goods")
	List<Goods> getGoodstoindex();
	
	//��Ӻ�̨�û�
	@Update("INSERT INTO `admini`(`admini_name`, `ad_password`) VALUES (#{adminiName}, #{adPassword})")
	void addAdmini(Admini ad);

	
}
