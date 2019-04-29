package com.jk1603.apple.admini.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.service.update.AdminiUpdateServiceInterface;
@Controller
@RequestMapping("/adminiupdate")
public class AdminiUpdateController {
	@Autowired
	AdminiUpdateServiceInterface adminiupdateservice;
	//±‡º≠…Ã∆∑
	@RequestMapping("/setgoods")
	@ResponseBody
	public List<Goods> setGoods(String number) {
		List<Goods> listsetgoods = adminiupdateservice.setGoods(number);
		return listsetgoods;
	}
	
}
