package com.jk1603.apple.admini.service.insert;

import org.apache.ibatis.annotations.Param;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
import com.jk1603.apple.admini.pojo.Outstore;

public interface AdminiInsertServiceInterface {
	void addGoods(Goods g);
	void addAdmini(Admini ad);
	//…Ã∆∑»Îø‚
	void intoStore(Intostore intostroe,int operationId);
	void outStore(Outstore ous); 
}
