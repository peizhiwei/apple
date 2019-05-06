package com.jk1603.apple.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jk1603.apple.user.service.UserDeleteServiceInterface;

@Controller
@RequestMapping("/userdelete")
public class UserDeleteController {
	@Autowired
	UserDeleteServiceInterface userdeleteservice;
	//ɾ�����ﳵ��ָ������Ʒ
	@RequestMapping("/removeshopping")
	@ResponseBody
	public void remove(int id) {
		userdeleteservice.removeshopping(id);
	}
}
