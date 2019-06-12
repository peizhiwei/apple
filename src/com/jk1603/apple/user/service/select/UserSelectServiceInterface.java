package com.jk1603.apple.user.service.select;

import java.util.List;


import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.user.pojo.Shoppingcart;
import com.jk1603.apple.user.pojo.User;

public interface UserSelectServiceInterface {
	List<Shoppingcart> getshoppingcart(int id);
	//查询购物车中是否存在该商品
	List<Shoppingcart> getshopping(Shoppingcart shoppingcart);
	//查询购物车中指定商品的数量
	int getshoppingamount(int goodsId);
	
	boolean selectgoodsupshlf(int goodsId);
}
