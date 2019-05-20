package com.jk1603.apple.user.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jk1603.apple.user.service.update.UserUpdateServiceInterface;

@Controller
@RequestMapping("/userupdate")
public class UserUpdateController {
	@Autowired
	UserUpdateServiceInterface userupdateservice;
	//增加购物车中商品的数量
	@RequestMapping("/setshamount")
	@ResponseBody
	public void setshamount(@RequestParam(value = "newamount",required = false)int newamount,@RequestParam(value = "goodsId",required = false)int goodsId) {
		userupdateservice.setshAmount(newamount, goodsId);
	}
}
