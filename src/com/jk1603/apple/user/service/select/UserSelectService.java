package com.jk1603.apple.user.service.select;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.user.dao.UserSelectDao;
import com.jk1603.apple.user.pojo.Shoppingcart;
import com.jk1603.apple.user.pojo.User;

@Service
@Transactional
public class UserSelectService implements UserSelectServiceInterface {

	@Autowired
	UserSelectDao userselectdao;
	
	@Override
	public List<Shoppingcart> getshoppingcart(int id) {
		List<Shoppingcart> goodsList = userselectdao.getshoppingcart(id);
		return goodsList;
	}

	@Override
	public List<Shoppingcart> getshopping(Shoppingcart shoppingcart) {
		List<Shoppingcart> goods = userselectdao.getshopping(shoppingcart);
		return goods;
	}

	@Override
	public int getshoppingamount(int goodsId) {
		int shAmount = userselectdao.getshoppingamount(goodsId);
		return shAmount;
	}

	@Override
	public boolean selectgoodsupshlf(int goodsId) {
		return userselectdao.selectgoodsupshlf(goodsId);
	}

}
