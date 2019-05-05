package com.jk1603.apple.admini.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.jk1603.apple.admini.pojo.Goods;
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
	//�༭��Ʒ
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
        //�ж��ļ�Ŀ¼�Ƿ���ڣ�����������򴴽�һ��Ŀ¼
        File Folder = new File(root);
        if(Folder.exists()) {
        	if(Folder.isDirectory()) {
        		System.out.println("dir exists");
        	}else {
        		System.out.println("the same name file exists,can not create dir");
        	}
        }else {
        	System.out.println("dir not exists,create it ����");
        	Folder.mkdir();
        }
        MultipartFile file = filesRequest.getFile("imgfile");// ��ȡ�ļ�
        
        File newfile = new File(root + file.getOriginalFilename());// �����£��գ��ļ������ı��ļ���
        
        int id = adminiselectservice.getgoodsmaxid();
    	String img = "/apple/img/"+file.getOriginalFilename();
    	System.out.println(id);
    	Goods goods = new Goods();
    	goods.setId(id);
    	goods.setImg(img);
    	adminiupdateservice.setGoodsImg(goods);
        try {
            file.transferTo(newfile);// �����ļ�
        } catch (IOException e) {
            e.printStackTrace();
            return "error";
        }
        return "upload success";
	}
	//�ϼ�
	@RequestMapping("/upshelf")
	public ajaxresponse upshelf(int id) {
		adminiupdateservice.setUpshelf(id);
		ajaxresponse rs = new ajaxresponse();
		rs.setFlag(true);
		rs.setMsg("�ɹ�");
		return rs;
	}
	//�¼�
	@RequestMapping("/downshelf")
	public ajaxresponse setdownshelf(int id) {
		adminiupdateservice.setDownshelf(id);
		ajaxresponse rs = new ajaxresponse();
		rs.setFlag(true);
		rs.setMsg("�ɹ�");
		return rs;
	}
}
