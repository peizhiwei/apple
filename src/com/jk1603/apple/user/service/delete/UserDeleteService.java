package com.jk1603.apple.user.service.delete;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jk1603.apple.user.dao.UserDeleteDao;

@Service
@Transactional
public class UserDeleteService implements UserDeleteServiceInterface {
	@Autowired
	UserDeleteDao userdeletedao;
	@Override
	public void removeshopping(int id) {
		userdeletedao.removeshopping(id);
	}
	
}
