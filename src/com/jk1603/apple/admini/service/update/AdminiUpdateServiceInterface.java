package com.jk1603.apple.admini.service.update;

import java.util.List;

import com.jk1603.apple.admini.pojo.Goods;

public interface AdminiUpdateServiceInterface {
	//编辑商品
	List<Goods> setGoods(String number);
	//上传商品图片
	void setGoodsImg(Goods goods);
}
