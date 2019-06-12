package com.jk1603.apple.user.controller;

//import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

//import com.jk1603.apple.user.pojo.User;
import com.jk1603.apple.user.pojo.ajaxresponse;
import com.jk1603.apple.user.service.insert.UserInsertServiceInterface;
import com.jk1603.apple.user.service.select.UserSelectServiceInterface;

@Controller
@RequestMapping("/userinsert")
public class UserInsertController {
	@Autowired
	UserInsertServiceInterface userinsertservice;
	UserSelectServiceInterface userselectservice;
	@RequestMapping("/addshoppingcart")
	@ResponseBody
	public ajaxresponse addshoppingcart(@RequestParam(value = "goodsId",required = false)int goodsId,
								@RequestParam(value = "userId",required = false)int userId) {
		ajaxresponse res = new ajaxresponse();
		//boolean flag = userselectservice.selectgoodsupshlf(goodsId);
		//if(flag==true) {
			userinsertservice.addShoppingcart(goodsId, userId);
			res.setMsg("成功");
		//}else {
		//	res.setMsg("对不起，该商品已下架！");
		//}
		return res;
		
	}
}
