package com.jk1603.apple.admini.controller;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.WebRequest;

import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
import com.jk1603.apple.admini.pojo.Outstore;
import com.jk1603.apple.admini.pojo.Type;
import com.jk1603.apple.admini.pojo.Stock;
import com.jk1603.apple.admini.service.select.AdminiSelectServiceInterface;

@Controller
@RequestMapping("/adminiselect")
public class AdminiSelectController {
	@Autowired
	AdminiSelectServiceInterface adminiSelectservice;
	
	@InitBinder
	public void initBinder(WebDataBinder binder, WebRequest request) {
		//转换日期
		DateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));// CustomDateEditor为自定义日期编辑器
	}
	
	@RequestMapping("getallType")
	@ResponseBody
	public List<Type> getType() {
		List<Type> typelist = adminiSelectservice.getType();
		return typelist;
	}
	//查询商品
	@RequestMapping("/getgoods")
	@ResponseBody
	public List<Goods> getGoods(String number) {
		List<Goods> listgoods = adminiSelectservice.getGoods(number);
		return listgoods;
	}
	//遍历数据库将商品信息展示在前端页面
	@RequestMapping("/getallgoods")
	@ResponseBody
	public List<Goods> getallGoods(){
		List<Goods> listallgoods = adminiSelectservice.getallGoods();
		return listallgoods;
		
	}
	//查询商品的库存
	@RequestMapping("/getstock")
	@ResponseBody
	public List<Stock> getStock(String number) {
		List<Stock> liststock = adminiSelectservice.getStock(number);
		return liststock;
	}
	//查询商品入库详情
	@RequestMapping("/getintostore")
	@ResponseBody
	public List<Intostore> getIntostore(String number){
		List<Intostore> listis = adminiSelectservice.getIntostore(number);
		return listis;
	}
	//查询商品显示到index页面上
	@RequestMapping("/getgooodstoindex")
	@ResponseBody
	public List<Goods> getGoodstoindex(Model m){
		List<Goods> goodsList = adminiSelectservice.getGoodstoindex();
		return goodsList;
	}
	//查询商品出库详情
	@RequestMapping("/getoutstore")
	@ResponseBody
	public List<Outstore> getOutstore(String number){
		List<Outstore> listous = adminiSelectservice.getOutstore(number);
		return  listous;
	}
}
