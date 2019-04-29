package com.jk1603.apple.admini.service.select;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jk1603.apple.admini.dao.AdminiSelectDao;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
import com.jk1603.apple.admini.pojo.Outstore;
import com.jk1603.apple.admini.pojo.Sort;
import com.jk1603.apple.admini.pojo.Stock;
@Service
public class AdminiSelectService implements AdminiSelectServiceInterface {
	@Autowired
	AdminiSelectDao adminiSelectdao;
	
	@Override
	public List<Sort> getSort() {
		List<Sort> allsort = adminiSelectdao.getSort();
		return allsort;
	}

	//≤È—Ø…Ã∆∑
	@Override
	public List<Goods> getGoods(String number) {
		List<Goods> listgoods = adminiSelectdao.getGoods(number);
		return listgoods;
	}

	@Override
	public List<Goods> getallGoods() {
		List<Goods> listallgoods = adminiSelectdao.getallGoods();
		return listallgoods;
	}

	@Override
	public List<Stock> getStock(String number) {
		List<Stock> liststock = adminiSelectdao.getStock(number);
		return liststock;
	}

	@Override
	public List<Goods> getGoodstoindex() {
		List<Goods> goodsList = adminiSelectdao.getGoodstoindex();
		return goodsList;
	}

	@Override
	public List<Intostore> getIntostore(String number) {
		List<Intostore> listins = adminiSelectdao.getIntostore(number);
		return listins;
	}

	@Override
	public List<Outstore> getOutstore(String number) {
		List<Outstore> listous = adminiSelectdao.getOutstore(number);
		return listous;
	}

	@Override
	public int getgoodsmaxid() {
		int id = adminiSelectdao.getgoodsmaxid();
		return id;
	}

}
