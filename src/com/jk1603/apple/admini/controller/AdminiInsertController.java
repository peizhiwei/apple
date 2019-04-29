package com.jk1603.apple.admini.controller;

import java.math.BigDecimal;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
import com.jk1603.apple.admini.pojo.Outstore;
import com.jk1603.apple.admini.service.insert.AdminiInsertServiceInterface;
import com.jk1603.apple.user.pojo.ajaxresponse;
@Controller
@RequestMapping("/adminiinsert")
public class AdminiInsertController {
	@Autowired
	AdminiInsertServiceInterface adminiinsertservice;
	//添加商品
	@RequestMapping("/addgoods")
	@ResponseBody
	public ajaxresponse addgoods(@RequestParam(value = "number",required = false) String number,
						 @RequestParam(value = "name",required = false) String name,
						 @RequestParam(value = "price",required = false) BigDecimal price ,
						 @RequestParam(value = "specs",required = false) String specs,
						 @RequestParam(value = "amount",required = false) int amount,
						 @RequestParam(value = "details",required = false) String details,
						 @RequestParam(value = "img",required = false) String img) {
		Goods goods = new Goods();
		goods.setNumber(number);
		goods.setName(name);
		goods.setPrice(price);
		goods.setSpecs(specs);
		goods.setAmount(amount);
		goods.setDetails(details);
		//sort_id没写
		goods.setImg(null);
		adminiinsertservice.addGoods(goods);
		ajaxresponse ajaxgoods = new ajaxresponse();
		ajaxgoods.setFlag(true);
		ajaxgoods.setMsg("/apple/admini/goods");
		return ajaxgoods;
	}
	//商品入库
	@RequestMapping("/intoStore")
	@ResponseBody
	public ajaxresponse intoStore(@RequestParam(value = "number",required = false) String number,
				 @RequestParam(value = "name",required = false) String name,
				 @RequestParam(value = "amount",required = false) int amount,
				 @RequestParam(value = "date",required = false) Date date,
				 @RequestParam(value = "builder",required = false) String builder) {
		Intostore ins = new Intostore();
		ins.setRkNumber(number);
		ins.setName(name);
		ins.setAmount(amount);
		ins.setDate(date);
		ins.setBuilder(builder);
		adminiinsertservice.intoStore(ins);
		ajaxresponse ajaxins = new ajaxresponse();
		ajaxins.setFlag(true);
		ajaxins.setMsg("/apple/admini/intostoredetails");
		return ajaxins;
	}
	//商品出库
	@RequestMapping("/outStore")
	@ResponseBody
	public ajaxresponse outStore(@RequestParam(value = "number",required = false) String number,
				 @RequestParam(value = "name",required = false) String name,
				 @RequestParam(value = "amount",required = false) int amount,
				 @RequestParam(value = "date",required = false) Date date,
				 @RequestParam(value = "builder",required = false) String builder) {
		Outstore ous = new Outstore();
		ous.setCkNumber(number);
		ous.setName(name);
		ous.setAmount(amount);
		ous.setDate(date);
		ous.setBuilder(builder);
		adminiinsertservice.outStore(ous);
		ajaxresponse ajaxins = new ajaxresponse();
		ajaxins.setFlag(true);
		ajaxins.setMsg("/apple/admini/outstoredetails");
		return ajaxins;
	}
	//添加后台管理员
	@RequestMapping("/addAdmini")
    @ResponseBody
	public ajaxresponse addAdmini(
			 @RequestParam(value = "adminiName",required = false) String adminiName,
			 @RequestParam(value = "adPassword",required = false) String adPassword)
			 {
	     Admini admini = new Admini();
	     admini.setAdminiName(adminiName);
	     admini.setAdPassword(adPassword);
	     adminiinsertservice.addAdmini(admini);
	     ajaxresponse ajaxadmini = new ajaxresponse();
	     ajaxadmini.setFlag(true);
	     ajaxadmini.setMsg("/apple/admini/management");
	     return  ajaxadmini;
	}
}
