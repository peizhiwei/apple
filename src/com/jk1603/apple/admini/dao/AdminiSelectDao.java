package com.jk1603.apple.admini.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
import com.jk1603.apple.admini.pojo.Outstore;
import com.jk1603.apple.admini.pojo.Sort;
import com.jk1603.apple.admini.pojo.Stock;

public interface AdminiSelectDao {
	//��ѯ��Ʒ
	@Select("SELECT `id`,`name`,`price`,`number`,`specs`,"
			+ "`amount`,`details` FROM goods WHERE `number`= #{number}")
	List<Goods> getGoods(String number);
	//��ѯ����
	@Select("SELECT id,sort_name as sortName FROM sort")
	List<Sort> getSort();
	//�������ݿ⽫��Ʒ��Ϣչʾ��ǰ��ҳ��
	@Select("SELECT g.*,s.sort_name FROM goods g\r\n" + 
			"LEFT JOIN sort s on g.sort_id=s.id")
	List<Goods> getallGoods();
	//��ѯ��Ʒ��ʾ��indexҳ����
	@Select("SELECT `name`,`specs`,`details`,`price`,`img` FROM goods")
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
		
}
