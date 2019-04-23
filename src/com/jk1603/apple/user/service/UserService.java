package com.jk1603.apple.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jk1603.apple.user.dao.UserDao;
import com.jk1603.apple.user.pojo.User;
@Service
@Transactional
public class UserService implements UserServiceInterface{
	@Autowired
	UserDao userdao;
	
	@Override
	public List<User> getUser(User user) {
		List<User> result = userdao.getUser(user);
		return result;
	}

	@Override
	public void addUser(User user) {
		userdao.addUser(user);		
	}
}
