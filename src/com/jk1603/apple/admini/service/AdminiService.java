package com.jk1603.apple.admini.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jk1603.apple.admini.dao.AdminiDao;
import com.jk1603.apple.admini.pojo.Goods;
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
}
