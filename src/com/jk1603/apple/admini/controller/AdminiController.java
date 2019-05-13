package com.jk1603.apple.admini.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jk1603.apple.user.pojo.ajaxresponse;

@Controller
@RequestMapping("/admini")
public class AdminiController {

	@RequestMapping("/backindex")
	public String backindex() {
		return "backindex";

	}

	@RequestMapping("/goods")
	public String goods(HttpSession session) {
		Object superadmini = session.getAttribute("superadmini");
		Object admini = session.getAttribute("admini");
		if (superadmini == null && admini == null) {
			return "backindex";
		} else {
			return "goods";
		}
	}

	@RequestMapping("/addgoods")
	public String goodsdetails(HttpSession session) {
		Object superadmini = session.getAttribute("superadmini");
		Object admini = session.getAttribute("admini");
		if (superadmini == null && admini == null) {
			return "backindex";
		} else {
			return "addgoods";
		}
	}

	@RequestMapping("/intostore")
	public String intostore(HttpSession session) {
		Object superadmini = session.getAttribute("superadmini");
		Object admini = session.getAttribute("admini");
		if (superadmini == null && admini == null) {
			return "backindex";
		}
		return "intostore";
	}

	@RequestMapping("/outStore")
	public String outstore(HttpSession session) {
		Object superadmini = session.getAttribute("superadmini");
		Object admini = session.getAttribute("admini");
		if (superadmini == null && admini == null) {
			return "backindex";
		}
		return "outstore";

	}

	@RequestMapping("/outstoredetails")
	public String outstoredetails(HttpSession session) {
		Object superadmini = session.getAttribute("superadmini");
		Object admini = session.getAttribute("admini");
		if (superadmini == null && admini == null) {
			return "backindex";
		}
		return "outstoredetails";

	}

	@RequestMapping("/stock")
	public String stock(HttpSession session) {
		Object superadmini = session.getAttribute("superadmini");
		Object admini = session.getAttribute("admini");
		if (superadmini == null && admini == null) {
			return "backindex";
		}
		return "stock";
	}

	@RequestMapping("/management")
	public String management(HttpSession session) {
		Object superadmini = session.getAttribute("superadmini");
		Object admini = session.getAttribute("admini");
		if (superadmini != null) {
			return "management";
		}
		if (admini != null) {
			return "warnning";
		}
		return "backindex";
	}

	@RequestMapping("/statistics")
	public String statistics(HttpSession session) {
		Object superadmini = session.getAttribute("superadmini");
		Object admini = session.getAttribute("admini");
		if (superadmini == null && admini == null) {
			return "backindex";
		}
		return "statistics";
	}

	@RequestMapping("/intostoredetails")
	public String intostoredetails(HttpSession session) {
		Object superadmini = session.getAttribute("superadmini");
		if (superadmini == null) {
			return "backindex";
		}
		return "intostoredetails";

	}

	@RequestMapping("/sort")
	public String sort(HttpSession session) {
		Object superadmini = session.getAttribute("superadmini");
		Object admini = session.getAttribute("admini");
		if (superadmini == null && admini == null) {
			return "backindex";
		}
		return "sort";
	}

	@RequestMapping("/addadmini")
	public String addad(HttpSession session) {
		Object superadmini = session.getAttribute("superadmini");
		if (superadmini == null) {
			return "backindex";
		}
		return "addadmini";
	}

//	@RequestMapping("/shoppingcart")
//	public String shoppingcart(HttpSession session) {
//		return "shoppingcart";
//	}
	
	
	@RequestMapping("/loginOut")
	@ResponseBody
	public ajaxresponse loginOut(HttpSession session) {
		Object superadmini = session.getAttribute("superadmini");
		Object admini = session.getAttribute("admini");
		if(superadmini == null && admini == null) {
			return null;
		}
		session.setAttribute("admini", null);
		session.setAttribute("superadmini", null);
		ajaxresponse rs =new ajaxresponse();
		rs.setFlag(true);
		rs.setMsg("/apple/user/index");
		return rs;
	}

}