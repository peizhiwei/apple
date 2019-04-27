package com.jk1603.apple.user.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.user.pojo.User;
import com.jk1603.apple.user.pojo.ajaxresponse;
import com.jk1603.apple.user.service.UserServiceInterface;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserServiceInterface userService;
	
	@RequestMapping("/index")
	public String index(Model m) {
		List<Goods> goodsList = userService.getGoods();
		m.addAttribute("goods", goodsList);
		return "index";
	}
	@RequestMapping("/userindex")
	public String userindex(HttpSession session,Model m) {
		Object user = session.getAttribute("user");
		
		m.addAttribute("userdetails", user);
		if(user==null) {
			return "login";
		}else {
			return "userindex";	
		}
	}
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	@RequestMapping("/register")
	public String register() {
		return "register";
	}
	
	@RequestMapping("/loginOut")
	@ResponseBody
	public ajaxresponse loginOut(HttpSession session) {
		session.removeAttribute("user");
//		request.getSession().removeAttribute("username");

		ajaxresponse rs =new ajaxresponse();
		rs.setFlag(true);
		rs.setMsg("/apple/user/index");
		return rs;
	}
	
	@RequestMapping("/selfcenter")
	public String selfcenter(HttpSession session) {
		Object user = session.getAttribute("user");
		if(user==null) {
			return "login";
		}else {
			return "selfcenter";
		}
	}
	@RequestMapping("/checkLogin")
	@ResponseBody
	public ajaxresponse login(@RequestParam(value = "username",required = false) String username,@RequestParam(value = "password",required = false) String password,HttpServletRequest request) {
		User user = userService.checkLogin(username,password);
		ajaxresponse rs = new ajaxresponse();
		if(user!=null) {
			request.getSession().setAttribute("user", user);
			rs.setFlag(true);
			rs.setMsg("/apple/user/userindex");
		}else {
			rs.setFlag(false);
			rs.setMsg("�û������������");
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
			rs.setMsg("�û����Ѵ���");
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
	@RequestMapping("/getuserdetails")
	@ResponseBody
	public Object getUserDetails(HttpSession session) {
		Object  userdetails = session.getAttribute("user");
		return userdetails;
	}

}
