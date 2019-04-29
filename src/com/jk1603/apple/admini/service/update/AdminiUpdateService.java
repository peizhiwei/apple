package com.jk1603.apple.admini.service.update;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jk1603.apple.admini.dao.AdminiUpdateDao;
import com.jk1603.apple.admini.pojo.Goods;

@Service
public class AdminiUpdateService implements AdminiUpdateServiceInterface {
	@Autowired
	AdminiUpdateDao adminiupdatedao;
	@Override
	public List<Goods> setGoods(String number) {
		List<Goods> listsetgoods = adminiupdatedao.setGoods(number);
		return listsetgoods;
	}

}
