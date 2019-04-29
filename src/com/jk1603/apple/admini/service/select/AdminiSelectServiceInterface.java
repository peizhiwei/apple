package com.jk1603.apple.admini.service.select;

import java.util.List;

import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
import com.jk1603.apple.admini.pojo.Outstore;
import com.jk1603.apple.admini.pojo.Type;
import com.jk1603.apple.admini.pojo.Stock;

public interface AdminiSelectServiceInterface {
	//查询分类
	List<Type> getType();
	List<Goods> getGoods(String number);
	//遍历数据库将商品信息展示在前端页面
	List<Goods> getallGoods();
	List<Stock> getStock(String number);
	List<Goods> getGoodstoindex();
	List<Intostore> getIntostore(String number);
	List<Outstore> getOutstore(String number);
	
	int getgoodsmaxid();
	
	int gettypeid(String typeName);
}
