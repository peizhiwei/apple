package com.jk1603.apple.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.user.dao.UserSelectDao;
import com.jk1603.apple.user.pojo.Shoppingcart;
import com.jk1603.apple.user.pojo.User;

@Service
public class UserSelectService implements UserSelectServiceInterface {

	@Autowired
	UserSelectDao userselectdao;
	
	@Override
	public List<Shoppingcart> getshoppingcart(int id) {
		List<Shoppingcart> goodsList = userselectdao.getshoppingcart(id);
		return goodsList;
	}

}
