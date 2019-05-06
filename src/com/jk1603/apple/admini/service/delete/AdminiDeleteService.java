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
	public void deleteAdminis(List<String> adminiNameList) {
		adminideletedao.deleteAdminis(adminiNameList);
	}

	@Override
	public void deleteGoods(int[] goodsid) {
		adminideletedao.deleteGoods(goodsid);
		
	} 
}
