package com.jk1603.apple.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.user.dao.UserDao;
import com.jk1603.apple.user.pojo.User;
@Service
@Transactional
public class UserService implements UserServiceInterface{
	@Autowired
	UserDao userdao;
	
	@Override
	public void addUser(User user) {
		userdao.addUser(user);		
	}

	@Override
	public User checkLogin(String username,String password) {
		User user = new User();
		user = userdao.findByUsername(username);
		if(user!=null&&user.getUserPassword().equals(password)) {
			return user;
		}
		return null;
	}

	@Override
	public User checkUser(String username) {
		User user = new User();
		user = userdao.findByUsername(username);
		if(user!=null) {
			return user;
		}
		return null;
	}

	@Override
	public List<User> getUserdetails(String username) {
		userdao.getUserdetails(username);
		return null;
	}

	@Override
	public void updataUserimg(User user) {
		userdao.updataUserimg(user);		
	}

	@Override
	public void updataUsernickname(User user) {
		userdao.updataUsernickname(user);		
	}

	@Override
	public User getsession(String username) {
		User user = userdao.findByUsername(username);
		if(user!=null) {
			return user;
		}
		return null;
	}
}
