package com.jk1603.apple.user.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jk1603.apple.user.pojo.User;
import com.jk1603.apple.user.pojo.ajaxresponse;
import com.jk1603.apple.user.service.UserServiceInterface;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserServiceInterface userService;
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	@RequestMapping("/register")
	public String register() {
		return "register";
	}
	@RequestMapping("/checkLogin")
	@ResponseBody
	public ajaxresponse login(@RequestParam(value = "username",required = false) String username,@RequestParam(value = "password",required = false) String password) {
		User user = userService.checkLogin(username,password);
		ajaxresponse rs = new ajaxresponse();
		if(user!=null) {
			rs.setFlag(true);
			rs.setMsg("/apple/user/index");
		}else {
			rs.setFlag(false);
			rs.setMsg("用户名或密码错误");
		}
		return rs;
	}
	
	@RequestMapping("/checkregister")
	@ResponseBody
    public ajaxresponse addUserAjax(@RequestParam(value = "username",required = false) String username,@RequestParam(value = "password",required = false) String password){
		User user = new User();
		user = userService.checkUser(username);
		ajaxresponse rs = new ajaxresponse();
		if(user!=null) {
			rs.setFlag(false);
			rs.setMsg("用户名已存在");
		}else {
			User user1 = new User();
			user1.setUserName(username);
			user1.setUserPassword(password);
			userService.addUser(user1);
			rs.setFlag(true);
			rs.setMsg("/apple/user/login");
		}
		return rs;
    }

}
