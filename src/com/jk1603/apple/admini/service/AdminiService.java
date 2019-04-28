package com.jk1603.apple.admini.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jk1603.apple.admini.dao.AdminiDao;
import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
import com.jk1603.apple.admini.pojo.Outstore;
@Service
public class AdminiService implements AdminiServiceInterface {
	@Autowired
	AdminiDao adminidao;
	//添加商品
	@Override
	public void addGoods(Goods g) {
		adminidao.addGoods(g);
	}
	
	//查询商品
	@Override
	public List<Goods> getGoods(String number) {
		List<Goods> listgoods = adminidao.getGoods(number);
		return listgoods;
	}
	
	//添加管理员
	@Override
	public void addAdmini(Admini ad) {
		adminidao.addAdmini(ad);
	}
	
	//查询商品显示到index页面上
	@Override
	public List<Goods> getGoodstoindex() {
		List<Goods> goodsList = adminidao.getGoodstoindex();
		return goodsList;
	}
	
	//商品入库
	@Override
	public void intoStore(Intostore ins) {
		adminidao.intoStore(ins);
	}
	
	//查询商品入库详情
	@Override
	public List<Intostore> getIntostore(String number) {
		List<Intostore> listins = adminidao.getIntostore(number);
		return listins;
	}

	

	//商品出库
	@Override
	public void outStore(Outstore ous) {
		adminidao.outStore(ous);
		
	}
	//查询商品出库详情
	@Override
	public List<Outstore> getOutstore(String number) {
		List<Outstore> listous = adminidao.getOutstore(number);
		return listous;
	}
}
