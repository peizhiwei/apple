package com.jk1603.apple.admini.service.select;

import java.util.List;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
import com.jk1603.apple.admini.pojo.Outstore;
import com.jk1603.apple.admini.pojo.Type;
import com.jk1603.apple.admini.pojo.Stock;
import com.jk1603.apple.admini.pojo.SuperAdmini;

public interface AdminiSelectServiceInterface {
	//��ѯ����
	List<Type> getType();
	List<Goods> getGoods(String number);
	//�������ݿ⽫��Ʒ��Ϣչʾ��ǰ��ҳ��
	List<Goods> getallGoods();
	List<Stock> getStock(String number);
	List<Goods> getGoodstoindex();
	List<Intostore> getIntostore(String number);
	List<Outstore> getOutstore(String number);
	
	int getgoodsmaxid();
	
	int gettypeid(String typeName);
	
	SuperAdmini checkSuperAdminiLogin(String superadmininame,String superadminipassword);
	
	Admini checkAdminiLogin(String admininame,String adminipassword);
	
	List<Admini> getallAdmini();
	
	List<Goods> getGoodsList(String goodsname);
}
