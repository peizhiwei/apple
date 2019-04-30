package com.jk1603.apple.admini.service.select;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jk1603.apple.admini.dao.AdminiSelectDao;
import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
import com.jk1603.apple.admini.pojo.Outstore;
import com.jk1603.apple.admini.pojo.Stock;
import com.jk1603.apple.admini.pojo.SuperAdmini;
import com.jk1603.apple.admini.pojo.Type;


@Service
public class AdminiSelectService implements AdminiSelectServiceInterface {
	@Autowired
	AdminiSelectDao adminiSelectdao;
	
	@Override
	public List<Type> getType() {
		List<Type> allsort = adminiSelectdao.getType();
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

	@Override
	public int gettypeid(String typeName) {
		int id = adminiSelectdao.gettypeid(typeName);
		return id;
	}

	@Override
	public SuperAdmini checkAdminiLogin(String superadmininame,String superadminipassword) {
		SuperAdmini superadmini = adminiSelectdao.findBySuperAdminiName(superadmininame);
		if(superadmini!=null&&superadmini.getSuperAdminiPassword().equals(superadminipassword)) {
			return superadmini;
		}else {
			return null;
		}
		
	}

	@Override
	public List<Admini> getallAdmini() {
		List<Admini> adminilist = adminiSelectdao.getallAdmini();
		return adminilist;
	}



}
