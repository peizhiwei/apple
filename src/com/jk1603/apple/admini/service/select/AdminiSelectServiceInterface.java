package com.jk1603.apple.admini.service.select;

import java.util.List;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Type;
import com.jk1603.apple.admini.pojo.Store;
import com.jk1603.apple.admini.pojo.SuperAdmini;

public interface AdminiSelectServiceInterface {
	//获取分类
	List<Type> getType();
	List<Goods> getGoods(String number);
	//查询所有商品
	List<Goods> getallGoods();
	List<Goods> getGoodstoindex();
	//根据商品名获取商品id
	Goods getgoodsid(String goodsname);
	int getgoodsmaxid();
	
	int gettypeid(String typeName);
	
	SuperAdmini checkSuperAdminiLogin(String superadmininame,String superadminipassword);
	
	Admini checkAdminiLogin(String admininame,String adminipassword);
	
	List<Admini> getallAdmini();
	
	List<Goods> getGoodsList(String goodsname);
	
	Store getstoregoodsid(int goodsId);
	//查询所有库存
	List<Store> getallstore();
}
