package com.jk1603.apple.admini.service;

import java.util.List;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;

public interface AdminiServiceInterface {
	void addGoods(Goods g);
	
	List<Goods> getGoods(String number);

	List<Goods> getGoodstoindex();

	void addAdmini(Admini ad);
	
	void intoStore(Intostore ins);
}
