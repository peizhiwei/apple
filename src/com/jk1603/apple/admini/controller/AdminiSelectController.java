package com.jk1603.apple.admini.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
import com.jk1603.apple.admini.pojo.Outstore;
import com.jk1603.apple.admini.pojo.Sort;
import com.jk1603.apple.admini.pojo.Stock;
import com.jk1603.apple.admini.service.select.AdminiSelectServiceInterface;

@Controller
@RequestMapping("/adminiselect")
public class AdminiSelectController {
	@Autowired
	AdminiSelectServiceInterface adminiSelectservice;
	
	@RequestMapping("getallsort")
	@ResponseBody
	public List<Sort> getSort() {
		List<Sort> sortlist = adminiSelectservice.getSort();
		return sortlist;
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
		//System.out.println(listallgoods.get(0).getSort().getSortName());
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
