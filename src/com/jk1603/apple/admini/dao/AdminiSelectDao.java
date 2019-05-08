package com.jk1603.apple.admini.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
import com.jk1603.apple.admini.pojo.Outstore;
import com.jk1603.apple.admini.pojo.Stock;
import com.jk1603.apple.admini.pojo.SuperAdmini;
import com.jk1603.apple.admini.pojo.Type;

public interface AdminiSelectDao {
	//��ѯ��Ʒ
	@Select("SELECT * FROM goods WHERE `number`= #{number}")
	List<Goods> getGoods(String number);
	//模糊查询商品
	@Select("SELECT * FROM goods WHERE `name` LIKE '%${goodsname}%'")
	List<Goods> getGoodsList(String goodsname);
	
	//��ѯ����
	@Select("SELECT id,type_name as typeName FROM type")
	List<Type> getType();
	//���ݷ�������ѯ����id
	@Select("select id from type where type_name=#{typeName}")
	int gettypeid(String typeName);
	
	//�������ݿ⽫��Ʒ��Ϣչʾ��ǰ��ҳ��
	@Select("SELECT s.super_admini_name as `superadmini.superAdminiName`, a.admini_name as `admini.adminiName`, g.*,t.type_name as 'type.typeName' FROM goods g\r\n" + 
			"LEFT JOIN type t on g.type_id=t.id "
			+"LEFT JOIN admini a ON a.id=g.admini_id "
			+ "LEFT JOIN superadmini s ON s.id=g.superadmini_id "
			+ "ORDER BY g.date")
	List<Goods> getallGoods();
	//��ѯ��Ʒ��ʾ��indexҳ����
	@Select("SELECT g.*,t.type_name as `type.typeName`"
			+ " FROM goods g "
			+ "LEFT JOIN type t on g.type_id=t.id ORDER BY g.date")
	List<Goods> getGoodstoindex();
	
	//��ѯ��Ʒ��������
	@Select("SELECT `id`,`ck_number` as ckNumber,`name`,`total` as amount,`date`,`builder` "
				+ "FROM outstore_goods WHERE `ck_number` = #{ckNumber}")
	List<Outstore> getOutstore(String number);
	
	//��ѯ��Ʒ�������
	@Select("SELECT `id`,`rk_number` as rkNumber,`name`,`total` as amount,`date`,`builder` "
			+ "FROM intostore_goods WHERE `rk_number` = #{rkNumber}")
	List<Intostore> getIntostore(String number);
	
	//��ѯ��Ʒ���
	@Select("SELECT `number`,`name`,`specs`,"
			+ "`details`,`amount` FROM goods WHERE `number`= #{number}")
	List<Stock> getStock(String number);
	//��ȡgoods����id����ֵ
	@Select("SELECT MAX(id) FROM goods")
	int getgoodsmaxid();
	//ͨ���û�����ѯ�ó�������Ա�Ƿ����
	@Select("SELECT id, super_admini_name as superAdminiName,super_admini_password as superAdminiPassword FROM superadmini "
			+ "WHERE super_admini_name=#{superAdminiName}")
	SuperAdmini findBySuperAdminiName(String superadmininame);
	//ͨ���û�����ѯ�ù���Ա�Ƿ����
	@Select("SELECT id, admini_name as adminiName,admini_password as adminiPassword FROM admini "
			+ "WHERE admini_name=#{adminiName}")
	Admini findByAdminiName(String admininame);
	//��ѯ������ͨ����Ա�û�
	@Select("SELECT id, admini_name as adminiName,admini_password as adminiPassword FROM admini")
	List<Admini> getallAdmini();
}
