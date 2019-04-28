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
	//��ѯ�û���ϸ��Ϣ
	List<User> getUserdetails(String username);
	
	//�޸��û�ͷ��
	void updataUserimg(User user);
	//�޸��û��ǳ�
	void updataUsernickname(User user);
}
