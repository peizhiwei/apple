package com.jk1603.apple.admini.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.service.select.AdminiSelectServiceInterface;
import com.jk1603.apple.admini.service.update.AdminiUpdateServiceInterface;
@Controller
@RequestMapping("/adminiupdate")
public class AdminiUpdateController {
	@Autowired
	AdminiUpdateServiceInterface adminiupdateservice;
	
	@Autowired
	AdminiSelectServiceInterface adminiselectservice;
	//编辑商品
	@RequestMapping("/setgoods")
	@ResponseBody
	public List<Goods> setGoods(String number) {
		List<Goods> listsetgoods = adminiupdateservice.setGoods(number);
		return listsetgoods;
	}
	@RequestMapping("/setgoodsimg")
	@ResponseBody
	public String userimgupload(MultipartHttpServletRequest filesRequest) {
        String root = filesRequest.getServletContext().getRealPath("img")+"\\";
        
        MultipartFile file = filesRequest.getFile("imgfile");// 读取文件
        
        File newfile = new File(root + file.getOriginalFilename());// 创建新（空）文件，不改变文件名
        
        int id = adminiselectservice.getgoodsmaxid();
    	String img = "/apple/img/"+file.getOriginalFilename();

    	Goods goods = new Goods();
    	goods.setId(id);
    	goods.setImg(img);
    	adminiupdateservice.setGoodsImg(goods);
        try {
            file.transferTo(newfile);// 保存文件
        } catch (IOException e) {
            e.printStackTrace();
            return "error";
        }
        return "upload success";
	}
}
