package com.jk1603.apple.admini.service.update;

import java.util.Date;
import java.util.List;

import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Store;

public interface AdminiUpdateServiceInterface {
	//上传商品图片
	void setGoodsImg(Goods goods);
	//上架
	void setUpshelf(int id);
	//下架
	void setDownshelf(int id);
	//增加商品库存量
	void plusstoreamount(Store store);
	//修改商品信息
	void updategoods(Goods goods);
}
