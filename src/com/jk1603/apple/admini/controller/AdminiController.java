package com.jk1603.apple.admini.controller;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.service.AdminiServiceInterface;
import com.jk1603.apple.user.pojo.ajaxresponse;

@Controller
@RequestMapping("/admini")
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
	@RequestMapping("/IntoStore")
	public String intostore() {
		return "intostore";
	}
	@RequestMapping("/OutStore")
	public String outstore() {
		return "outstore";
		
	}
	@RequestMapping("/Stock")
	public String stock() {
		return "stock";
	}
	@RequestMapping("/Management")
	public String management() {
		return "management";
	}
	
	@RequestMapping("/Statistics")
	public String statistics() {
		return "statistics";
	}
	@RequestMapping("/Intostoredetails")
	public String intostoredetails() {
		return "intostoredetails";
		
	}
	@RequestMapping("/Sort")
	public String sort() {
		return "sort";
	}
	
	@RequestMapping("/addgoods")
	@ResponseBody
	public ajaxresponse addgoods(@RequestParam(value = "number",required = false) String number,
						 @RequestParam(value = "name",required = false) String name,
						 @RequestParam(value = "price",required = false) BigDecimal price ,
						 @RequestParam(value = "specs",required = false) String specs,
						 @RequestParam(value = "amount",required = false) int amount,
						 @RequestParam(value = "details",required = false) String details) {
		Goods goods = new Goods();
		goods.setNumber(number);
		goods.setName(name);
		goods.setPrice(price);
		goods.setSpecs(specs);
		goods.setAmount(amount);
		goods.setDetails(details);
		adminiservice.addGoods(goods);
		ajaxresponse ajaxgoods = new ajaxresponse();
		ajaxgoods.setFlag(true);
		ajaxgoods.setMsg("/apple/admini/Goodsdetails");
		return ajaxgoods;
	}
	
	@RequestMapping("/getgoods")
	@ResponseBody
	public List<Goods> getGoods(String number) {
		List<Goods> listgoods = adminiservice.getGoods(number);
		System.out.println("���:"+listgoods);
		return listgoods;
	}
	@RequestMapping("/addad")
	public String addad() {
		return "addaduser";
	}
	@RequestMapping("/addAdmini")
    @ResponseBody
	public ajaxresponse addAdmini(
			 @RequestParam(value = "adminiName",required = false) String adminiName,
			 @RequestParam(value = "adPassword",required = false) String adPassword)
			 {
		     Admini admini = new Admini();
		     admini.setAdminiName(adminiName);
		     admini.setAdPassword(adPassword);
		     adminiservice.addAdmini(admini);
		     ajaxresponse ajaxadmini = new ajaxresponse();
		     ajaxadmini.setFlag(true);
		     ajaxadmini.setMsg("/apple/admini/addad");
		     return  ajaxadmini;
 }

}
