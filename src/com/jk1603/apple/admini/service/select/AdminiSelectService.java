package com.jk1603.apple.admini.service.select;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jk1603.apple.admini.dao.AdminiSelectDao;
import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Outstore;
import com.jk1603.apple.admini.pojo.Stock;
import com.jk1603.apple.admini.pojo.Store;
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
	public List<Goods> getGoodstoindex() {
		List<Goods> goodsList = adminiSelectdao.getGoodstoindex();
		return goodsList;
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
	public SuperAdmini checkSuperAdminiLogin(String superadmininame,String superadminipassword) {
		SuperAdmini superadmini = adminiSelectdao.findBySuperAdminiName(superadmininame);
		if(superadmini!=null&&superadmini.getSuperAdminiPassword().equals(superadminipassword)) {
			return superadmini;
		}else {
			return null;
		}
		
	}
	
	@Override
	public Admini checkAdminiLogin(String admininame,String adminipassword) {
		Admini admini = adminiSelectdao.findByAdminiName(admininame);
		if(admini!=null&&admini.getAdminiPassword().equals(adminipassword)) {
			return admini;
		}else {
			return null;
		}
		
	}

	@Override
	public List<Admini> getallAdmini() {
		List<Admini> adminilist = adminiSelectdao.getallAdmini();
		return adminilist;
	}

	@Override
	public List<Goods> getGoodsList(String goodsnumber) {
		List<Goods> goodslist = adminiSelectdao.getGoodsList(goodsnumber);
		return goodslist;
	}

	@Override
	public Goods getgoodsid(String goodsname) {
		Goods goodsId = adminiSelectdao.getgoodsid(goodsname);
		return goodsId;
	}

	@Override
	public Store getstoregoodsid(int goodsId) {
		Store storegoodsid = adminiSelectdao.getstoregoodsid(goodsId);
		return storegoodsid;
	}

	@Override
	public List<Store> getallstore() {
		List<Store> storelist = adminiSelectdao.getallstore();
		return storelist;
	}
}
