package com.jk1603.apple.admini.service.update;

import java.util.List;

import com.jk1603.apple.admini.pojo.Goods;

public interface AdminiUpdateServiceInterface {
	//新增商品
	List<Goods> setGoods(String number);
	//上传商品图片
	void setGoodsImg(Goods goods);
	//上架
	void setUpshelf(int id);
	//下架
	void setDownshelf(int id);
	//增加商品库存量
	void plusstoreamount(int newamount,int goodsId);
}
