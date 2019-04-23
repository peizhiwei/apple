package com.jk1603.apple.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.util.JSONPObject;
import com.jk1603.apple.user.pojo.User;
import com.jk1603.apple.user.service.UserServiceInterface;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserServiceInterface userService;
	@RequestMapping(value = "/get",method = RequestMethod.GET)
	public String getuser() {
		
		return "test";
	}
	@RequestMapping("/addUserAjax")
    @ResponseBody
    public String addUserAjax(User user){
        try {
            userService.addUser(user);
        } catch (Exception e) {
            e.printStackTrace();
            
        }
        return "success";
    }
}
