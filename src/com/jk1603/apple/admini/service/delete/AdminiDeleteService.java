package com.jk1603.apple.admini.service.delete;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jk1603.apple.admini.dao.AdminiDeleteDao;
import com.jk1603.apple.admini.pojo.Admini;

@Service
public class AdminiDeleteService implements AdminiDeleteServiceInterface{
	@Autowired
	AdminiDeleteDao adminideletedao;

	@Override
	public void deleteAdmini(Admini admini) {
		adminideletedao.deleteAdmini(admini);
	}

	@Override
	public void deleteAdminis(List<String> adminiNameList) {
		// TODO Auto-generated method stub
		adminideletedao.deleteAdminis(adminiNameList);
	} 
}
