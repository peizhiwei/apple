package com.jk1603.apple.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jk1603.apple.user.pojo.User;
import com.jk1603.apple.user.pojo.response;
import com.jk1603.apple.user.service.UserServiceInterface;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserServiceInterface userService;
	@RequestMapping("/index")
	public String get() {
		return "register";
	}
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	@RequestMapping("/register")
	@ResponseBody
    public response addUserAjax(@RequestParam(value = "username",required = false) String username,@RequestParam(value = "password",required = false) String password){
		User user = new User();
		user.setUserName(username);
		user.setUserPassword(password);
		userService.addUser(user);
		response rs = new response();
		rs.setFlag(true);
		rs.setMsg("/apple/user/login");
		return rs;
    }
}
