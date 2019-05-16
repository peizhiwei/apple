package com.jk1603.apple.admini.service.update;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jk1603.apple.admini.dao.AdminiUpdateDao;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Store;

@Service
public class AdminiUpdateService implements AdminiUpdateServiceInterface {
	@Autowired
	AdminiUpdateDao adminiupdatedao;
	@Override
	public void setGoodsImg(Goods goods) {
		adminiupdatedao.setGoodsImg(goods);
	}
	@Override
	public void setUpshelf(int id) {
		adminiupdatedao.setUpshelf(id);
	}
	@Override
	public void setDownshelf(int id) {
		adminiupdatedao.setDownshelf(id);
	}
	@Override
	public void plusstoreamount(Store store) {
		adminiupdatedao.plusstoreamount(store);
		
	}
	@Override
	public void updategoods(Goods goods) {
		adminiupdatedao.updategoods(goods);
	}
	@Override
	public void updategoodsimg(Goods goods) {
		// TODO Auto-generated method stub
		
	}

}
