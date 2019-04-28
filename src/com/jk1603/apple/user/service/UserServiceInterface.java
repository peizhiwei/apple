package com.jk1603.apple.user.service;

import java.util.List;

import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.user.pojo.User;

public interface UserServiceInterface {
	void addUser(User user);
	
	User checkLogin(String username,String password);
	
	User checkUser(String username);
	
	//��ѯ�û���ϸ��Ϣ
	List<User> getUserdetails(String username);
	//�޸��û���Ϣ
	void updataUserdetails(User user);
}
