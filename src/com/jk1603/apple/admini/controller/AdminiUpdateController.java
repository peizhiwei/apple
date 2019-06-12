package com.jk1603.apple.admini.controller;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Date;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Store;
import com.jk1603.apple.admini.pojo.Type;
import com.jk1603.apple.admini.service.select.AdminiSelectServiceInterface;
import com.jk1603.apple.admini.service.update.AdminiUpdateServiceInterface;
import com.jk1603.apple.user.pojo.ajaxresponse;
@Controller
@RequestMapping("/adminiupdate")
public class AdminiUpdateController {
	@Autowired
	AdminiUpdateServiceInterface adminiupdateservice;
	
	@Autowired
	AdminiSelectServiceInterface adminiselectservice;
	//修改商品是用到的id
	public Integer goodsId;
	
	//增加商品是上传图片
	@RequestMapping("/setgoodsimg")
	@ResponseBody
	public String userimgupload(MultipartHttpServletRequest filesRequest) {
        String root = filesRequest.getServletContext().getRealPath("img")+"/";
        //
        File Folder = new File(root);
        if(Folder.exists()) {
        	if(Folder.isDirectory()) {
        		System.out.println("dir exists");
        	}else {
        		System.out.println("the same name file exists,can not create dir");
        	}
        }else {
        	System.out.println("dir not exists,create it");
        	Folder.mkdir();
        }
        MultipartFile file = filesRequest.getFile("imgfile");//��ȡ�ļ�
        
        File newfile = new File(root + file.getOriginalFilename());// �����£��գ��ļ������ı��ļ���
        
        int id = adminiselectservice.getgoodsmaxid();
    	String img = "/apple/img/"+file.getOriginalFilename();
    	Goods goods = new Goods();
    	goods.setId(id);
    	goods.setImg(img);
    	adminiupdateservice.setGoodsImg(goods);
        try {
            file.transferTo(newfile);//  �����ļ�
        } catch (IOException e) {
            e.printStackTrace();
            return "error";
        }
        return "upload success";
	}
	//上架
	@RequestMapping("/upshelf")
	@ResponseBody
	public void upshelf(@Param("id") int id) {
		adminiupdateservice.setUpshelf(id);
	}
	//下架
	@RequestMapping("/downshelf")
	@ResponseBody
	public void setdownshelf(@Param("id") int id) {
		adminiupdateservice.setDownshelf(id);
	}
	@RequestMapping("/updateamount")
	@ResponseBody
	public void plusstoreamout(@RequestParam(value = "mount",required = false)BigDecimal amount,
							   @RequestParam(value = "goodsId",required = false)int goodsId) {
		Store store = new Store();
		store.setAmount(amount);
		Goods goods = new Goods();
		goods.setId(goodsId);
		store.setGoods(goods);
		store.setDate(new Date());
		adminiupdateservice.plusstoreamount(store);
	}
	//修改商品信息
	@RequestMapping("/updategoods")
	@ResponseBody
	public ajaxresponse updategoods(@RequestParam(value = "number",required = false)String number,
							@RequestParam(value = "name",required = false) String name,
							@RequestParam(value = "price",required = false) BigDecimal price,
							@RequestParam(value = "details",required = false)String details,
							@RequestParam(value = "specs",required = false)String specs,
							@RequestParam(value = "typeName",required = false)String typeName,
							@RequestParam(value = "id",required = false)Integer id) {
		goodsId = id;
		
		Goods goods = new Goods();
		goods.setId(id);
		goods.setNumber(number);
		goods.setName(name);
		goods.setPrice(price);
		goods.setDetails(details);
		goods.setSpecs(specs);
		Type type = new Type();
		Integer typeId = adminiselectservice.gettypeid(typeName);
		type.setId(typeId);
		goods.setType(type);
		goods.setDate(new Date());
		adminiupdateservice.updategoods(goods);
		ajaxresponse rs = new ajaxresponse();
		rs.setFlag(true);
		rs.setMsg("成功");
		return rs;
	}
	//修改商品的图片
	@RequestMapping("/updategoodsimg")
	@ResponseBody
	public String updategoodsimg(MultipartHttpServletRequest filesRequest) {
        String root = filesRequest.getServletContext().getRealPath("img")+"/";
//        System.out.println(root);
        File Folder = new File(root);
        if(Folder.exists()) {
        	if(Folder.isDirectory()) {
        		System.out.println("dir exists");
        	}else {
        		System.out.println("the same name file exists,can not create dir");
        	}
        }else {
        	System.out.println("dir not exists,create it");
        	Folder.mkdir();
        }
        MultipartFile file = filesRequest.getFile("imgfile");//��ȡ�ļ�
        if(file==null) {
        	return "成功";
        }
        File newfile = new File(root + file.getOriginalFilename());// �����£��գ��ļ������ı��ļ���
    	String newimg = "/apple/img/"+file.getOriginalFilename();
    	Goods goods = new Goods();
    	goods.setId(goodsId);
    	goods.setImg(newimg);
    	adminiupdateservice.setGoodsImg(goods);
        try {
            file.transferTo(newfile);//  �����ļ�
        } catch (IOException e) {
            e.printStackTrace();
            return "失败";
        }
        return "成功";
	}
	
}
