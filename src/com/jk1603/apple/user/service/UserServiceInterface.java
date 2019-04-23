package com.jk1603.apple.user.service;

import java.util.List;

import com.jk1603.apple.user.pojo.User;

public interface UserServiceInterface {
	List<User> getUser(User user);
	void addUser(User user);
}
