package com.jk1603.apple.admini.controller;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.WebRequest;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
import com.jk1603.apple.admini.pojo.Outstore;
import com.jk1603.apple.admini.pojo.SuperAdmini;
import com.jk1603.apple.admini.pojo.Type;
import com.jk1603.apple.admini.service.insert.AdminiInsertServiceInterface;
import com.jk1603.apple.admini.service.select.AdminiSelectServiceInterface;
import com.jk1603.apple.user.pojo.ajaxresponse;
@Controller
@RequestMapping("/adminiinsert")
public class AdminiInsertController {
	@Autowired
	AdminiInsertServiceInterface adminiinsertservice;
	
	@Autowired
	AdminiSelectServiceInterface adminiselectservice;
	@InitBinder
	public void initBinder(WebDataBinder binder, WebRequest request) {
		//转换日期
		DateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));// CustomDateEditor为自定义日期编辑器
	}
	//添加商品
	@RequestMapping("/addgoods")
	@ResponseBody
	public ajaxresponse addgoods(@RequestParam(value = "number",required = false) String number,
						 @RequestParam(value = "name",required = false) String name,
						 @RequestParam(value = "price",required = false) BigDecimal price ,
						 @RequestParam(value = "specs",required = false) String specs,
						 @RequestParam(value = "details",required = false) String details,
						 @RequestParam(value = "typename",required = false) String typename,
						 HttpSession session) {
		Goods goods = new Goods();
		goods.setNumber(number);
		goods.setName(name);
		goods.setPrice(price);
		goods.setSpecs(specs);
		goods.setDetails(details);
		//获取系统当前日期
		goods.setDate(new Date());
		
		Type type = new Type();
		type.setId(adminiselectservice.gettypeid(typename));
		goods.setType(type);
		
		Object superadminisession = session.getAttribute("superadmini");
		Object adminisession = session.getAttribute("admini");
		if(superadminisession==null) {
			Admini admini = (Admini)adminisession;
			admini.getId();
			goods.setAdmini(admini);
		}else{
			SuperAdmini superadmini = (SuperAdmini)superadminisession;
			superadmini.getId();
			goods.setSuperadmini(superadmini);
		}
		
		adminiinsertservice.addGoods(goods);
		ajaxresponse ajaxgoods = new ajaxresponse();
		ajaxgoods.setFlag(true); 
		ajaxgoods.setMsg("/apple/admini/goods");
		return ajaxgoods;
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
			 @RequestParam(value = "adPassword1",required = false) String adPassword1)
			 {
	     Admini admini = new Admini();
	     admini.setAdminiName(adminiName);
	     admini.setAdminiPassword(adPassword1);
	     adminiinsertservice.addAdmini(admini);
	     ajaxresponse ajaxadmini = new ajaxresponse();
	     ajaxadmini.setFlag(true);
	     ajaxadmini.setMsg("/apple/admini/management");
	     return  ajaxadmini;
	}
	//入库
	@RequestMapping("/intostore")
	@ResponseBody
	public void intostore(@RequestParam(value = "intostroe",required = false)Intostore intostroe,
						  @RequestParam(value = "operationId",required = false)int operationId,
						  HttpSession session) {
		Object adminisession = session.getAttribute("admini");
		Object superadminisession = session.getAttribute("superadmini");
		if(adminisession==null) {
			SuperAdmini superadmini = (SuperAdmini)superadminisession;
			operationId = superadmini.getId();
		}else {
			Admini admini = (Admini)adminisession;
			operationId = admini.getId();
		}
		adminiinsertservice.intoStore(intostroe, operationId);
	}
}
