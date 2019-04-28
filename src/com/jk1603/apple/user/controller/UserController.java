package com.jk1603.apple.user.controller;


import java.io.File;
import java.io.IOException;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.fasterxml.jackson.databind.util.JSONPObject;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.user.pojo.User;
import com.jk1603.apple.user.pojo.ajaxresponse;
import com.jk1603.apple.user.pojo.test;
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
	@RequestMapping("/userindex")
	public String userindex(HttpSession session) {
		Object user = session.getAttribute("user");
		
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
	@RequestMapping("selfmassage")
	public String selfmassege(HttpSession session) {
		Object user = session.getAttribute("user");
		if(user==null) {
			return "login";
		}else {
			return "selfmassage";
		}
	}
	
	@RequestMapping("/loginOut")
	@ResponseBody
	public ajaxresponse loginOut(HttpSession session) {
		session.removeAttribute("user");
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
	@RequestMapping("/getuserdetails")
	@ResponseBody
	public Object getUserDetails(HttpSession session) {
		Object  userdetails = session.getAttribute("user");
		return userdetails;
	}
	
	@RequestMapping("/userdetailsupload")
	@ResponseBody
	public String upload(String nicheng,HttpSession session,MultipartHttpServletRequest filesRequest) {
        String root = filesRequest.getServletContext().getRealPath("img")+"\\";
        MultipartFile file = filesRequest.getFile("file1");// 读取文件
        
        File newfile = new File(root + file.getOriginalFilename());// 创建新（空）文件，不改变文件名
        
        User userdetails = (User) session.getAttribute("user");
        
        User user = new User();
        user.setUserImg("/apple/img/"+file.getOriginalFilename());
        user.setUserNickName(nicheng);
        user.setUserName(userdetails.getUserName());
        userService.updataUserdetails(user);
        
        try {
            file.transferTo(newfile);// 保存文件
        } catch (IOException e) {
            e.printStackTrace();
            return "error";
        }
        return "upload success";
	}
}
