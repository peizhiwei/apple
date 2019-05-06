package com.jk1603.apple.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jk1603.apple.user.dao.UserInsertDao;

@Service
@Transactional
public class UserInsertService implements UserInsertServiceInterface {
	@Autowired
	UserInsertDao userinsertdao;
	@Override
	public void addShoppingcart(int goodsId, int userId) {
		userinsertdao.addShoppingcart(goodsId, userId);
		
	}
	
}
