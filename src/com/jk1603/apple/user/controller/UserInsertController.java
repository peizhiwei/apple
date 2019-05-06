package com.jk1603.apple.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jk1603.apple.user.pojo.User;
import com.jk1603.apple.user.service.UserInsertServiceInterface;

@Controller
@RequestMapping("/userinsert")
public class UserInsertController {
	@Autowired
	UserInsertServiceInterface userinsertservice;
	@RequestMapping("/addshoppingcart")
	@ResponseBody
	public void addshoppingcart(@RequestParam(value = "goodsId",required = false)int goodsId,
								@RequestParam(value = "userId",required = false)int userId,
								HttpSession session) {
//		User usersession = (User)session.getAttribute("user");
//		userId = usersession.getId();
		userinsertservice.addShoppingcart(goodsId, userId);
	}
}
