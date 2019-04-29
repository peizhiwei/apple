package com.jk1603.apple.admini.service.insert;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
import com.jk1603.apple.admini.pojo.Outstore;
import com.jk1603.apple.admini.pojo.Type;

public interface AdminiInsertServiceInterface {
	void addGoods(Goods g,Type type);
	void addAdmini(Admini ad);
	void intoStore(Intostore ins);
	void outStore(Outstore ous); 
}
