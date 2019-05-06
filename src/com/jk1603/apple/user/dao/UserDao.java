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
	@Select("SELECT id,user_name as userName,user_password as userPassword,user_nickname as userNickname,user_img as userImg FROM `user` WHERE user_name=#{userName}")
	User findByUsername(String username);
	
	@Select("SELECT id,user_name as userName,user_nickname as userNickName,user_img as userImg FROM `user` WHERE user_name=#{userName}")
	List<User> getUserdetails(String username);
	//�޸��û�ͷ��
	@Update("UPDATE user SET user_img=#{userImg} WHERE user_name=#{userName}")
	void updataUserimg(User user);
	//�޸��û��ǳ�
	@Update("UPDATE user SET user_nickname=#{userNickName} WHERE user_name=#{userName}")
	void updataUsernickname(User user);
}
