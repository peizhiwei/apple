package com.jk1603.apple.admini.service.select;

import java.util.List;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Type;
import com.jk1603.apple.admini.pojo.Store;
import com.jk1603.apple.admini.pojo.SuperAdmini;

public interface AdminiSelectServiceInterface {
	//鑾峰彇鍒嗙被
	List<Type> getType();
	List<Goods> getGoods(String number);
	//鏌ヨ鎵�鏈夊晢鍝�
	List<Goods> getallGoods();
	List<Goods> getGoodstoindex();
	//鏍规嵁鍟嗗搧鍚嶈幏鍙栧晢鍝乮d
	Goods getgoodsid(String goodsnumber);
	int getgoodsmaxid();
	
	int gettypeid(String typeName);
	
	SuperAdmini checkSuperAdminiLogin(String superadmininame,String superadminipassword);
	
	Admini checkAdminiLogin(String admininame,String adminipassword);
	
	List<Admini> getallAdmini();
	
	List<Goods> getGoodsList(String goodsnumber);
	
	Store getstoregoodsid(int goodsId);
	//鏌ヨ鎵�鏈夊簱瀛�
	List<Store> getallstore();
}
