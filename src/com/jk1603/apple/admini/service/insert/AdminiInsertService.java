package com.jk1603.apple.admini.service.insert;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jk1603.apple.admini.dao.AdminiInsertDao;
import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Outstore;
import com.jk1603.apple.admini.pojo.Store;

@Service
public class AdminiInsertService implements AdminiInsertServiceInterface {
	@Autowired
	AdminiInsertDao admininsertdao;
	
	@Override
	public void addGoods(Goods g) {
		admininsertdao.addGoods(g);
	}
	@Override
	public void addAdmini(Admini ad) {
		admininsertdao.addAdmini(ad);
	}

	@Override
	public void outStore(Outstore ous) {
		admininsertdao.outStore(ous);
	}
	@Override
	public void intoStore(Store store) {
		admininsertdao.intoStore(store);
		
	}

}
