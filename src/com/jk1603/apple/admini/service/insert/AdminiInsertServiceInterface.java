package com.jk1603.apple.admini.service.insert;

import org.apache.ibatis.annotations.Param;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
import com.jk1603.apple.admini.pojo.Outstore;
import com.jk1603.apple.admini.pojo.Store;

public interface AdminiInsertServiceInterface {
	void addGoods(Goods g);
	void addAdmini(Admini ad);
	//…Ã∆∑»Îø‚
	void intoStore(Store store);
	void outStore(Outstore ous); 
}
