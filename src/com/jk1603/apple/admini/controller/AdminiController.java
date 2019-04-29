package com.jk1603.apple.admini.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admini")
public class AdminiController {

	@RequestMapping("/backindex")
	public String backindex() {
		return "backindex";
		
	}
	@RequestMapping("/goods")
	public String goods() {
		return "goods";
		
	}
	@RequestMapping("/addgoods")
	public String goodsdetails() {
		return "addgoods";
	}
	@RequestMapping("/intoStore")
	public String intostore() {
		return "intostore";
	}
	@RequestMapping("/outStore")
	public String outstore() {
		return "outstore";
		
	}
	@RequestMapping("/outstoredetails")
	public String outstoredetails() {
		return "outstoredetails";
		   
	}
	@RequestMapping("/stock")
	public String stock() {
		return "stock";
	}
	@RequestMapping("/management")
	public String management() {
		return "management";
	}
	
	@RequestMapping("/statistics")
	public String statistics() {
		return "statistics";
	}
	@RequestMapping("/intostoredetails")
	public String intostoredetails() {
		return "intostoredetails";
		
	}
	@RequestMapping("/sort")
	public String sort() {
		return "sort";
	}
	@RequestMapping("/addad")
	public String addad() {
		return "addaduser";
	}

}