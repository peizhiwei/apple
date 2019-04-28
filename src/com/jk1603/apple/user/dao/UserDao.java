package com.jk1603.apple.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.user.pojo.User;

public interface UserDao {
	//注册
	@Update("INSERT INTO user (`user_name`,`user_password`)\r\n" + 
			"VALUES(#{userName},#{userPassword})")
	void addUser(User user);
	
	//通过名称查询用户是否存在
	@Select("SELECT user_name as userName,user_password as userPassword,user_nickname as userNickname,user_img as userImg FROM `user` WHERE user_name=#{userName}")
	User findByUsername(String username);
	
	@Select("SELECT user_name as userName,user_nickname as userNickName,user_img as userImg FROM `user` WHERE user_name=#{userName}")
	List<User> getUserdetails(String username);
	//修改用户头像、昵称
	@Update("UPDATE user SET user_nickname=#{userNickName},user_img=#{userImg} WHERE user_name=#{userName}")
	void updataUserdetails(User user);
}
