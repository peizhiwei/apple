package com.jk1603.apple.admini.service;

import java.util.List;

import com.jk1603.apple.admini.pojo.Goods;

public interface AdminiServiceInterface {
	void addGoods(Goods g);
	
	List<Goods> getGoods(String number);
}
