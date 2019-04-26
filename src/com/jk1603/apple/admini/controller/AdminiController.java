package com.jk1603.apple.admini.controller;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.WebRequest;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
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
		return listgoods;
	}
	
	//��Ʒ���
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
			adminiservice.intoStore(ins);
			ajaxresponse ajaxins = new ajaxresponse();
			ajaxins.setFlag(true);
			ajaxins.setMsg("/apple/admini/Intostoredetails");
			return ajaxins;
		}
	
	@InitBinder
	public void initBinder(WebDataBinder binder, WebRequest request) {
		//ת������
		DateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));// CustomDateEditorΪ�Զ������ڱ༭��
	}
	
	@RequestMapping("/getgooodstoindex")
	@ResponseBody
	public List<Goods> getGoodstoindex(Model m){
		List<Goods> goodsList = adminiservice.getGoodstoindex();
		return goodsList;
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

