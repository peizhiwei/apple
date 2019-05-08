package com.jk1603.apple.admini.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.WebRequest;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
import com.jk1603.apple.admini.pojo.Outstore;
import com.jk1603.apple.admini.pojo.Type;
import com.jk1603.apple.admini.pojo.Stock;
import com.jk1603.apple.admini.pojo.SuperAdmini;
import com.jk1603.apple.admini.service.select.AdminiSelectServiceInterface;
import com.jk1603.apple.user.pojo.ajaxresponse;

@Controller
@RequestMapping("/adminiselect")
public class AdminiSelectController {
	@Autowired
	AdminiSelectServiceInterface adminiSelectservice;
	
	@InitBinder
	public void initBinder(WebDataBinder binder, WebRequest request) {
		//ת������
		DateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));// CustomDateEditorΪ�Զ������ڱ༭��
	}
	
	@RequestMapping("getallType")
	@ResponseBody
	public List<Type> getType() {
		List<Type> typelist = adminiSelectservice.getType();
		return typelist;
	}
	//��ѯ��Ʒ
	@RequestMapping("/getgoods")
	@ResponseBody
	public List<Goods> getGoods(String number) {
		List<Goods> listgoods = adminiSelectservice.getGoods(number);
		return listgoods;
	}
	//�������ݿ⽫��Ʒ��Ϣչʾ��ǰ��ҳ��
	@RequestMapping("/getallgoods")
	@ResponseBody
	public List<Goods> getallGoods(){
		List<Goods> listallgoods = adminiSelectservice.getallGoods();
		return listallgoods;
		
	}
	//��ѯ��Ʒ�Ŀ��
	@RequestMapping("/getstock")
	@ResponseBody
	public List<Stock> getStock(String number) {
		List<Stock> liststock = adminiSelectservice.getStock(number);
		return liststock;
	}
	//��ѯ��Ʒ�������
	@RequestMapping("/getintostore")
	@ResponseBody
	public List<Intostore> getIntostore(String number){
		List<Intostore> listis = adminiSelectservice.getIntostore(number);
		return listis;
	}
	//��ѯ��Ʒ��ʾ��indexҳ����
//	@RequestMapping("/getgooodstoindex")
//	@ResponseBody
//	public List<Goods> getGoodstoindex(Model m){
//		List<Goods> goodsList = adminiSelectservice.getGoodstoindex();
//		return goodsList;
//	}
	//��ѯ��Ʒ��������
	@RequestMapping("/getoutstore")
	@ResponseBody
	public List<Outstore> getOutstore(String number){
		List<Outstore> listous = adminiSelectservice.getOutstore(number);
		return  listous;
	}
	//��֤��������Ա�ĵ�¼
	@RequestMapping("/checksuperadminilogin")
	@ResponseBody
	public ajaxresponse checkSuperAdminiLogin(String superadmininame,String superadminipassword,HttpServletRequest request) {
		SuperAdmini superadmini = adminiSelectservice.checkSuperAdminiLogin(superadmininame, superadminipassword);
		ajaxresponse rs = new ajaxresponse();
		if(superadmini!=null) {
			request.getSession().setAttribute("superadmini", superadmini);
			request.getSession().setAttribute("admini", null);
			rs.setFlag(true);
			rs.setMsg("/apple/admini/backindex");
		}else {
			rs.setFlag(false);
			rs.setMsg("��¼ʧ��");
		}
		return rs;
	}
	//��֤����Ա�ĵ�¼
	@RequestMapping("/checkadminilogin")
	@ResponseBody
	public ajaxresponse checkAdminiLogin(String admininame,String adminipassword,HttpServletRequest request) {
		Admini admini = adminiSelectservice.checkAdminiLogin(admininame, adminipassword);
		ajaxresponse rs = new ajaxresponse();
		if(admini!=null) {
			request.getSession().setAttribute("admini", admini);
			request.getSession().setAttribute("superadmini", null);
			rs.setFlag(true);
			rs.setMsg("/apple/admini/backindex");
		}else {
			rs.setFlag(false);
			rs.setMsg("��¼ʧ��");
		}
		return rs;
		
	}
	//��ѯ������ͨ����Ա�û�
	@RequestMapping("/getalladmini")
	@ResponseBody
	public List<Admini> getallAdmini(){
		List<Admini> adminilist = adminiSelectservice.getallAdmini();
		return adminilist;
	}
	@RequestMapping("/getgoodslist")
	@ResponseBody
	public List<Goods> getgoodslist(String goodsname){
		List<Goods> goodslist = adminiSelectservice.getGoodsList(goodsname);
		return goodslist;
	}
}
