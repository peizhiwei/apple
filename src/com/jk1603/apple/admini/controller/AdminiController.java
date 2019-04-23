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
	@RequestMapping(value = "/add",method = RequestMethod.GET)
	public void addgoods(Goods param) {
		adminiservice.addGoods(param);
		System.out.println("≤Â»Î≥…π¶");
	}
}
