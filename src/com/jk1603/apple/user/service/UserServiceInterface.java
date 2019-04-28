package com.jk1603.apple.user.service;

import java.util.List;

import org.apache.ibatis.annotations.Update;

import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.user.pojo.User;

public interface UserServiceInterface {
	void addUser(User user);
	
	User checkLogin(String username,String password);
	
	User checkUser(String username);
	
	User getsession(String username);
	//查询用户详细信息
	List<User> getUserdetails(String username);
	
	//修改用户头像
	void updataUserimg(User user);
	//修改用户昵称
	void updataUsernickname(User user);
}
