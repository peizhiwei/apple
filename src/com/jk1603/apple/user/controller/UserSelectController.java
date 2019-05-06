package com.jk1603.apple.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.user.pojo.Shoppingcart;
import com.jk1603.apple.user.pojo.User;
import com.jk1603.apple.user.service.UserSelectServiceInterface;

@Controller
@RequestMapping("/userselect")
public class UserSelectController {
	@Autowired
	UserSelectServiceInterface userselectservice;
	
	@RequestMapping("/getshoppingcart")
	@ResponseBody
	public List<Shoppingcart> getshoppingcart(HttpSession session) {
		User usersession = (User) session.getAttribute("user");
//		User user = new User();
//		Shoppingcart shoppingcart = new Shoppingcart();
		int id = usersession.getId();
//		user.setId(userId);
//		shoppingcart.setUser(user);
		List<Shoppingcart> goodslist = userselectservice.getshoppingcart(id);
		
		return goodslist;
	}
}
