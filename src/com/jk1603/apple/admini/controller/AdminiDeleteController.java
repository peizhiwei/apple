package com.jk1603.apple.admini.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.service.delete.AdminiDeleteServiceInterface;
import com.jk1603.apple.user.pojo.ajaxresponse;

@Controller
@RequestMapping("/adminidelete")
public class AdminiDeleteController {
	@Autowired
	AdminiDeleteServiceInterface adminideleteserviceinterface;

	@RequestMapping("/deleteAdmini")
	@ResponseBody
	public ajaxresponse deleteAdmini(@RequestParam(value = "adminiName", required = false) String adminiName)
	// @RequestParam(value = "adPassword",required = false) String adPassword
	{
		Admini admini = new Admini();
		admini.setAdminiName(adminiName);
		// admini.setAdminiPassword(adPassword);
		adminideleteserviceinterface.deleteAdmini(admini);
		ajaxresponse ajaxadmini = new ajaxresponse();
		ajaxadmini.setFlag(true);
		ajaxadmini.setMsg("/apple/admini/management");
		return ajaxadmini;
	}

	@RequestMapping("/deleteAdminis")
	@ResponseBody
	public ajaxresponse deleteAdminis(@RequestParam(value = "adminiName", required = false) String adminiName) {
		String[] adminiNameArray = adminiName.split(",");
		List<String> adminiNameList = new ArrayList<String>();
		for (int i = 0; i < adminiNameArray.length; i++) {
			adminiNameList.add(adminiNameArray[i]);
		}
		adminideleteserviceinterface.deleteAdminis(adminiNameList);
		ajaxresponse ajaxadmini = new ajaxresponse();
		ajaxadmini.setFlag(true);
		ajaxadmini.setMsg("/apple/admini/management");
		return ajaxadmini;
	}
}
