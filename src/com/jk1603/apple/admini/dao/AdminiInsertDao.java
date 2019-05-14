package com.jk1603.apple.admini.dao;


import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;


import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
import com.jk1603.apple.admini.pojo.Outstore;
import com.jk1603.apple.admini.pojo.Store;


public interface AdminiInsertDao {
	//�����Ʒ
	@Update("INSERT INTO goods (`name`,`price`,`number`,\r\n" + 
			"`specs`,`details`,`upshelf`,`type_id`,`date`,`superadmini_id`,`admini_id`)\r\n" + 
			"VALUES(#{name},#{price},#{number},\r\n" + 
			"#{specs},#{details},#{upshelf},#{type.id},#{date},#{superadmini.id},#{admini.id})")
	void addGoods(Goods goods);

	//��Ʒ����
	@Update("INSERT INTO `outstore_goods` (`ck_number`, `name`, `total`, `date`, `builder` )\r\n" + 
				"VALUES(#{ckNumber}, #{name}, #{amount}, #{date}, #{builder})")
	void outStore(Outstore ous);
	
	//��Ʒ���
	@Update("INSERT INTO store (amount,goods_id,admini_id,superadmini_id) "
		  + "VALUES (#{amount}, #{goods.id}, #{admini.id}, #{superadmini.id})")
	void intoStore(Store store);
	
	//��ӹ���Ա
	@Update("INSERT INTO admini (`admini_name`, `admini_password`) VALUES (#{adminiName},#{adminiPassword})")
	void addAdmini(Admini admini);
}
