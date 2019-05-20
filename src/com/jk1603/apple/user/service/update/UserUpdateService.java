package com.jk1603.apple.user.service.update;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jk1603.apple.user.dao.UserUpdateDao;
@Service
@Transactional
public class UserUpdateService implements UserUpdateServiceInterface {

	@Autowired
	UserUpdateDao userupdatedao;
	@Override
	public void setshAmount(int newamount, int goodsId) {
		userupdatedao.setshAmount(newamount, goodsId);
		
	}

}
