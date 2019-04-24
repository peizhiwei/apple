package com.jk1603.apple.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jk1603.apple.user.pojo.User;
import com.jk1603.apple.user.service.UserServiceInterface;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserServiceInterface userService;
	@RequestMapping("/apple")
	public String get() {
		return "register";
	}
	
	@RequestMapping("/register")
    public String addUserAjax(@RequestParam(value = "username",required = false) String username,@RequestParam(value = "password",required = false) String password){
		User user = new User();
		user.setUserName(username);
		user.setUserPassword(password);
		userService.addUser(user);
		return "login";
    }
}
