package com.jk1603.apple.user.controller;


import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

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
	
	@RequestMapping("/details")
	public String details() {
		return "details";
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
	@RequestMapping("/shoppingcart")
	public String shoppingcart(HttpSession session) {
		Object user = session.getAttribute("user");
		if(user==null) {
			return "login";
		}else {
			return "shoppingcart";
		}
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
	
	@RequestMapping("/userimgupload")
	@ResponseBody
	public String userimgupload(HttpServletRequest request,HttpSession session,MultipartHttpServletRequest filesRequest) {
        String root = filesRequest.getServletContext().getRealPath("img")+"/";// ��ȡ��̬��Դ·��/upload/
        System.out.println(root);
        File Folder = new File(root);
        if(Folder.exists()) {
        	if(Folder.isDirectory()) {
        		System.out.println("dir exists");
        	}else {
        		System.out.println("the same name file exists,can not create dir");
        	}
        }else {
        	System.out.println("dir not exists,create it");
        	Folder.mkdir();
        }
        MultipartFile file = filesRequest.getFile("file1");// ��ȡ�ļ�
        
        File newfile = new File(root + file.getOriginalFilename());// �����£��գ��ļ������ı��ļ���
       
        //����session
        User usersession = (User)session.getAttribute("user");
        usersession.setUserImg("/apple/img/"+file.getOriginalFilename());
        //�����µ�session
        
    	request.getSession().setAttribute("user",usersession);
    	userService.updataUserimg(usersession);
        try {
            file.transferTo(newfile);// �����ļ�
        } catch (IOException e) {
            e.printStackTrace();
            return "error";
        }
        return "upload success";
	}
	@RequestMapping("/usernicknameupdata")
	@ResponseBody
	public ajaxresponse usernicknameupdata(String nicheng,HttpServletRequest request,HttpSession session) {
		//����session
		//��ȡԭ�е�session
		User usersession = (User) session.getAttribute("user");
		//���������ǳ�
		usersession.setUserNickName(nicheng);
		
		ajaxresponse rs = new ajaxresponse();
		//�����µ�session
		request.getSession().setAttribute("user", usersession);
		userService.updataUsernickname(usersession);
		rs.setFlag(true);
		return rs;
	}
}
