package com.jk1603.apple.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.user.pojo.Shoppingcart;
import com.jk1603.apple.user.pojo.User;
import com.jk1603.apple.user.service.select.UserSelectServiceInterface;

@Controller
@RequestMapping("/userselect")
public class UserSelectController {
	@Autowired
	UserSelectServiceInterface userselectservice;
	
	@RequestMapping("/getshoppingcart")
	@ResponseBody
	public List<Shoppingcart> getshoppingcart(HttpSession session) {
		User usersession = (User) session.getAttribute("user");
		int id = usersession.getId();
		List<Shoppingcart> goodslist = userselectservice.getshoppingcart(id);
		
		return goodslist;
	}
	//查询购物车中是否已存在该商品
	@RequestMapping("/getshopping")
	@ResponseBody
	public List<Shoppingcart> getshopping(@RequestParam(value = "goodsId",required = false)Integer goodsId,
										  @RequestParam(value = "userId",required = false)Integer userId) {
		User user = new User();
		user.setId(userId);
		
		Goods goods = new Goods();
		goods.setId(goodsId);
		
		Shoppingcart shoppingcart = new Shoppingcart();
		shoppingcart.setGoods(goods);
		shoppingcart.setUser(user);
		List<Shoppingcart> goodslist = userselectservice.getshopping(shoppingcart);
		return goodslist;
	}
	//查询购物车中指定商品的数量
	@RequestMapping("/getshoppingamount")
	@ResponseBody
	public int getshoppingamount(int goodsId) {
		int shAmount = userselectservice.getshoppingamount(goodsId);
		return shAmount;
	}
}
