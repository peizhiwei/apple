package com.jk1603.apple.admini.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jk1603.apple.admini.dao.AdminiDao;
import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
@Service
public class AdminiService implements AdminiServiceInterface {
	@Autowired
	AdminiDao adminidao;
	@Override
	public void addGoods(Goods g) {
		adminidao.addGoods(g);
	}

	@Override
	public List<Goods> getGoods(String number) {
		List<Goods> listgoods = adminidao.getGoods(number);
		return listgoods;
	}

	@Override
	public void addAdmini(Admini ad) {
		adminidao.addAdmini(ad);
	}

	@Override
	public List<Goods> getGoodstoindex() {
		List<Goods> goodsList = adminidao.getGoodstoindex();
		return goodsList;
	}
	
	//…Ã∆∑»Îø‚
	@Override
	public void intoStore(Intostore ins) {
		adminidao.intoStore(ins);
	}
}
