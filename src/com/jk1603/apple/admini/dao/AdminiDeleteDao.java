package com.jk1603.apple.admini.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.DeleteProvider;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Provider;

public interface AdminiDeleteDao {

	//����ɾ������Ա
	@DeleteProvider(type = Provider.class, method = "batchDelete")
	void deleteAdminis(List<String> adminiNameList);
	
	//����ɾ����Ʒ
	@DeleteProvider(type = Provider.class,method = "batchDelete")
	void deleteGoods(int[] goodsid);
}
