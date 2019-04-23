package com.jk1603.apple.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.jk1603.apple.user.pojo.User;

public interface UserDao {
	@Select("select id,user_name as userName from user where user_name=#{userName} or id=#{id}")
	List<User> getUser(User user);
	@Update("INSERT INTO user (`user_name`,`user_password`)\r\n" + 
			"VALUES(#{userName},#{userPassword})")
	void addUser(User user);
}
