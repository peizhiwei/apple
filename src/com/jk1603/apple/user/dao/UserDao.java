package com.jk1603.apple.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.user.pojo.User;

public interface UserDao {
	//ע��
	@Update("INSERT INTO user (`user_name`,`user_password`)\r\n" + 
			"VALUES(#{userName},#{userPassword})")
	void addUser(User user);
	
	//ͨ�����Ʋ�ѯ�û��Ƿ����
	@Select("SELECT user_name as userName,user_password as userPassword FROM `user` WHERE user_name=#{userName}")
	User findByUsername(String username);
	@Select("SELECT NAME,price,specs,details FROM goods")
	List<Goods> getGoods();
}
