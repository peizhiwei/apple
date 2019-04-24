package com.jk1603.apple.admini.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.service.AdminiServiceInterface;

@Controller
@RequestMapping("admini")
public class AdminiController {
	@Autowired
	AdminiServiceInterface adminiservice;
	
	@RequestMapping("/backindex")
	public String backindex() {
		return "backindex";
		
	}
	@RequestMapping("/Goods")
	public String goods() {
		return "goods";
		
	}
	@RequestMapping("/Goodsdetails")
	public String goodsdetails() {
		return "goodsdetails";
	}
	@RequestMapping("/Sort")
	public String sort() {
		return "sort";
	}
	@RequestMapping(value = "/add",method = RequestMethod.GET)
	public void addgoods(Goods param) {
		adminiservice.addGoods(param);
		System.out.println("≤Â»Î≥…π¶");
				
	}
	
}
